--select * from gtlab.sk_dmos_raw
--select * from gtlab.sk_dmo_boundaries_susr_codes
--select * from gtlab.sk_dmo_members_raw 
--select * from gtlab.sk_municipalities_gku
--select * from gtlab.sk_dmos_municipalties_w_gku

ALTER TABLE gtlab.sk_dmos_municipalties_w_gku RENAME COLUMN geometry  TO geom;
ALTER TABLE gtlab.sk_municipalities_gku RENAME COLUMN geometry  TO geom;

UPDATE gtlab.sk_dmos_municipalties_w_gku SET geom = st_setrid(geom, 5514)


select st_srid(geometry)from gtlab.sk_dmos_municipalties_w_gku

SELECT UpdateGeometrySRID('gtlab','sk_dmos_municipalties_w_gku', 'geom', 5514)
SELECT UpdateGeometrySRID('gtlab','sk_municipalities_gku', 'geom', 5514)


SELECT st_setsrid(geom, 5514) from gtlab.sk_dmos_municipalties_w_gku

SELECT st_setsrid(geometry, 5514) from gtlab.sk_municipalities_gku

CREATE TABLE gtlab.sk_dmos_municipalties_w_gku AS
SELECT * from gtlab.sk_dmo_boundaries_susr_codes
LEFT JOIN gtlab.sk_municipalities_gku USING ("Kód_obce")

ALTER TABLE gtlab.sk_dmo_members_raw ADD COLUMN dmo_member_id text;
UPDATE gtlab.sk_dmo_members_raw SET dmo_member_id = dmo_id::text || '_' || member_id || '_' || member_name;
ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes ADD COLUMN dmo_member_id text;
UPDATE gtlab.sk_dmo_boundaries_susr_codes SET dmo_member_id = dmo_id::text || '_' || member_id || '_' || member_name_x;

ALTER TABLE gtlab.sk_dmo_members_raw ADD PRIMARY KEY (dmo_member_id); 
ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes ADD PRIMARY KEY ("Kód_obce"); 
ALTER TABLE gtlab.sk_dmos_raw ADD PRIMARY KEY (dmo_id);
ALTER TABLE gtlab.sk_municipalities_gku ADD PRIMARY KEY ("Kód_obce");


ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes
	ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_dmo_members  FOREIGN KEY (dmo_member_id) REFERENCES gtlab.sk_dmo_members_raw (dmo_member_id);
ALTER TABLE gtlab.sk_dmo_members_raw 
	ADD CONSTRAINT fk_sk_dmo_members_with_sk_dmo  FOREIGN KEY (dmo_id) REFERENCES gtlab.sk_dmos_raw (dmo_id) ;
ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes
	ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_dmo  FOREIGN KEY (dmo_id) REFERENCES gtlab.sk_dmos_raw (dmo_id) ;
ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes
	ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_municipalities_gku  FOREIGN KEY ("Kód_obce") REFERENCES gtlab.sk_municipalities_gku ("Kód_obce");

DROP TABLE gtlab.sk_dmos_municipalties_w_gku;
DROP TABLE gtlab.sk_dmo_boundaries_raw;

select * from gtlab.sk_sgs_vgl_sguds order by id


ALTER TABLE gtlab.sk_sgs_vgl_sguds ADD PRIMARY KEY (id);
ALTER TABLE gtlab.sk_sgs_vgl_sguds_details ADD PRIMARY KEY (id);
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_sk_dmos_raw  FOREIGN KEY (dmo_id) REFERENCES gtlab.sk_dmos_raw (dmo_id);
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_sk_municipalities_gku  FOREIGN KEY (gku_municipality_id) REFERENCES gtlab.sk_municipalities_gku ("Kód_obce");
ALTER TABLE gtlab.sk_sgs_vgl_sguds_details
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_sk_sgs_vgl_sguds_details  FOREIGN KEY (id) REFERENCES gtlab.sk_sgs_vgl_sguds (id);


ALTER TABLE gtlab.sk_mchu_sps_sopsr ADD PRIMARY KEY ("OBJECTID");
ALTER TABLE gtlab.sk_vchu_lps_sopsr ADD PRIMARY KEY ("SITEID"); 
ALTER TABLE gtlab.sk_np_w_pz_sopsr ADD PRIMARY KEY (gml_id);
ALTER TABLE gtlab.sk_uev_teui_sopsr ADD PRIMARY KEY ("SITEID"); 
ALTER TABLE gtlab.sk_chvu_bpa_sopsr ADD PRIMARY KEY ("SITEID");

ALTER TABLE gtlab.sk_sgs_vgl_sguds ALTER COLUMN siteid_sk_vchu_lps_sopsr TYPE INTEGER USING siteid_sk_vchu_lps_sopsr::INTEGER ;

ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_mchu  FOREIGN KEY (objectid_sk_mchu_sps_sopsr) REFERENCES gtlab.sk_mchu_sps_sopsr ("OBJECTID");
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_vchu  FOREIGN KEY (siteid_sk_vchu_lps_sopsr) REFERENCES gtlab.sk_vchu_lps_sopsr ("SITEID");
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_np  FOREIGN KEY (gml_id_sk_np_w_pz_sopsr) REFERENCES gtlab.sk_np_w_pz_sopsr (gml_id);
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_teui  FOREIGN KEY (siteid_sk_uev_teui_sopsr) REFERENCES gtlab.sk_uev_teui_sopsr ("SITEID");
ALTER TABLE gtlab.sk_sgs_vgl_sguds
	ADD CONSTRAINT fk_sk_sgs_vgl_sguds_with_chvu  FOREIGN KEY (siteid_sk_chvu_bpa_sopsr) REFERENCES gtlab.sk_chvu_bpa_sopsr ("SITEID");
	
	
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723 ADD PRIMARY KEY (ID);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details ADD PRIMARY KEY (ID);


ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723
	ADD CONSTRAINT fk_sk_ta_poi_with_sk_ta_poi_details  FOREIGN KEY (id) REFERENCES gtlab.sk_pois_activities_tripadvisor_0723_details (id);
	

ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details
	ADD CONSTRAINT fk_ta_poi_details_with_gku  FOREIGN KEY ("gku_municipality_id") REFERENCES gtlab.sk_municipalities_gku ("Kód_obce");
	
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details
	ADD CONSTRAINT fk_ta_poi_details_with_sk_dmo  FOREIGN KEY ("dmo_id") REFERENCES gtlab.sk_dmos_raw (dmo_id);
	
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details
	ADD CONSTRAINT fk_ta_poi_details_with_sk_dmo_boundaries  FOREIGN KEY (gku_municipality_id) REFERENCES gtlab.sk_dmo_boundaries_susr_codes ("Kód_obce");


ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details
	ADD CONSTRAINT fk_ta_poi_details_with_sk_dmo_boundaries  FOREIGN KEY (gku_municipality_id) REFERENCES gtlab.sk_dmo_boundaries_susr_codes ("Kód_obce");

ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_wit_ta_poi_detail  FOREIGN KEY (id) REFERENCES gtlab.sk_pois_activities_tripadvisor_0723_details (id);


ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization ALTER COLUMN tr_source_1 TYPE INTEGER;
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization ALTER COLUMN tr_class_2 TYPE INTEGER;
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization ALTER COLUMN tr_subclass_3 TYPE INTEGER;
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization ALTER COLUMN tr_group_4 TYPE INTEGER;
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization ALTER COLUMN tr_subgroup_5 TYPE INTEGER;


ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_with_trp_source  FOREIGN KEY (tr_source_1) REFERENCES gtlab.trp_1_sources (id);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_with_trp_class  FOREIGN KEY (tr_class_2) REFERENCES gtlab.trp_2_classes (id);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_with_trp_subclass  FOREIGN KEY (tr_subclass_3) REFERENCES gtlab.trp_3_subclasses (id);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_with_trp_groups  FOREIGN KEY (tr_group_4) REFERENCES gtlab.trp_4_groups (id);
ALTER TABLE gtlab.sk_pois_activities_tripadvisor_trp_categorization
	ADD CONSTRAINT trp_cat_with_trp_subgroups  FOREIGN KEY (tr_subgroup_5) REFERENCES gtlab.trp_5_subgroups (id);
	
	
ALTER TABLE gtlab.sk_ta_geosites_reviews_raw 
	ADD CONSTRAINT poi_w_raw_revie FOREIGN KEY (poi_id) REFERENCES gtlab.sk_pois_activities_tripadvisor_0723_details (id);
	
ALTER TABLE gtlab.sk_ta_geosites_reviews
	ADD CONSTRAINT poi_w_raw_revie FOREIGN KEY (poi_id) REFERENCES gtlab.sk_pois_activities_tripadvisor_0723_details (id);

ALTER TABLE gtlab.sk_ta_geosites_reviews
	ADD PRIMARY KEY (review_rand_unique_id);


