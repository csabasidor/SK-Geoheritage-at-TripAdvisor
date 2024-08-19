with foo as (
select sk_pois_activities_tripadvisor_0723_details.id, sk_pois_activities_tripadvisor_0723_details.dmo_id, 
    'DMO ' || sk_pois_activities_tripadvisor_0723_details.dmo_id nm_dmoid,
sk_ta_trp_cat_test.trp_1_source, sk_ta_trp_cat_test.trp_2_class, sk_ta_trp_cat_test.trp_3_subclass, sk_ta_trp_cat_test.trp_4_groups,
sk_pois_activities_tripadvisor_0723_details.poi_n_reviews, sk_pois_activities_tripadvisor_0723_details.poi_rating
from gtlab.sk_ta_trp_cat_test, gtlab.sk_pois_activities_tripadvisor_0723_details
where sk_ta_trp_cat_test.id = sk_pois_activities_tripadvisor_0723_details.id
and sk_pois_activities_tripadvisor_0723_details.dmo_id is not null
)
select dmo_id, trp_3_subclass, count(*) n from foo
where trp_3_subclass = 'Geosites'
group by dmo_id, trp_3_subclass 
order by n desc


0
31
16


select sum(sk_pois_activities_tripadvisor_0723_details.poi_n_reviews)
from 
gtlab.sk_ta_trp_cat_test, gtlab.sk_pois_activities_tripadvisor_0723_details 
where trp_3_subclass = 'Geosites'
and sk_ta_trp_cat_test.id = sk_pois_activities_tripadvisor_0723_details .id
 


select * from gtlab.sk_sgs_vgl_sguds

select * from gtlab.sk_pois_activities_tripadvisor_0723_details limit 1

with foo as (
select sk_sgs_vgl_sguds.id, sk_sgs_vgl_sguds.lokalita, 
CASE WHEN sk_sgs_vgl_sguds.dmo_id IS NULL THEN 'NO DMO' ELSE 'DMO ' || sk_sgs_vgl_sguds.dmo_id END nm_dmoid,
array_agg(sk_pois_activities_tripadvisor_0723_details.id) arr_poi_id, array_agg(poi_name) arr_poi_name, array_agg(sk_pois_activities_tripadvisor_0723_details.dmo_id) arr_dmoid,  count(*) n_pois, sum(poi_n_reviews) sum_poi_n_reviews
from gtlab.sk_sgs_vgl_sguds, gtlab.sk_pois_activities_tripadvisor_0723_details 
where st_distance(st_transform(sk_sgs_vgl_sguds.geom, 4326)::geography, st_transform(sk_pois_activities_tripadvisor_0723_details.geom, 4326)::geography) < 5000
group by sk_sgs_vgl_sguds.id, sk_sgs_vgl_sguds.lokalita, nm_dmoid
order by nm_dmoid desc
)
select nm_dmoid, count(*) from foo group by nm_dmoid
select st_transform(sk_pois_activities_tripadvisor_0723_details.geom, 4326)::geography from gtlab.sk_pois_activities_tripadvisor_0723_details


select * from gtlab.sk_ta_trp_cat_test