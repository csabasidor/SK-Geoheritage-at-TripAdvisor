with foo as (
select sk_sgs_vgl_sguds.id sgs_id, sk_sgs_vgl_sguds.lokalita, 
CASE WHEN sk_sgs_vgl_sguds.dmo_id IS NULL THEN 'NO DMO' ELSE 'DMO ' || sk_sgs_vgl_sguds.dmo_id END sgs_nm_dmoid,
CASE WHEN sk_sgs_vgl_sguds.dmo_id IS NULL THEN 'SGS NOT IN DMO' ELSE 'SGS IN DMO' END sgs_in_dmo,
sk_pois_activities_tripadvisor_0723_details.id poi_id,
poi_name, 
CASE WHEN sk_pois_activities_tripadvisor_0723_details.dmo_id IS NULL THEN 'NO DMO' ELSE 'DMO ' || sk_pois_activities_tripadvisor_0723_details.dmo_id END poi_dmoid,
CASE WHEN sk_pois_activities_tripadvisor_0723_details.dmo_id IS NULL THEN 'POI NOT IN DMO' ELSE 'POI IN DMO' END poi_in_dmo,
	sk_pois_activities_tripadvisor_0723_details.poi_n_reviews , 
sk_pois_activities_tripadvisor_0723_details.poi_rating,
sk_sgs_vgl_sguds.id || '_' || sk_pois_activities_tripadvisor_0723_details.id sgs_id_poi_id
from gtlab.sk_sgs_vgl_sguds, gtlab.sk_pois_activities_tripadvisor_0723_details 
where st_distance(st_transform(sk_sgs_vgl_sguds.geom, 4326)::geography, st_transform(sk_pois_activities_tripadvisor_0723_details.geom, 4326)::geography) < 5000
)
select a2.from_node, a2.to_node, a2.n_sgs, a1.n_pois, a1.sum_poi_n_reviews from 
(select count(*) n_pois, sum(poi_n_reviews) sum_poi_n_reviews from (select distinct(poi_id), poi_n_reviews from foo) total_revs) a1,
(select 'SGS with POI in 5 km radius'::text from_node, 'SGS with POI in 5 km radius'::text to_node, count(*) n_sgs from (select distinct(sgs_id) from foo) distinct_sgs) a2
UNION ALL
(
select from_node, to_node, n_sgs, n_pois, sum_poi_n_reviews from (
select * from 
(select 'SGS with POI in 5 km radius'::text from_node, sgs_in_dmo to_node, count(*) n_sgs from (select distinct(sgs_id), sgs_in_dmo from foo) sgs_indmos group by sgs_in_dmo order by to_node) indmo
LEFT JOIN
((select 'SGS IN DMO'::text to_node, count(*) n_pois, sum(poi_n_reviews) sum_poi_n_reviews from (select distinct(poi_id), poi_n_reviews  from foo where sgs_in_dmo = 'SGS IN DMO') sgs_in_dmo_dist_poi)
UNION ALL
(select 'SGS NOT IN DMO'::text to_node, count(*) n_pois, sum(poi_n_reviews) sum_poi_n_reviews from (select distinct(poi_id), poi_n_reviews  from foo where sgs_in_dmo = 'SGS NOT IN DMO') sgs_not_in_dmo_dist_poi)) n_pois_indmo_notindmo
USING (to_node)
) level2
)
UNION ALL
(select sgs_in_dmo from_node,  'ID' || sgs_id || ' ' || lokalita to_node, 1 n_sgs, count(*) n, sum(poi_n_reviews) sum_poi_n_reviews from (select distinct(sgs_in_dmo), sgs_id, lokalita, poi_id, poi_n_reviews from foo) sgs_pois group by sgs_in_dmo, 'ID' || sgs_id || ' ' || lokalita order by from_node, to_node)
UNION ALL
(select 'ID' || sgs_id || ' ' || lokalita from_node, sgs_id || ' ' || poi_in_dmo to_node, 1 n_sgs, count(*) n_poi, sum(poi_n_reviews) sum_poi_n_reviews from foo group by from_node, to_node)