SELECT MIN(ctid) as ctid, id
FROM gtlab.sk_sgs_vgl_sguds_details 
GROUP BY (id) HAVING COUNT(*) > 1;

DELETE FROM gtlab.sk_sgs_vgl_sguds_details a USING (
    SELECT MIN(ctid) as ctid, id
    FROM gtlab.sk_sgs_vgl_sguds_details 
    GROUP BY (id) HAVING COUNT(*) > 1
) b
WHERE a.id = b.id
AND a.ctid <> b.ctid;




select  id, count(*) from gtlab.sk_sgs_vgl_sguds_details group by id order by count desc



select * from sguds_vgl_details_scrapped where id in (370)


ALTER TABLE gtlab.sk_sgs_vgl_sguds ADD COLUMN details_scrapped text;


select st_srid("geometry") from gtlab.sk_sgs_vgl_sguds order by id

select * from gtlab.sk_sgs_vgl_sguds


select dmo_id, count(*) from gtlab.sk_sgs_vgl_sguds group by dmo_id order by count desc

CREATE TABLE gtlab.sk_sgs_vgl_municipality_ids AS select id, gku_municipality_id from gtlab.sk_sgs_vgl_sguds order by id

gtlab.sk_sgs_vgl_dmo_ids


SELECT 

select id, count(*) from gtlab.sk_sgs_vgl_sguds_details group by id order by count desc


UPDATE gtlab.sk_sgs_vgl_sguds SET details_scrapped = 'done' WHERE id between 1 and 11

delete from gtlab.sk_sgs_vgl_sguds_details where id = 12


select * from gtlab.sk_municipalities_gku

select * from gtlab.sk_sgs_vgl_sguds order by id

select * from gtlab.sk_sgs_vgl_municipality_ids


ALTER TABLE gtlab.sk_sgs_vgl_sguds RENAME COLUMN geometry  TO geom;
SELECT UpdateGeometrySRID('gtlab','sk_sgs_vgl_sguds', 'geom', 3857);

with foo as (select * from gtlab.sk_sgs_vgl_sguds limit 1)


select foo.id, sk_municipalities_gku."Kód_obce"
FROM foo, gtlab.sk_municipalities_gku
where st_within(st_transform(foo.geom, 4326), st_transform(sk_municipalities_gku.geom, 4326 ))



select * from gtlab.sk_municipalities_gku where "Kód_obce" = 'SK0321508748'



select * from gtlab.sk_sgs_vgl_sguds where gku_municipality_id is not null


select * from gtlab.sk_sgs_vgl_municipality_ids


SELECT sk_sgs_vgl_sguds.id, sk_dmo_boundaries_susr_codes.dmo_id 
FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_dmo_boundaries_susr_codes
where sk_sgs_vgl_sguds.gku_municipality_id = sk_dmo_boundaries_susr_codes."Kód_obce"

SELECT sk_sgs_vgl_sguds.id, sk_dmo_boundaries_susr_codes.dmo_id 
FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_dmo_boundaries_susr_codes
where sk_sgs_vgl_sguds.gku_municipality_id = sk_dmo_boundaries_susr_codes."Kód_obce"

CREATE TABLE sk_sgs_vgl_dmo_ids AS WITH foo AS (SELECT "Kód_obce" gku_municipality_id, dmo_id FROM gtlab.sk_dmo_boundaries_susr_codes), bar AS (SELECT id, gku_municipality_id FROM gtlab.sk_sgs_vgl_sguds) SELECT * FROM bar LEFT JOIN foo USING(gku_municipality_id) ORDER BY id

UPDATE gtlab.sk_sgs_vgl_sguds SET dmo_id = nv.dmo FROM (SELECT * FROM sk_sgs_vgl_dmo_ids) nv WHERE sk_sgs_vgl_sguds.id = nv.id

select * from gtlab.sk_sgs_vgl_sguds order by id

alter table gtlab.sk_sgs_vgl_sguds drop column dmo_id
 gtlab.sk_sgs_vgl_sguds

select * from gtlab.sk_mchu_sps_sopsr
select * from gtlab.sk_vchu_lps_sopsr
select * from gtlab.sk_np_w_pz_sopsr
--select * from gtlab.sk_br_sopsr
select * from gtlab.sk_uev_teui_sopsr
select * from gtlab.sk_chvu_bpa_sopsr


select * from gtlab.sk_vchu_lps_sopsr where "OBJECTID" = 16209
select "SITEID", COUNT(*)
from gtlab.sk_chvu_bpa_sopsr
GROUP BY "SITEID" 
ORDER BY COUNT DESC



SELECT UpdateGeometrySRID('gtlab','sk_mchu_sps_sopsr', 'geom', 5514);
SELECT UpdateGeometrySRID('gtlab','sk_vchu_lps_sopsr', 'geom', 5514);
SELECT UpdateGeometrySRID('gtlab','sk_np_w_pz_sopsr', 'geom', 5514);
SELECT UpdateGeometrySRID('gtlab','sk_br_sopsr', 'geom', 5514);
SELECT UpdateGeometrySRID('gtlab','sk_uev_teui_sopsr', 'geom', 5514);
SELECT UpdateGeometrySRID('gtlab','sk_chvu_bpa_sopsr', 'geom', 5514);

ALTER TABLE gtlab.sk_mchu_sps_sopsr RENAME COLUMN "geometry" to geom;
ALTER TABLE gtlab.sk_vchu_lps_sopsr RENAME COLUMN "geometry" to geom;ô
ALTER TABLE gtlab.sk_np_w_pz_sopsr RENAME COLUMN "geometry" to geom;
ALTER TABLE gtlab.sk_br_sopsr RENAME COLUMN "geometry" to geom;
ALTER TABLE gtlab.sk_uev_teui_sopsr RENAME COLUMN "geometry" to geom;
ALTER TABLE gtlab.sk_chvu_bpa_sopsr RENAME COLUMN "geometry" to geom;



select st_srid(geom) from gtlab.sk_chvu_bpa_sopsr


ATLER TABLE 