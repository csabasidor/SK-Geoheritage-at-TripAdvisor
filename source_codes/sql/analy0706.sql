update gtlab.sk_ta_trp_cat_test
set

tr_group_4 = 54.0,	
tr_subclass_3 = 0.0,	
tr_class_2	= 0.0,
tr_source_1	= 0.0,
trp_1_source = 'Primary Tourism Resources',	
trp_2_class	= 'Natural',
trp_3_subclass = 'Outdoor landscapes'	,
trp_4_groups = 'Protected sites'	
trp_5_subgroups = 'National Parks'
where id in ('g274942-d6439669', 'g274923-d12236179', 'g13628303-d23034843', 'g4422051-d12236181');
select * from gtlab.sk_pois_activities_tripadvisor_trp_categorization where tr_group_4 = 54.0


update gtlab.sk_pois_activities_tripadvisor_trp_categorization
set
tr_subgroup_5 = 38,
tr_group_4 = 54.0,	
tr_subclass_3 = 0.0,	
tr_class_2	= 0.0,
tr_source_1	= 0.0
where id in ('g274942-d6439669', 'g274923-d12236179', 'g13628303-d23034843', 'g4422051-d12236181');


select * from gtlab.sk_ta_geosites_reviews_transformed
select * from gtlab.sk_pois_activities_tripadvisor_0723_details where unaccent(poi_name) like '%Strb%'

with foo as (
select sk_ta_geosites_reviews_transformed.poi_id,
sk_pois_activities_tripadvisor_0723_details.poi_name
from gtlab.sk_ta_geosites_reviews_transformed, gtlab.sk_pois_activities_tripadvisor_0723_details
where
sk_pois_activities_tripadvisor_0723_details.id = sk_ta_geosites_reviews_transformed.poi_id
	)
	select distinct(poi_id), poi_name from foo order by poi_name
	


with foo as (
select karim_ta_gt_reviews_t_clean.poi_id,
sk_pois_activities_tripadvisor_0723_details.poi_name
from karim_ta_gt_reviews_t_clean, gtlab.sk_pois_activities_tripadvisor_0723_details
where
sk_pois_activities_tripadvisor_0723_details.id = karim_ta_gt_reviews_t_clean.poi_id
	)
	select distinct(poi_id), poi_name from foo order by poi_name


select distinct(poi_id) from karim_ta_gt_reviews_t_clean

left join (select id poi_id, poi_name from ) bar
using (poi_id)


where poi_id in ('g982822-d8549787', 'g285716-d7698046')

with bar as (
with foo as (
select * from gtlab.sk_pois_activities_tripadvisor_0723_details
left join (select * from gtlab.sk_ta_trp_cat_test) trp using (id)
left join (select id tr_subgroup_5, name trp_5_subgroups  from gtlab.trp_5_subgroups) trp5 using(tr_subgroup_5)
	)
select * from foo where trp_3_subclass = 'Geosites'
)
select sum(poi_n_reviews) from bar
(select 'Geosites' from_node, trp_4_groups, sum(poi_n_reviews) weight from bar group by trp_4_groups order by trp_4_groups)
--union all
--(select trp_4_groups from_node, poi_name, sum(poi_n_reviews) weight from bar group by trp_4_groups, poi_name order by from_node, poi_name)

"11"
"8"
1
"95"
"12"
"235"
"14"
"12"
"478"
"252"
"1"
"176"


"1"
"38"
"10"
"1"


"1"
"47"
"1"
"4"
"1"
"1"
"93"
"23"
"15"
"1"
"1"
1
"4"
"7"
"2"
"32"

"25"
"2"
"1"
"17"
"30"
"1"
"17"
"46"
"2"
"1"
"1"
"38"
"1"
"5"
"71"
"5"
"1"
"108"
"47"
"1"
"1"
"40"
"1"
"7"
"20"
"1"
"4"
"1"
"1"
"46"