select dmo_id,count(*) 
from gtlab.sk_pois_activities_tripadvisor_0723_details
group by dmo_id
order by dmo_id
alter table gtlab.sk_sgs_vgl_sguds drop column category_name_sk_vchu_lps_sopsr_by_name, drop siteid_sk_vchu_lps_sopsr_by_name, drop name_sk_vchu_lps_sopsr_by_name

--update gtlab.sk_sgs_vgl_sguds  set name_sk_mchu_sps_sopsr_by_name = null
SELECT lokalita, typ_mchu, name_sk_vchu_lps_sopsr_by_name FROM gtlab.sk_sgs_vgl_sguds 


UPDATE gtlab.sk_sgs_vgl_sguds SET nmskbnm_prob="+ str(cosine_sim(nm_vgl, nm_mchu)) + ", category_name_sk_mchu_sps_sopsr_by_name = '"+str(cat_sopsr) + "', gmlid_sk_mchu_sps_sopsr_by_name ='" + mchu_id +"', name_sk_mchu_sps_sopsr_by_name ='"+ nm_mchu + "' WHERE id = '"+ str(vgl_id) +"'; "

with foo as (
SELECT * FROM gtlab.sk_sgs_vgl_sguds 
LEFT JOIN (SELECT dmo_id, dmo_name FROM gtlab.sk_dmos_raw) dmos USING(dmo_id) 
LEFT JOIN (select "gml_id" gml_id_cat1_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat1_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 1) spscat1 USING(gml_id_cat1_sk_mchu_sps_sopsr) 
LEFT JOIN (select "gml_id" gml_id_cat2_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat2_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 2) spscat2 USING(gml_id_cat2_sk_mchu_sps_sopsr) 
LEFT JOIN (select "gml_id" gml_id_cat3_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat3_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 3) spscat3 USING(gml_id_cat3_sk_mchu_sps_sopsr) 
LEFT JOIN (select "gml_id" gml_id_cat4_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat4_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 4) spscat4 USING(gml_id_cat4_sk_mchu_sps_sopsr) 
LEFT JOIN (select "gml_id" gml_id_cat5_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat5_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 5) spscat5 USING(gml_id_cat5_sk_mchu_sps_sopsr) 	
LEFT JOIN (select "gml_id" gml_id_cat6_sk_mchu_sps_sopsr, "SITETITLE_SK" name_cat6_sk_mchu_sps_sopsr from gtlab.sk_mchu_sps_sopsr WHERE "CATEGORY" = 6) spscat6 USING(gml_id_cat6_sk_mchu_sps_sopsr) 	
LEFT JOIN (select "SITEID"::text siteid_cat8_sk_vchu_lps_sopsr, "SITETITLE_SK" name_cat8_sk_vchu_lps_sopsr from gtlab.sk_vchu_lps_sopsr WHERE "CATEGORY" = 8) lpscat8 USING(siteid_cat8_sk_vchu_lps_sopsr) 	
LEFT JOIN (select "SITEID"::text siteid_cat9_sk_vchu_lps_sopsr, "SITETITLE_SK" name_cat9_sk_vchu_lps_sopsr from gtlab.sk_vchu_lps_sopsr WHERE "CATEGORY" = 9) lpscat9 USING(siteid_cat9_sk_vchu_lps_sopsr) 	
LEFT JOIN (select "SITEID"::text siteid_cat10_sk_vchu_lps_sopsr, "SITETITLE_SK" name_cat10_sk_vchu_lps_sopsr from gtlab.sk_vchu_lps_sopsr WHERE "CATEGORY" = 10) lpscat10 USING(siteid_cat10_sk_vchu_lps_sopsr) 	
LEFT JOIN (select "SITEID"::text siteid_sk_uev_teui_sopsr, "SITETITLE_SK" name_sk_uev_teui_sopsr from gtlab.sk_uev_teui_sopsr) sk_uev_teui USING(siteid_sk_uev_teui_sopsr) 	
LEFT JOIN (select "SITEID"::text siteid_sk_chvu_bpa_sopsr, "SITETITLE_SK" name_sk_chvu_bpa_sopsr from gtlab.sk_chvu_bpa_sopsr) sk_chvu_bpa USING(siteid_sk_chvu_bpa_sopsr) 	
)


--select distinct(typ_mchu), "CATEGORY" from foo where typ_mchu is not null order by "CATEGORY"
select lokalita, typ_mchu, name_sk_mchu_sps_sopsr_by_name , category_name_sk_mchu_sps_sopsr_by_name, name_cat1_sk_mchu_sps_sopsr, name_cat2_sk_mchu_sps_sopsr, name_cat3_sk_mchu_sps_sopsr, name_cat4_sk_mchu_sps_sopsr, name_cat5_sk_mchu_sps_sopsr, name_cat6_sk_mchu_sps_sopsr 
from foo 
where typ_mchu is not null and typ_mchu <> ' ' and name_sk_mchu_sps_sopsr_by_name is null
order by lokalita



select "SITETITLE_EN", "CATEGORY", count(*) from gtlab.sk_mchu_sps_sopsr group by "SITETITLE_EN", "CATEGORY" order by count desc
select * from gtlab.sk_mchu_sps_sopsr where  "CATEGORY" = 6

select distinct("CATEGORY"), split_part("SITETITLE_SK", ' ', 1) from gtlab.sk_vchu_lps_sopsr
 
select * from gtlab.sk_vchu_lps_sopsr where "CATEGORY" = 9

select distinct("CATEGORY") from gtlab.sk_uev_teui_sopsr

select distinct("CATEGORY") from gtlab.sk_chvu_bpa_sopsr
select * from gtlab.sk_br_sopsr

select split_part("SITETITLE_SK", ' ', 1) x,"CATEGORY", count(*) from gtlab.sk_mchu_sps_sopsr group by x, "CATEGORY" order by "CATEGORY"


select * from gtlab.sk_mchu_sps_sopsr where "OBJECTID"= 10185

select gml_id, count(*) from gtlab.sk_mchu_sps_sopsr group by gml_id order by count desc

gml_id_cat1_sk_mchu_sps_sopsr
gml_id_cat2_sk_mchu_sps_sopsr
gml_id_cat3_sk_mchu_sps_sopsr
gml_id_cat4_sk_mchu_sps_sopsr
gml_id_cat5_sk_mchu_sps_sopsr
gml_id_cat6_sk_mchu_sps_sopsr




SELECT typ_mchu, count(*) FROM gtlab.sk_sgs_vgl_sguds group by typ_mchu

select * from gtlab. sk_br_sopsr where "OBJECTID" = 10318 order by "SITETITLE_EN"

select * from information_schema.tables where table_name::text like '%sopsr%' and table_schema = 'gtlab'

select * from 

select * from gtlab.sk_sgs_vgl_sguds where objectid_sk_mchu_sps_sopsr is null

select distinct("CATEGORY"), split_part("SITETITLE_SK", ' ', 1) from gtlab.sk_mchu_sps_sopsr  ORDER BY "CATEGORY"


select * from gtlab.sk_sgs_vgl_sguds where mchu_cat1 is not null


select lokalita, typ_mchu, gml_id_cat1_sk_mchu_sps_sopsr,
gml_id_cat2_sk_mchu_sps_sopsr,
gml_id_cat3_sk_mchu_sps_sopsr,
gml_id_cat4_sk_mchu_sps_sopsr,
gml_id_cat5_sk_mchu_sps_sopsr,
gml_id_cat6_sk_mchu_sps_sopsr,
gml_id_cat7_sk_mchu_sps_sopsr from gtlab.sk_sgs_vgl_sguds  
where typ_mchu <> ' ' and gml_id_cat1_sk_mchu_sps_sopsr is  null
and gml_id_cat2_sk_mchu_sps_sopsr is  null
and gml_id_cat3_sk_mchu_sps_sopsr is  null
and gml_id_cat4_sk_mchu_sps_sopsr is  null
and gml_id_cat5_sk_mchu_sps_sopsr is  null
and gml_id_cat6_sk_mchu_sps_sopsr is  null
and gml_id_cat7_sk_mchu_sps_sopsr is  null

select * from gtlab.sk_sgs_vgl_sguds where gmlid_sk_mchu_sps_sopsr_by_name is not null


select siteid_sk_mchu_sps_sopsr_by_name from gtlab.sk_sgs_vgl_sguds where typ_mchu <> ' '

UPDATE gtlab.sk_sgs_vgl_sguds SET gmlid_sk_mchu_sps_sopsr_by_name = NULL, name_sk_mchu_sps_sopsr_by_name =NULL, category_name_sk_mchu_sps_sopsr_by_name = NULL 
from 
(
with foo as (
select sk_sgs_vgl_sguds.objectid, sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name, sk_sgs_vgl_sguds.lokalita, sk_sgs_vgl_sguds.name_sk_mchu_sps_sopsr_by_name, sk_sgs_vgl_sguds.nmskbnm_prob, sk_sgs_vgl_sguds.geom sgs_geom,  
sk_mchu_sps_sopsr.geom sps_geom, ST_Distance (st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 )) distance_geom,
	ST_Distance (st_transform(sk_sgs_vgl_sguds.geom, 4326)::geography, st_transform(sk_mchu_sps_sopsr.geom, 4326 )::geography) distance_geography
from gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr
where sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name is not null
and sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name = sk_mchu_sps_sopsr.gml_id
)
select * from foo where distance_geography > 5000
order by distance_geography desc
) nv 
where sk_sgs_vgl_sguds.objectid = nv.objectid and sk_sgs_vgl_sguds.name_sk_mchu_sps_sopsr_by_name = nv.name_sk_mchu_sps_sopsr_by_name
--array_agg(siteid_sk_mchu_sps_sopsr_by_name)
select objectid, lokalita, gmlid_sk_mchu_sps_sopsr_by_name, name_sk_mchu_sps_sopsr_by_name, category_name_sk_mchu_sps_sopsr_by_name, nmskbnm_prob FROM gtlab.sk_sgs_vgl_sguds where gmlid_sk_mchu_sps_sopsr_by_name is not null order by lokalita

14, 92, 101, 240, "442", 374, 7, 276, 

select * FROM gtlab.sk_sgs_vgl_sguds where nmskbnm_prob is not null

UPDATE gtlab.sk_sgs_vgl_sguds set gmlid_sk_mchu_sps_sopsr_by_name = null where nmskbnm_prob is  null

select * from gtlab.sk_sgs_vgl_sguds where gml_id_cat2_sk_mchu_sps_sopsr is not null




chranene_uzemia_mchu.fid-115f5d2f_18f1405f84c_-180

UPDATE gtlab.sk_sgs_vgl_sguds set category_name_sk_mchu_sps_sopsr_by_name = null, siteid_sk_mchu_sps_sopsr_by_name = null, name_sk_mchu_sps_sopsr_by_name = null

alter table gtlab.sk_sgs_vgl_sguds rename column siteid_sk_mchu_sps_sopsr_by_name  to  gmlid_sk_mchu_sps_sopsr_by_name

select * from gtlab.sk_sgs_vgl_sguds
select * from information_schema.columns where table_name = 'sk_sgs_vgl_sguds'       


1 NPR
2 PR
3 NPP
4 PA
5 CHA
6 OP
7 OP


select * from gtlab.sk_sgs_vgl_sguds where gml_id_cat6_sk_mchu_sps_sopsr is not null
where gml_id = 'chranene_uzemia_mchu.fid-115f5d2f_18f1405f84c_133'


select lokalita from gtlab.sk_sgs_vgl_sguds where lokalita like '%- %'

select * from gtlab.sk_mchu_sps_sopsr where "CATEGORY" = 6

select * from gtlab.sk_sgs_vgl_sguds where unaccent(lokalita) ~ '[-]'

Devínska Nová Ves, Sandberg
Sandberg


select lokalita, typ_mchu, gml_id_cat1_sk_mchu_sps_sopsr, gml_id_cat2_sk_mchu_sps_sopsr, gml_id_cat3_sk_mchu_sps_sopsr, gml_id_cat4_sk_mchu_sps_sopsr, gml_id_cat5_sk_mchu_sps_sopsr, gml_id_cat6_sk_mchu_sps_sopsr, gml_id_cat7_sk_mchu_sps_sopsr, gmlid_sk_mchu_sps_sopsr_by_name
from gtlab.sk_sgs_vgl_sguds 


select * from information_schema.columns where table_name = 'sk_sgs_vgl_sguds'

select * from gtlab.sk_sgs_vgl_sguds  where category_name_sk_mchu_sps_sopsr_by_name is not null and gmlid_sk_mchu_sps_sopsr_by_name is not null


UPDATE gtlab.sk_sgs_vgl_sguds set  category_name_sk_mchu_sps_sopsr_by_name = null where gmlid_sk_mchu_sps_sopsr_by_name is null

"gml_id_cat1_sk_mchu_sps_sopsr"
"gml_id_cat2_sk_mchu_sps_sopsr"
"gml_id_cat3_sk_mchu_sps_sopsr"
"gml_id_cat4_sk_mchu_sps_sopsr"
"gml_id_cat5_sk_mchu_sps_sopsr"
"gml_id_cat6_sk_mchu_sps_sopsr"
"gml_id_cat7_sk_mchu_sps_sopsr"
"gmlid_sk_mchu_sps_sopsr_by_name"

name_sk_mchu_sps_sopsr_by_name


select distinct(siteid_cat10_sk_vchu_lps_sopsr) from gtlab.sk_sgs_vgl_sguds


select siteid_cat8_sk_vchu_lps_sopsr, siteid_cat9_sk_vchu_lps_sopsr, siteid_cat10_sk_vchu_lps_sopsr 
from gtlab.sk_sgs_vgl_sguds
where siteid_cat9_sk_vchu_lps_sopsr is not null and siteid_cat10_sk_vchu_lps_sopsr is not null

select * from gtlab.sk_vchu_lps_sopsr where "CATEGORY" = 9


select dmo_id, count(*) n, sum(poi_n_reviews) sum_n_rating from gtlab.sk_pois_activities_tripadvisor_0723_details
group by dmo_id order by dmo_id

select * from gtlab.sk_pois_activities_tripadvisor_0723_details

select * from gtlab.sk_pois_activities_tripadvisor_trp_categorization


