select table_schema::text || '.' || table_name::text  from information_schema.tables where table_schema::text = 'gtlab'
"gtlab.sk_sgs_vgl_municipality_ids"
"gtlab.trp_0_ps"
"gtlab.sk_mchu_sps_sopsr"
"gtlab.sk_np_w_pz_sopsr"
"gtlab.sk_br_sopsr"
"gtlab.sk_uev_teui_sopsr"
"gtlab.sk_chvu_bpa_sopsr"
"gtlab.sk_vchu_lps_sopsr"
"gtlab.trp_1_sources"
"gtlab.trp_2_classes"
"gtlab.sk_dmos_raw"
"gtlab.sk_dmo_members_raw"
"gtlab.sk_sgs_vgl_dmo_ids"
"gtlab.trp_5_subgroups"
"gtlab.trp_4_groups"
"gtlab.trp_3_subclasses"
"gtlab.sk_dmo_boundaries_susr_codes"
"gtlab.sk_sgs_vgl_sguds_details"
"gtlab.sk_pois_activities_tripadvisor_0723"
"gtlab.sk_pois_activities_tripadvisor_0723_details"
"gtlab.sk_sgs_vgl_sguds"
"gtlab.sk_pois_activities_tripadvisor_trp_categorization"
"gtlab.sk_ta_geosites_reviews"
"gtlab.sk_ta_geosites_reviews_raw"
"gtlab.sk_municipalities_gku"
"gtlab.sk_ta_trp_cat_test"
"gtlab.sk_dest_visitors_23_susr"
"gtlab.sk_ta_geosites_reviews_transformed"
"gtlab.ta_geosts_rev_origins"
"gtlab.sgs_geosites_ta_penetration"
"gtlab.ta_reviewers_origin"


with foo as (
select * from gtlab.sk_ta_geosites_reviews 
left join
(select id poi_id, poi_name, CASE WHEN dmo_id is null then 'NO DMO'::text else 'DMO ' || dmo_id end nm_dmoid from gtlab.sk_pois_activities_tripadvisor_0723_details) dmos
using (poi_id)
left join
(select id poi_id, trp_3_subclass, trp_4_groups from gtlab.sk_ta_trp_cat_test) trps
using (poi_id)
)
/*select nm_dmoid, visit_year, count(*) n from foo 
where nm_dmoid in ('DMO 0','DMO 21','DMO 31')
group by nm_dmoid, visit_year 
order by n desc
*/
/*
select poi_id, poi_name, trp_4_groups, visit_year, count(*)n from foo
group by poi_id, poi_name, trp_4_groups, visit_year
order by n desc*/

select * from gtlab.sk_dest_visitors_23_susr

select * from
(select poi_id, count(*) n from gtlab.sk_ta_geosites_reviews group by poi_id order by poi_id) foo
left join
(select poi_id, count(*) nx from gtlab.sk_ta_geosites_reviews_transformed group by poi_id order by poi_id) sts
using (poi_id)
where n <> nx







select visit_group_type, count(*) from gtlab.sk_ta_geosites_reviews group by visit_group_type


gtlab.sk_ta_geosites_reviews


with foo as (
select * from gtlab.sk_ta_geosites_reviews 
left join gtlab.ta_reviewers_origin using (reviewer_origin)
)
(select 'root'::text lvl, 'Origin of reviewers' from_node, 'Origin of reviewers' to_node, count(*) n from foo)
union all
(select 'lvl1'::text lvl, 'Origin of reviewers' from_node, continent to_node, count(*) n from foo group by to_node order by continent)
union all
(select 'lvl2'::text lvl, continent from_node, un_geo_region to_node, count(*) n from foo where un_geo_region <> 'N/a' and  ggl_country <> 'Unknown' group by from_node, to_node order by from_node, to_node)
union all
(select 'lvl3'::text lvl, un_geo_region from_node, ggl_country to_node, count(*) n from foo where un_geo_region <> 'N/a' and  ggl_country <> 'Unknown' group by from_node, to_node order by from_node, to_node)


select distinct(sent5_review_polarity) from gtlab.sk_ta_geosites_reviews where sent5_review_polarity is null