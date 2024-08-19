SELECT MIN(ctid) as ctid, url
FROM tripadvisor_sk_pois_072023 
GROUP BY (url) HAVING COUNT(*) > 1;


DELETE FROM tripadvisor_sk_pois_072023 a USING (
    SELECT MIN(ctid) as ctid, url
    FROM tripadvisor_sk_pois_072023 
    GROUP BY (url) HAVING COUNT(*) > 1
) b
WHERE a.url = b.url
AND a.ctid <> b.ctid;


select * from tripadvisor_sk_pois_072023 order by ord


select url, count(*) from tripadvisor_sk_pois_072023
group by url order by count desc


where in_db <> 'yes' order by ord



select * from gtlab.sk_pois_activities_tripadvisor_0723 where id = 'g12364218-d12183387'


create table gtlab.sk_pois_activities_tripadvisor_0723 as select ord, "Name", url from tripadvisor_sk_pois_072023

select poi_id, count(*) from tripadvisor_sk_pois_072023_details  group by poi_id order by count desc

select sk_pois_activities_tripadvisor_0723.* from gtlab.sk_pois_activities_tripadvisor_0723, tripadvisor_sk_pois_072023_details
where sk_pois_activities_tripadvisor_0723.id = tripadvisor_sk_pois_072023_details.poi_id

with foo as (
select * from gtlab.sk_pois_activities_tripadvisor_0723
left join tripadvisor_sk_pois_072023_details on sk_pois_activities_tripadvisor_0723.id = tripadvisor_sk_pois_072023_details.poi_id
	)
	select * from foo where poi_id is null
	
	
UPDATE gtlab.sk_pois_activities_tripadvisor_0723 SET details_in_db = 'POI no longer at TripAdvisor' where id IN ('g274924-d26167153', 'g274924-d21173402', 'g274924-d7185012')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723 SET details_in_db = 'Yes in DB' where details_in_db is null


0: 'id', 1: 'poi_name', 2: "poi_n_reviews", 3:"poi_rating", 4:"poi_tags_list", 5: "poi_neighbourhood", 6: "poi_address", 7: "url"

select * from gtlab.sk_pois_activities_tripadvisor_0723_details

CREATE TABLE gtlab.sk_pois_activities_tripadvisor_0723_details AS
select poi_id id, poi_name, poi_n_reviews, poi_rating, poi_tags_list, poi_neighbourhood, poi_address, url, municipality_str_url, region_str_url, lat, lon, ggl_address, ggl_location_type, ggl_place_id, geom from tripadvisor_sk_pois_072023_details


select * from gtlab.sk_pois_activities_tripadvisor_0723_details where poi_address in  ('', 'Visit website', 'Call', 'See all') or poi_address is null

532 address is null
102 address is ''
152 'Call'
954 'See all'
85 'Visit website'

ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723 ADD PRIMARY KEY (ID);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details ADD PRIMARY KEY (ID);


select * from gtlab.sk_pois_activities_tripadvisor_0723_details





57% has  no address 
select 532 + 102 +152 + 954 + 85

select 1825::numeric/3180::numeric

select * from gtlab.sk_municipalities_gku

WITH foo AS (
SELECT sk_pois_activities_tripadvisor_0723_details.id, sk_pois_activities_tripadvisor_0723_details.municipality_str_url, 
sk_municipalities_gku."Kód_obce",  sk_municipalities_gku."Názov_obce"
FROM gtlab.sk_pois_activities_tripadvisor_0723_details, gtlab.sk_municipalities_gku
WHERE 
	sk_pois_activities_tripadvisor_0723_details.id ='" g799612-d12120726 + "'
	AND st_within(sk_pois_activities_tripadvisor_0723_details.geom, st_transform(sk_municipalities_gku.geom, 4326))
	),
bar AS (select dmo_id, "Kód_obce" from gtlab.sk_dmo_boundaries_susr_codes)
SELECT * FROM foo 
LEFT JOIN bar USING("Kód_obce")"


with foo as (
SELECT sk_pois_activities_tripadvisor_0723_details.id, sk_pois_activities_tripadvisor_0723_details.dmo_id, sk_pois_activities_tripadvisor_0723_details.municipality_str_url, sk_pois_activities_tripadvisor_0723_details.gku_municipality_id,
sk_municipalities_gku."Názov_obce"
FROM gtlab.sk_pois_activities_tripadvisor_0723_details, gtlab.sk_municipalities_gku
where sk_pois_activities_tripadvisor_0723_details.gku_municipality_id = sk_municipalities_gku."Kód_obce"
) select * from foo
where lower(municipality_str_url) <> unaccent(lower("Názov_obce"))
and municipality_str_url not in ('Kosice', 'Bratislava')
order by "Názov_obce"
	
select round(302/3173::numeric, 2)
select * from gtlab.sk_pois_activities_tripadvisor_0723_details where gku_municipality_id is null

select * from gtlab.sk_municipalities_gku where "Názov_obce" like '%Bardejov%'


49.21460685861062, 18.775715732284553

select distinct(region_str_url) from gtlab.sk_pois_activities_tripadvisor_0723_details
select distinct("Názov_kraja") from gtlab.sk_municipalities_gku
select * from  


alter table gtlab.sk_pois_activities_tripadvisor_0723_details alter column gku_municipality_id type text

with foo as (	
select * from  gtlab.sk_pois_activities_tripadvisor_0723
left join gtlab.sk_pois_activities_tripadvisor_0723_details using(id)
)
select * from foo where geom is null

#DELETE FROM gtlab.sk_pois_activities_tripadvisor_0723 where details_in_db = 'POI no longer at TripAdvisor'

select array_agg(id) from gtlab.sk_pois_activities_tripadvisor_0723_details

	
select * from gtlab.sk_vchu_lps_sopsr



select * from gtlab.sk_municipalities_gku limit 1

