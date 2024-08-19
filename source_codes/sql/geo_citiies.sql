select distinct(table_name::text) from information_schema.tables where table_schema::text = 'gtlab' order by table_name::text

"sgs_geosites_ta_penetration"
"sk_br_sopsr"
"sk_chvu_bpa_sopsr"
"sk_dest_visitors_23_susr"
"sk_dmo_boundaries_susr_codes"
"sk_dmo_members_raw"
"sk_dmos_raw"
"sk_mchu_sps_sopsr"
"sk_municipalities_gku"
"sk_np_w_pz_sopsr"
"sk_pois_activities_tripadvisor_0723"
"sk_pois_activities_tripadvisor_0723_details"
"sk_pois_activities_tripadvisor_trp_categorization"
"sk_sgs_vgl_dmo_ids"
"sk_sgs_vgl_municipality_ids"
"sk_sgs_vgl_sguds"
"sk_sgs_vgl_sguds_details"
"sk_ta_geosites_reviews"
"sk_ta_geosites_reviews_raw"
"sk_ta_geosites_reviews_transformed"
"sk_ta_trp_cat_test"
"sk_uev_teui_sopsr"
"sk_vchu_lps_sopsr"
"trp_0_ps"
"trp_1_sources"
"trp_2_classes"
"trp_3_subclasses"
"trp_4_groups"
"trp_5_subgroups"


select * from gtlab.sk_ta_geosites_reviews_transformed


select to_date(visit_month || '-' ||visit_year, 'Mon-Year') dd,count(*) 
from gtlab.sk_ta_geosites_reviews_transformed 
where visit_month <> 'n/a'
group by dd
order by dd


select sk_ta_geosites_reviews_transformed.poi_id, sk_pois_activities_tripadvisor_0723_details.poi_name, count(*) n 
from gtlab.sk_ta_geosites_reviews_transformed,  gtlab.sk_pois_activities_tripadvisor_0723_details
where sk_ta_geosites_reviews_transformed.poi_id = sk_pois_activities_tripadvisor_0723_details.id
group by poi_id, poi_name 
order by n desc

with bar as (
with foo as (
select sk_ta_geosites_reviews_transformed.poi_id, sk_pois_activities_tripadvisor_0723_details.poi_name, 
sk_ta_geosites_reviews_transformed.visit_year, sk_ta_geosites_reviews_transformed.visit_month, 
count(*) n 
from gtlab.sk_ta_geosites_reviews_transformed,  gtlab.sk_pois_activities_tripadvisor_0723_details
where sk_ta_geosites_reviews_transformed.poi_id = sk_pois_activities_tripadvisor_0723_details.id
group by poi_id, poi_name, visit_year, visit_month 
order by poi_id, poi_name, visit_year, visit_month 
	)
select poi_name, visit_year, array_agg(visit_month) mnts, sum(n) n  from foo
group by poi_name, visit_year
order by n desc
	)
select * from bar where cardinality (mnts) = 12


with bar as (
with foo as (
select distinct(reviewer_origin) from gtlab.sk_ta_geosites_reviews_transformed
)
select reviewer_origin, split_part(reviewer_origin, ', ', 1) city, split_part(reviewer_origin, ', ', 2) country
from foo
order by country
)


select reviewer_origin, count(*) n from gtlab.sk_ta_geosites_reviews_transformed
group by reviewer_origin
order by n desc

with foo as (
select visit_year, visit_month, count(*) n 
from gtlab.sk_ta_geosites_reviews_transformed
group by visit_year, visit_month
)
select visit_year || '-'  || visit_month xxx, max(n) mx from foo
group by xxx
order by mx desc

2015 - 8
2016 - 8
2017 - 8
2018 - 7
2019 - 8


with bar as (
with foo as (
select visit_year, visit_month, count(*) n 
from gtlab.sk_ta_geosites_reviews_transformed
group by visit_year, visit_month
)
select visit_year, array_agg(visit_month) mnts, sum(n) from foo 
group by visit_year
)
select * from bar where cardinality (mnts) = 12

Strbske Pleso Lake
Demanovska Cave of Liberty
Belianska Cave

select distinct(visit_month) from gtlab.sk_ta_geosites_reviews_transformed

with foo as (
select poi_id, count(*) n
from gtlab.sk_ta_geosites_reviews_transformed
group by poi_id
	)select sum(n) from foo
	
	drop table gtlab.ta_geosts_rev_origins
	
	select * from gtlab.ta_geosts_rev_origins



create table gtlab.ta_reviewers_origin as 
with foo as (
select distinct(reviewer_origin), poi_id from gtlab.sk_ta_geosites_reviews_transformed 
	)
select distinct(reviewer_origin), array_agg(poi_id) from foo
group by reviewer_origin
order by reviewer_origin;

alter table gtlab.ta_reviewers_origin  add column lat text,
add column lon text,
add column ggl_address text,
add column ggl_location_type text,
add column ggl_place_id text,
add column ggl_locality text,
add column ggl_admin_level1 text,
add column ggl_admin_level2 text,
add column ggl_country text,
add column continent text,
add column un_geo_region text;

update gtlab.ta_reviewers_origin set reviewer_origin = replace(reviewer_origin, '''', ' ') where reviewer_origin like '%''%'
update gtlab.sk_ta_geosites_reviews set reviewer_origin = replace(reviewer_origin, '''', ' ') where reviewer_origin like '%''%'

alter table gtlab.ta_reviewers_origin rename column "array_agg" to array_poi_ids;
alter table gtlab.ta_reviewers_origin add column country_from_ggl text;

update gtlab.ta_reviewers_origin set continent = 'Europe', un_geo_region = 'N/a', ggl_country = 'N/a'  where reviewer_origin = 'Europe'; 
update gtlab.ta_reviewers_origin set continent = 'Unknown', un_geo_region = 'Unknown', ggl_country = 'Unknown'  where reviewer_origin = ''; 
update gtlab.ta_reviewers_origin set continent = 'Unknown', un_geo_region = 'Unknown', ggl_country = 'Unknown'  where reviewer_origin in ('n/a', 'Waals-Br.', 'Yaaf'); 
update gtlab.ta_reviewers_origin set continent = 'Asia', un_geo_region = 'Western Asia', ggl_country = 'Unknown'  where reviewer_origin = 'Givat Yoav'; 
update gtlab.ta_reviewers_origin set continent = 'Asia', un_geo_region = 'Western Asia', ggl_country = 'Unknown'  where reviewer_origin = 'Givat Yoav'; 

select distinct(un_geo_region) from gtlab.ta_reviewers_origin
select distinct(continent) from gtlab.ta_reviewers_origin
update gtlab.ta_reviewers_origin set continent = 'Unknown continent', un_geo_region = 'Unknown UN region', ggl_country = 'Unknown country'  where continent = 'Unknown'; 



with foo as (
select * from gtlab.sk_ta_geosites_reviews_transformed 
left join gtlab.ta_reviewers_origin using (reviewer_origin)
)
(select 'Origin of reviewers' from_node, 'Origin of reviewers' to_node, count(*) n from foo)
union all
(select 'Origin of reviewers' from_node, continent to_node, count(*) n from foo group by to_node order by continent)
union all
(select continent from_node, un_geo_region to_node, count(*) n from foo where un_geo_region <> 'N/a' and  ggl_country <> 'Unknown' group by from_node, to_node order by from_node, to_node)
union all
(select un_geo_region from_node, ggl_country to_node, count(*) n from foo where un_geo_region <> 'N/a' and  ggl_country <> 'Unknown' group by from_node, to_node order by from_node, to_node)



select continent, count(*) n from foo 
group by continent
select * from foo where continent is null



select * from gtlab.sk_ta_geosites_reviews_transformed 
select * from gtlab.ta_reviewers_origin where ggl_address is not null
select 2134*100/2655

select reviewer_origin, ggl_address, country_from_ggl from  gtlab.ta_reviewers_origin where ggl_address is not null;

select * from gtlab.ta_reviewers_origin where reviewer_origin = 'Považská Bystrica, Slovensko'

select * from  gtlab.ta_reviewers_origin where reviewer_origin not in ('n/a', '') and lat is null;