--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:51:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1515 (class 1259 OID 3063204)
-- Name: sk_dmo_boundaries_susr_codes; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.sk_dmo_boundaries_susr_codes (
    index bigint,
    dmo_id bigint,
    member_id text,
    member_name_x text,
    municipality_name_x text,
    "Kód_obce" text NOT NULL,
    dmo_member_id text
);


ALTER TABLE gtlab.sk_dmo_boundaries_susr_codes OWNER TO postgres;

--
-- TOC entry 8614 (class 0 OID 3063204)
-- Dependencies: 1515
-- Data for Name: sk_dmo_boundaries_susr_codes; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (0, 0, '1', 'Mesto Vysoké Tatry', 'vysoké tatry', 'SK0416560103', '0_1_Mesto Vysoké Tatry');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (1, 0, '2', 'Mesto Poprad', 'poprad', 'SK0416523381', '0_2_Mesto Poprad');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (2, 0, '3', 'Obec Štrba', 'štrba', 'SK0416523933', '0_3_Obec Štrba');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (3, 1, '1', 'mesto Stará Ľubovňa', 'stará ľubovňa', 'SK041A526665', '1_1_mesto Stará Ľubovňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (4, 1, '2', 'obec Chmeľnica', 'chmeľnica', 'SK041A526754', '1_2_obec Chmeľnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (5, 1, '3', 'obec Nová Ľubovňa', 'nová ľubovňa', 'SK041A526924', '1_3_obec Nová Ľubovňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (6, 1, '4', 'obec Hniezdne', 'hniezdne', 'SK041A526720', '1_4_obec Hniezdne');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (7, 1, '5', 'obec Vyšné Ružbachy', 'vyšné ružbachy', 'SK041A527092', '1_5_obec Vyšné Ružbachy');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (8, 1, '6', 'obec Lechnica', 'lechnica', 'SK0413523615', '1_6_obec Lechnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (9, 1, '7', 'obec Lesnica', 'lesnica', 'SK041A526843', '1_7_obec Lesnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (10, 1, '8', 'obec Litmanová', 'litmanová', 'SK041A526851', '1_8_obec Litmanová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (11, 2, '1', 'Mesto Košice', 'košice', 'SK0425599786', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (12, 2, '1', 'Mesto Košice', 'košice', 'SK0423599841', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (13, 2, '1', 'Mesto Košice', 'košice', 'SK0424599018', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (14, 2, '1', 'Mesto Košice', 'košice', 'SK0422598127', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (15, 2, '1', 'Mesto Košice', 'košice', 'SK0423599859', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (16, 2, '1', 'Mesto Košice', 'košice', 'SK0423598216', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (17, 2, '1', 'Mesto Košice', 'košice', 'SK0423598224', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (18, 2, '1', 'Mesto Košice', 'košice', 'SK0425599816', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (19, 2, '1', 'Mesto Košice', 'košice', 'SK0423598208', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (20, 2, '1', 'Mesto Košice', 'košice', 'SK0425599794', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (21, 2, '1', 'Mesto Košice', 'košice', 'SK0423599883', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (22, 2, '1', 'Mesto Košice', 'košice', 'SK0425599824', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (23, 2, '1', 'Mesto Košice', 'košice', 'SK0425599913', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (24, 2, '1', 'Mesto Košice', 'košice', 'SK0423598194', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (25, 2, '1', 'Mesto Košice', 'košice', 'SK0424598682', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (26, 2, '1', 'Mesto Košice', 'košice', 'SK0423599972', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (27, 2, '1', 'Mesto Košice', 'košice', 'SK0422598119', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (28, 2, '1', 'Mesto Košice', 'košice', 'SK0422598186', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (29, 2, '1', 'Mesto Košice', 'košice', 'SK0422599875', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (30, 2, '1', 'Mesto Košice', 'košice', 'SK0422599891', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (31, 2, '1', 'Mesto Košice', 'košice', 'SK0422598151', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (32, 2, '1', 'Mesto Košice', 'košice', 'SK0425599093', '2_1_Mesto Košice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (33, 3, '1', 'Mesto Dudince', 'dudince', 'SK0325518387', '3_1_Mesto Dudince');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (34, 4, '1', 'Mesto Brezno', 'brezno', 'SK0323508497', '4_1_Mesto Brezno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (35, 4, '10', 'Obec Jasenie', 'jasenie', 'SK0323508705', '4_10_Obec Jasenie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (36, 4, '11', 'Obec Nemecká', 'nemecká', 'SK0323508829', '4_11_Obec Nemecká');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (37, 4, '12', 'Obec Telgárt', 'telgárt', 'SK0323509051', '4_12_Obec Telgárt');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (38, 4, '13', 'Obec Hronec', 'hronec', 'SK0323508667', '4_13_Obec Hronec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (39, 4, '14', 'Obec Osrblie', 'osrblie', 'SK0323508845', '4_14_Obec Osrblie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (40, 4, '15', 'Obec Valaská', 'valaská', 'SK0323509086', '4_15_Obec Valaská');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (41, 4, '16', 'Obec Polomka', 'polomka', 'SK0323508900', '4_16_Obec Polomka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (42, 4, '17', 'Obec Heľpa', 'heľpa', 'SK0323508608', '4_17_Obec Heľpa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (43, 4, '2', 'Obec Mýto pod Ďumbierom', 'mýto pod ďumbierom', 'SK0323508811', '4_2_Obec Mýto pod Ďumbierom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (44, 4, '3', 'Obec Čierny Balog', 'čierny balog', 'SK0323508527', '4_3_Obec Čierny Balog');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (45, 4, '4', 'Obec Bystrá', 'bystrá', 'SK0323557251', '4_4_Obec Bystrá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (46, 4, '5', 'Obec Horná Lehota', 'horná lehota', 'SK0323508624', '4_5_Obec Horná Lehota');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (47, 4, '6', 'Obec Predajná', 'predajná', 'SK0323508934', '4_6_Obec Predajná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (48, 4, '7', 'Obec Lom nad Rimavicou', 'lom nad rimavicou', 'SK0323508730', '4_7_Obec Lom nad Rimavicou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (49, 4, '8', 'Obec Šumiac', 'šumiac', 'SK0323509043', '4_8_Obec Šumiac');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (50, 4, '9', 'Obec Brusno', 'brusno', 'SK0321508675', '4_9_Obec Brusno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (51, 5, '1', 'Mesto Bardejov', 'bardejov', 'SK0411519006', '5_1_Mesto Bardejov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (52, 5, '2', 'Mesto Svidník', 'svidník', 'SK041C527106', '5_2_Mesto Svidník');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (53, 6, '1', 'Mesto Žarnovica', 'žarnovica', 'SK032C517381', '6_1_Mesto Žarnovica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (54, 6, '10', 'Obec Veľká Lehota', 'veľká lehota', 'SK032C517330', '6_10_Obec Veľká Lehota');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (55, 6, '11', 'Obec Voznica', 'voznica', 'SK032C517356', '6_11_Obec Voznica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (56, 6, '12', 'Obec Hronský Beňadik', 'hronský beňadik', 'SK032C516830', '6_12_Obec Hronský Beňadik');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (57, 6, '13', 'Obec Brehy', 'brehy', 'SK032C581607', '6_13_Obec Brehy');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (58, 6, '14', 'Obec Píla', 'píla', 'SK032C517127', '6_14_Obec Píla');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (60, 6, '15', 'Obec Rudno nad Hronom', 'rudno nad hronom', 'SK032C517232', '6_15_Obec Rudno nad Hronom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (61, 6, '16', 'Obec Bzenica', 'bzenica', 'SK032D516708', '6_16_Obec Bzenica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (62, 6, '17', 'Obec Hrabičov', 'hrabičov', 'SK032C516813', '6_17_Obec Hrabičov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (63, 6, '18', 'Mesto Žiar nad Hronom', 'žiar nad hronom', 'SK032D516589', '6_18_Mesto Žiar nad Hronom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (64, 6, '19', 'Obec Sklené Teplice', 'sklené teplice', 'SK032D517241', '6_19_Obec Sklené Teplice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (65, 6, '2', 'Mesto Nová Baňa', 'nová baňa', 'SK032C517097', '6_2_Mesto Nová Baňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (66, 6, '20', 'Obec Hliník nad Hronom', 'hliník nad hronom', 'SK032D516767', '6_20_Obec Hliník nad Hronom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (67, 6, '3', 'Obec Horné Hámre', 'horné hámre', 'SK032C516805', '6_3_Obec Horné Hámre');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (68, 6, '4', 'Obec Župkov', 'župkov', 'SK032C517399', '6_4_Obec Župkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (69, 6, '5', 'Obec Ostrý Grúň', 'ostrý grúň', 'SK032C517119', '6_5_Obec Ostrý Grúň');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (70, 6, '6', 'Obec Repište', 'repište', 'SK032D517216', '6_6_Obec Repište');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (71, 6, '7', 'Obec Kľak', 'kľak', 'SK032C516902', '6_7_Obec Kľak');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (72, 6, '8', 'Obec Tekovská Breznica', 'tekovská breznica', 'SK032C517291', '6_8_Obec Tekovská Breznica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (73, 6, '9', 'Obec Malá Lehota', 'malá lehota', 'SK032C517062', '6_9_Obec Malá Lehota');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (74, 7, '1', 'Mesto Trenčianske Teplice', 'trenčianske teplice', 'SK0229506613', '7_1_Mesto Trenčianske Teplice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (75, 8, '1', 'Mesto Považská Bystrica', 'považská bystrica', 'SK0226512842', '8_1_Mesto Považská Bystrica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (76, 8, '2', 'Obec Nimnica', 'nimnica', 'SK0228557447', '8_2_Obec Nimnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (77, 8, '3', 'Obec Papradno', 'papradno', 'SK0226513466', '8_3_Obec Papradno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (78, 8, '4', 'Obec Horná Mariková', 'horná mariková', 'SK0226513083', '8_4_Obec Horná Mariková');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (79, 8, '5', 'Obec Plevník-Drienové', 'plevník-drienové', 'SK0226513474', '8_5_Obec Plevník-Drienové');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (80, 8, '6', 'Obec Pružina', 'pružina', 'SK0226513601', '8_6_Obec Pružina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (81, 8, '7', 'Obec Vrchteplá', 'vrchteplá', 'SK0226513784', '8_7_Obec Vrchteplá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (82, 8, '8', 'Obec Záskalie', 'záskalie', 'SK0226513822', '8_8_Obec Záskalie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (83, 9, '1', 'Mesto Trnava', 'trnava', 'SK0217506745', '9_1_Mesto Trnava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (84, 9, '10', 'Obec Bohdanovce nad Trnavou', 'bohdanovce nad trnavou', 'SK0217506796', '9_10_Obec Bohdanovce nad Trnavou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (85, 9, '2', 'Obec Jaslovské Bohunice', 'jaslovské bohunice', 'SK0217507156', '9_2_Obec Jaslovské Bohunice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (86, 9, '3', 'Obec Ružindol', 'ružindol', 'SK0217507512', '9_3_Obec Ružindol');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (87, 9, '4', 'Obec Smolenice', 'smolenice', 'SK0217507555', '9_4_Obec Smolenice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (88, 9, '5', 'Obec Suchá nad Parnou', 'suchá nad parnou', 'SK0217507571', '9_5_Obec Suchá nad Parnou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (89, 9, '6', 'Obec Špačince', 'špačince', 'SK0217507601', '9_6_Obec Špačince');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (90, 9, '7', 'Obec Biely Kostol', 'biely kostol', 'SK0217580473', '9_7_Obec Biely Kostol');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (91, 9, '8', 'Obec Dolná Krupá', 'dolná krupá', 'SK0217506923', '9_8_Obec Dolná Krupá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (92, 9, '9', 'Obec Voderady', 'voderady', 'SK0217507741', '9_9_Obec Voderady');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (93, 10, '1', 'Mesto Rajecké Teplice', 'rajecké teplice', 'SK031B517933', '10_1_Mesto Rajecké Teplice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (94, 10, '10', 'Obec Kamenná Poruba', 'kamenná poruba', 'SK031B517658', '10_10_Obec Kamenná Poruba');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (95, 10, '11', 'Obec Jasenové', 'jasenové', 'SK031B517640', '10_11_Obec Jasenové');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (96, 10, '12', 'Obec Zbyňov', 'zbyňov', 'SK031B518131', '10_12_Obec Zbyňov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (97, 10, '13', 'Obec Malá Čierna', 'malá čierna', 'SK031B517780', '10_13_Obec Malá Čierna');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (98, 10, '2', 'Mesto Rajec', 'rajec', 'SK031B517917', '10_2_Mesto Rajec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (99, 10, '3', 'Obec Rajecká Lesná', 'rajecká lesná', 'SK031B517925', '10_3_Obec Rajecká Lesná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (100, 10, '4', 'Obec Stránske', 'stránske', 'SK031B517968', '10_4_Obec Stránske');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (101, 10, '5', 'Obec Fačkov', 'fačkov', 'SK031B517542', '10_5_Obec Fačkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (102, 10, '6', 'Obec Ďurčiná', 'ďurčiná', 'SK031B557986', '10_6_Obec Ďurčiná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (103, 10, '7', 'Obec Kunerad', 'kunerad', 'SK031B517721', '10_7_Obec Kunerad');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (104, 10, '8', 'Obec Čičmany', 'čičmany', 'SK031B517470', '10_8_Obec Čičmany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (105, 10, '9', 'Obec Konská', 'konská', 'SK031B517682', '10_9_Obec Konská');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (107, 11, '1', 'mesto Humenné', 'humenné', 'SK0412520004', '11_1_mesto Humenné');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (108, 11, '10', 'obec Nová Kelča', 'nová kelča', 'SK041D528935', '11_10_obec Nová Kelča');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (109, 11, '11', 'obec Vladiča', 'vladiča', 'SK041B528005', '11_11_obec Vladiča');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (110, 11, '12', 'obec Nová Sedlica', 'nová sedlica', 'SK0419520551', '11_12_obec Nová Sedlica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (111, 11, '13', 'obec Ulič', 'ulič', 'SK0419520934', '11_13_obec Ulič');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (112, 11, '14', 'obec Zámutov', 'zámutov', 'SK041D529265', '11_14_obec Zámutov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (113, 11, '15', 'Obec Runina', 'runina', 'SK0419520730', '11_15_Obec Runina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (114, 11, '16', 'Mesto Giraltovce', 'giraltovce', 'SK041C519197', '11_16_Mesto Giraltovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (115, 11, '17', 'Obec Benkovce', 'benkovce', 'SK041D544086', '11_17_Obec Benkovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (116, 11, '18', 'Obec Sedliská', 'sedliská', 'SK041D529141', '11_18_Obec Sedliská');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (117, 11, '19', 'Obec Slovenská Kajňa', 'slovenská kajňa', 'SK041D529168', '11_19_Obec Slovenská Kajňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (118, 11, '2', 'mesto Vranov nad Topľou', 'vranov nad topľou', 'SK041D544051', '11_2_mesto Vranov nad Topľou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (119, 11, '3', 'mesto Snina', 'snina', 'SK0419520802', '11_3_mesto Snina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (120, 11, '4', 'mesto Medzilaborce', 'medzilaborce', 'SK0415520471', '11_4_mesto Medzilaborce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (121, 11, '5', 'obec Malá Domaša', 'malá domaša', 'SK041D528846', '11_5_obec Malá Domaša');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (122, 11, '6', 'obec Bžany', 'bžany', 'SK041B527203', '11_6_obec Bžany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (123, 11, '7', 'obec Zemplínske Hámre', 'zemplínske hámre', 'SK0419521108', '11_7_obec Zemplínske Hámre');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (124, 11, '8', 'mesto Stropkov', 'stropkov', 'SK041B527840', '11_8_mesto Stropkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (125, 11, '9', 'obec Holčíkovce', 'holčíkovce', 'SK041D528731', '11_9_obec Holčíkovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (126, 12, '1', 'mesto Martin', 'martin', 'SK0316512036', '12_1_mesto Martin');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (127, 12, '10', 'obec Turčianska Štiavnička', 'turčianska štiavnička', 'SK0316512702', '12_10_obec Turčianska Štiavnička');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (128, 12, '11', 'obec Turček', 'turček', 'SK0319512699', '12_11_obec Turček');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (129, 12, '2', 'mesto Turčianske Teplice', 'turčianske teplice', 'SK0319512729', '12_2_mesto Turčianske Teplice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (130, 12, '3', 'obec Mošovce', 'mošovce', 'SK0319512460', '12_3_obec Mošovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (131, 12, '4', 'obec Necpaly', 'necpaly', 'SK0316512478', '12_4_obec Necpaly');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (132, 12, '5', 'obec Háj', 'háj', 'SK0319512265', '12_5_obec Háj');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (133, 12, '6', 'mesto Turany', 'turany', 'SK0316512681', '12_6_mesto Turany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (134, 12, '7', 'obec Sučany', 'sučany', 'SK0316512648', '12_7_obec Sučany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (135, 12, '8', 'obec Belá – Dulice', 'belá-dulice', 'SK0316512052', '12_8_obec Belá – Dulice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (136, 12, '9', 'obec Podhradie', 'podhradie', 'SK0316512508', '12_9_obec Podhradie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (137, 13, '1', 'mesto Nitra', 'nitra', 'SK0233500011', '13_1_mesto Nitra');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (138, 13, '2', 'obec Topoľčianky', 'topoľčianky', 'SK0237500828', '13_2_obec Topoľčianky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (139, 13, '3', 'obec Mojmírovce', 'mojmírovce', 'SK0233500577', '13_3_obec Mojmírovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (140, 13, '4', 'obec Bojná', 'bojná', 'SK0236542717', '13_4_obec Bojná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (141, 13, '5', 'obec Nitrianska Blatnica', 'nitrianska blatnica', 'SK0236505234', '13_5_obec Nitrianska Blatnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (142, 13, '6', 'obec Prašice', 'prašice', 'SK0236505374', '13_6_obec Prašice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (143, 14, '1', 'Mesto Michalovce', 'michalovce', 'SK0427522279', '14_1_Mesto Michalovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (144, 14, '2', 'Mesto Veľké Kapušany', 'veľké kapušany', 'SK0427543853', '14_2_Mesto Veľké Kapušany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (145, 14, '3', 'Mesto Sobrance', 'sobrance', 'SK0429523089', '14_3_Mesto Sobrance');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (146, 14, '4', 'Obec Vinné', 'vinné', 'SK0427523259', '14_4_Obec Vinné');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (147, 14, '5', 'Obec Kaluža', 'kaluža', 'SK0427522589', '14_5_Obec Kaluža');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (148, 14, '6', 'Obec Klokočov', 'klokočov', 'SK0427522597', '14_6_Obec Klokočov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (149, 14, '7', 'Obec Suché', 'suché', 'SK0427523135', '14_7_Obec Suché');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (150, 14, '8', 'Obec Trnava pri Laborci', 'trnava pri laborci', 'SK0427523194', '14_8_Obec Trnava pri Laborci');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (151, 14, '9', 'Obec Brehov', 'brehov', 'SK042B528200', '14_9_Obec Brehov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (152, 15, '1', 'mesto Banská Bystrica', 'banská bystrica', 'SK0321508438', '15_1_mesto Banská Bystrica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (153, 15, '10', 'obec Donovaly', 'donovaly', 'SK0321508560', '15_10_obec Donovaly');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (154, 15, '11', 'obec Podkonice', 'podkonice', 'SK0321508861', '15_11_obec Podkonice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (155, 15, '12', 'obec Slovenská Ľupča', 'slovenská ľupča', 'SK0321509001', '15_12_obec Slovenská Ľupča');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (156, 15, '13', 'obec Hronsek', 'hronsek', 'SK0321580236', '15_13_obec Hronsek');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (157, 15, '14', 'obec Horné Pršany', 'horné pršany', 'SK0321508641', '15_14_obec Horné Pršany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (158, 15, '15', 'obec Kynceľová', 'kynceľová', 'SK0321557277', '15_15_obec Kynceľová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (159, 15, '16', 'obec Ľubietová', 'ľubietová', 'SK0321508748', '15_16_obec Ľubietová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (160, 15, '17', 'mesto Kremnica', 'kremnica', 'SK032D516970', '15_17_mesto Kremnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (161, 15, '18', 'obec Poniky', 'poniky', 'SK0321508918', '15_18_obec Poniky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (162, 15, '19', 'mesto Krupina', 'krupina', 'SK0325518557', '15_19_mesto Krupina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (163, 15, '2', 'mesto Zvolen', 'zvolen', 'SK032B518158', '15_2_mesto Zvolen');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (164, 15, '3', 'mesto Sliač', 'sliač', 'SK032B518808', '15_3_mesto Sliač');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (165, 15, '4', 'obec Turecká', 'turecká', 'SK0321557269', '15_4_obec Turecká');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (166, 15, '5', 'obec Tajov', 'tajov', 'SK0321509060', '15_5_obec Tajov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (167, 15, '6', 'obec Špania Dolina', 'špania dolina', 'SK0321509035', '15_6_obec Špania Dolina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (168, 15, '7', 'obec Dolný Harmanec', 'dolný harmanec', 'SK0321508551', '15_7_obec Dolný Harmanec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (169, 15, '8', 'obec Kováčová', 'kováčová', 'SK032B518506', '15_8_obec Kováčová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (171, 15, '9', 'obec Riečka', 'riečka', 'SK0321508969', '15_9_obec Riečka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (172, 16, '1', 'Mesto Žilina', 'žilina', 'SK031B517402', '16_1_Mesto Žilina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (173, 16, '10', 'Obec Zborov n/Bystricou', 'zborov nad bystricou', 'SK0312509531', '16_10_Obec Zborov n/Bystricou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (174, 16, '11', 'Obec Nová Bystrica', 'nová bystrica', 'SK0312509311', '16_11_Obec Nová Bystrica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (175, 16, '12', 'Obec Krasňany', 'krasňany', 'SK031B517712', '16_12_Obec Krasňany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (176, 16, '13', 'Obec Strečno', 'strečno', 'SK031B517984', '16_13_Obec Strečno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (177, 16, '14', 'Obec Nededza', 'nededza', 'SK031B517828', '16_14_Obec Nededza');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (178, 16, '15', 'Obec Varín', 'varín', 'SK031B518069', '16_15_Obec Varín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (179, 16, '16', 'Obec Stráža', 'stráža', 'SK031B517976', '16_16_Obec Stráža');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (180, 16, '2', 'Obec Porúbka', 'porúbka', 'SK031B557960', '16_2_Obec Porúbka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (181, 16, '3', 'Obec Teplička nad Váhom', 'teplička nad váhom', 'SK031B518034', '16_3_Obec Teplička nad Váhom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (182, 16, '4', 'Obec Radôstka', 'radôstka', 'SK0312509396', '16_4_Obec Radôstka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (183, 16, '5', 'Obec Belá', 'belá', 'SK031B517429', '16_5_Obec Belá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (184, 16, '6', 'Obec Gbeľany', 'gbeľany', 'SK031B517551', '16_6_Obec Gbeľany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (185, 16, '7', 'Obec Stará Bystrica', 'stará bystrica', 'SK0312509477', '16_7_Obec Stará Bystrica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (186, 16, '8', 'Obec Terchová', 'terchová', 'SK031B518042', '16_8_Obec Terchová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (187, 16, '9', 'Obec Lietava', 'lietava', 'SK031B517739', '16_9_Obec Lietava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (188, 17, '1', 'obec Baďan', 'baďan', 'SK0322516601', '17_1_obec Baďan');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (189, 17, '10', 'obec Vyhne', 'vyhne', 'SK032D517364', '17_10_obec Vyhne');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (190, 17, '11', 'obec Beluj', 'beluj', 'SK0322516678', '17_11_obec Beluj');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (191, 17, '12', 'obec Kozelník', 'kozelník', 'SK0322516953', '17_12_obec Kozelník');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (192, 17, '13', 'obec Hodruša - Hámre', 'hodruša-hámre', 'SK032C516759', '17_13_obec Hodruša - Hámre');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (193, 17, '2', 'obec Banská Belá', 'banská belá', 'SK0322516627', '17_2_obec Banská Belá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (194, 17, '3', 'mesto Banská Štiavnica', 'banská štiavnica', 'SK0322516643', '17_3_mesto Banská Štiavnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (195, 17, '4', 'obec Ilija', 'ilija', 'SK0322516856', '17_4_obec Ilija');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (196, 17, '5', 'obec Močiar', 'močiar', 'SK0322517071', '17_5_obec Močiar');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (197, 17, '6', 'obec Počúvadlo', 'počúvadlo', 'SK0322517160', '17_6_obec Počúvadlo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (198, 17, '7', 'obec Podhorie', 'podhorie', 'SK0322517143', '17_7_obec Podhorie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (199, 17, '8', 'obec Prenčov', 'prenčov', 'SK0322517178', '17_8_obec Prenčov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (200, 17, '9', 'obec Štiavnické Bane', 'štiavnické bane', 'SK0322517283', '17_9_obec Štiavnické Bane');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (201, 18, '1', 'Obec Veľká Lomnica', 'veľká lomnica', 'SK0413524000', '18_1_Obec Veľká Lomnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (202, 18, '10', 'Obec Batizovce', 'batizovce', 'SK0416523402', '18_10_Obec Batizovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (203, 18, '11', 'Obec Mengusovce', 'mengusovce', 'SK0416523721', '18_11_Obec Mengusovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (204, 18, '12', 'Obec Gerlachov', 'gerlachov', 'SK0416523445', '18_12_Obec Gerlachov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (206, 18, '2', 'Obec Stará Lesná', 'stará lesná', 'SK0413523887', '18_2_Obec Stará Lesná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (207, 18, '3', 'Obec Mlynica', 'mlynica', 'SK0416523747', '18_3_Obec Mlynica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (208, 18, '4', 'Obec Veľký Slavkov', 'veľký slavkov', 'SK0416524018', '18_4_Obec Veľký Slavkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (209, 18, '5', 'Obec Nová Lesná', 'nová lesná', 'SK0416523763', '18_5_Obec Nová Lesná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (210, 18, '6', 'Obec Liptovská Teplička', 'liptovská teplička', 'SK0416523631', '18_6_Obec Liptovská Teplička');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (211, 18, '7', 'Obec Štôla', 'štôla', 'SK0416559890', '18_7_Obec Štôla');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (212, 18, '8', 'Obec Vernár', 'vernár', 'SK0416524026', '18_8_Obec Vernár');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (213, 18, '9', 'Obec Kravany', 'kravany', 'SK0416523593', '18_9_Obec Kravany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (214, 19, '1', 'Mesto Čadca', 'čadca', 'SK0312509132', '19_1_Mesto Čadca');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (215, 19, '10', 'Obec Korňa', 'korňa', 'SK0312509230', '19_10_Obec Korňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (216, 19, '11', 'Obec Olešná', 'olešná', 'SK0312509337', '19_11_Obec Olešná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (217, 19, '12', 'Obec Staškov', 'staškov', 'SK0312509485', '19_12_Obec Staškov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (218, 19, '13', 'Obec Podvysoká', 'podvysoká', 'SK0312509361', '19_13_Obec Podvysoká');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (219, 19, '14', 'Obec Zákopčie', 'zákopčie', 'SK0312509523', '19_14_Obec Zákopčie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (220, 19, '15', 'Mesto Krásno nad Kysucou', 'krásno nad kysucou', 'SK0312509248', '19_15_Mesto Krásno nad Kysucou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (221, 19, '16', 'Obec Svrčinovec', 'svrčinovec', 'SK0312509493', '19_16_Obec Svrčinovec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (222, 19, '17', 'Obec Dunajov', 'dunajov', 'SK0312509183', '19_17_Obec Dunajov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (223, 19, '2', 'Mesto Turzovka', 'turzovka', 'SK0312509507', '19_2_Mesto Turzovka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (224, 19, '3', 'Obec Makov', 'makov', 'SK0312509299', '19_3_Obec Makov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (225, 19, '4', 'Obec Oščadnica', 'oščadnica', 'SK0312509345', '19_4_Obec Oščadnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (226, 19, '5', 'Obec Skalité', 'skalité', 'SK0312509451', '19_5_Obec Skalité');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (227, 19, '6', 'Obec Vysoká nad Kysucou', 'vysoká nad kysucou', 'SK0312509515', '19_6_Obec Vysoká nad Kysucou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (228, 19, '7', 'Obec Raková', 'raková', 'SK0312509400', '19_7_Obec Raková');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (229, 19, '8', 'Obec Klokočov', 'klokočov', 'SK0312509213', '19_8_Obec Klokočov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (230, 19, '9', 'Obec Čierne', 'čierne', 'SK0312509159', '19_9_Obec Čierne');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (231, 20, '1', 'Mesto Piešťany', 'piešťany', 'SK0214507440', '20_1_Mesto Piešťany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (232, 20, '10', 'Obec Trebatice', 'trebatice', 'SK0214507679', '20_10_Obec Trebatice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (233, 20, '11', 'Obec Jalšové', 'jalšové', 'SK0213507130', '20_11_Obec Jalšové');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (234, 20, '12', 'Obec Rakovice', 'rakovice', 'SK0214507482', '20_12_Obec Rakovice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (235, 20, '13', 'Obec Krakovany', 'krakovany', 'SK0214507229', '20_13_Obec Krakovany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (236, 20, '14', 'Mesto Hlohovec', 'hlohovec', 'SK0213507032', '20_14_Mesto Hlohovec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (237, 20, '15', 'Obec Sokolovce', 'sokolovce', 'SK0214507563', '20_15_Obec Sokolovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (238, 20, '2', 'Obec Moravany nad Váhom', 'moravany nad váhom', 'SK0214507342', '20_2_Obec Moravany nad Váhom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (239, 20, '3', 'Obec Veľké Orvište', 'veľké orvište', 'SK0214556572', '20_3_Obec Veľké Orvište');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (240, 20, '4', 'Obec Ostrov', 'ostrov', 'SK0214507385', '20_4_Obec Ostrov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (241, 20, '5', 'Obec Banka', 'banka', 'SK0214581399', '20_5_Obec Banka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (242, 20, '6', 'Obec Ratnovce', 'ratnovce', 'SK0214507491', '20_6_Obec Ratnovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (243, 20, '7', 'Mesto Vrbové', 'vrbové', 'SK0214507750', '20_7_Mesto Vrbové');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (244, 20, '8', 'Obec Bašovce', 'bašovce', 'SK0214558354', '20_8_Obec Bašovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (245, 20, '9', 'Obec Drahovce', 'drahovce', 'SK0214506991', '20_9_Obec Drahovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (246, 21, '1', 'Mesto Liptovský Mikuláš', 'liptovský mikuláš', 'SK0315510262', '21_1_Mesto Liptovský Mikuláš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (247, 21, '10', 'Obec Liptovská Osada', 'liptovská osada', 'SK0318510637', '21_10_Obec Liptovská Osada');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (248, 21, '2', 'Mesto Liptovský Hrádok', 'liptovský hrádok', 'SK0315510726', '21_2_Mesto Liptovský Hrádok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (249, 21, '3', 'Mesto Ružomberok', 'ružomberok', 'SK0318510998', '21_3_Mesto Ružomberok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (250, 21, '4', 'Obec Bešeňová', 'bešeňová', 'SK0318510301', '21_4_Obec Bešeňová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (251, 21, '5', 'Obec Lúčky', 'lúčky', 'SK0318510815', '21_5_Obec Lúčky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (252, 21, '6', 'Obec Demänovská Dolina', 'demänovská dolina', 'SK0315510386', '21_6_Obec Demänovská Dolina');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (253, 21, '7', 'Obec Liptovský Ján', 'liptovský ján', 'SK0315510734', '21_7_Obec Liptovský Ján');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (254, 21, '8', 'Obec Liptovský Trnovec', 'liptovský trnovec', 'SK0315510777', '21_8_Obec Liptovský Trnovec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (255, 21, '9', 'Obec Pavčina Lehota', 'pavčina lehota', 'SK0315510912', '21_9_Obec Pavčina Lehota');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (256, 22, '1', 'mesto Lučenec', 'lučenec', 'SK0326511218', '22_1_mesto Lučenec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (257, 22, '10', 'obec Dolná Strehová', 'dolná strehová', 'SK032A515965', '22_10_obec Dolná Strehová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (258, 22, '11', 'obec Halič', 'halič', 'SK0326511421', '22_11_obec Halič');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (259, 22, '12', 'obec Málinec', 'málinec', 'SK0327511595', '22_12_obec Málinec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (260, 22, '13', 'obec Ratka', 'ratka', 'SK0326511811', '22_13_obec Ratka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (261, 22, '14', 'obec Ružiná', 'ružiná', 'SK0326511838', '22_14_obec Ružiná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (262, 22, '15', 'obec Šiatorská Bukovinka', 'šiatorská bukovinka', 'SK0326511862', '22_15_obec Šiatorská Bukovinka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (263, 22, '16', 'obec Tuhár', 'tuhár', 'SK0326511943', '22_16_obec Tuhár');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (264, 22, '17', 'obec Podrečany', 'podrečany', 'SK0326511749', '22_17_obec Podrečany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (265, 22, '18', 'obec Ľuboreč', 'ľuboreč', 'SK0326511561', '22_18_obec Ľuboreč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (266, 22, '19', 'obec Pleš', 'pleš', 'SK0326511722', '22_19_obec Pleš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (267, 22, '2', 'mesto Fiľakovo', 'fiľakovo', 'SK0326511391', '22_2_mesto Fiľakovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (268, 22, '20', 'obec Mučín', 'mučín', 'SK0326511625', '22_20_obec Mučín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (269, 22, '21', 'obec Mikušovce', 'mikušovce', 'SK0326580309', '22_21_obec Mikušovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (271, 22, '22', 'obec Píla', 'píla', 'SK0326511706', '22_22_obec Píla');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (272, 22, '23', 'obec Kokava nad Rimavicou', 'kokava nad rimavicou', 'SK0327511498', '22_23_obec Kokava nad Rimavicou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (273, 22, '24', 'obec Budiná', 'budiná', 'SK0326511277', '22_24_obec Budiná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (274, 22, '25', 'obec Lipovany', 'lipovany', 'SK0326511544', '22_25_obec Lipovany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (275, 22, '26', 'obec Dobroč', 'dobroč', 'SK0326511366', '22_26_obec Dobroč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (276, 22, '27', 'obec Látky', 'látky', 'SK0324511510', '22_27_obec Látky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (277, 22, '28', 'obec Polichno', 'polichno', 'SK0326511757', '22_28_obec Polichno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (278, 22, '29', 'obec Cinobaňa', 'cinobaňa', 'SK0327511315', '22_29_obec Cinobaňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (279, 22, '3', 'mesto Veľký Krtíš', 'veľký krtíš', 'SK032A515850', '22_3_mesto Veľký Krtíš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (280, 22, '30', 'obec Hradište', 'hradište', 'SK0327511447', '22_30_obec Hradište');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (281, 22, '31', 'obec Praha', 'praha', 'SK0326511773', '22_31_obec Praha');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (282, 22, '32', 'obec Radzovce', 'radzovce', 'SK0326511790', '22_32_obec Radzovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (283, 22, '33', 'obec Rapovce', 'rapovce', 'SK0326511803', '22_33_obec Rapovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (284, 22, '34', 'obec Trenč', 'trenč', 'SK0326557340', '22_34_obec Trenč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (285, 22, '35', 'obec Veľké Dravce', 'veľké dravce', 'SK0326512010', '22_35_obec Veľké Dravce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (286, 22, '36', 'obec Holiša', 'holiša', 'SK0326511439', '22_36_obec Holiša');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (287, 22, '37', 'obec Buzitka', 'buzitka', 'SK0326511293', '22_37_obec Buzitka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (288, 22, '38', 'obec Veľká Ves', 'veľká ves', 'SK0327512001', '22_38_obec Veľká Ves');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (289, 22, '39', 'obec Ozdín', 'ozdín', 'SK0327511684', '22_39_obec Ozdín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (290, 22, '4', 'mesto Hriňová', 'hriňová', 'SK0324518468', '22_4_mesto Hriňová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (291, 22, '40', 'obec Uhorské', 'uhorské', 'SK0327511978', '22_40_obec Uhorské');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (292, 22, '41', 'obec Mýtna', 'mýtna', 'SK0326511641', '22_41_obec Mýtna');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (293, 22, '42', 'obec Kotmanová', 'kotmanová', 'SK0326511374', '22_42_obec Kotmanová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (294, 22, '43', 'obec Točnica', 'točnica', 'SK0326511901', '22_43_obec Točnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (295, 22, '44', 'obec Veľká nad Ipľom', 'veľká nad ipľom', 'SK0326511994', '22_44_obec Veľká nad Ipľom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (296, 22, '45', 'obec České Brezovo', 'české brezovo', 'SK0327511340', '22_45_obec České Brezovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (297, 22, '46', 'obec Fiľakovské Kováče', 'fiľakovské kováče', 'SK0326511404', '22_46_obec Fiľakovské Kováče');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (298, 22, '47', 'obec Pinciná', 'pinciná', 'SK0326511714', '22_47_obec Pinciná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (299, 22, '48', 'obec Malé Straciny', 'malé straciny', 'SK032A558206', '22_48_obec Malé Straciny');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (300, 22, '49', 'obec Panické Dravce', 'panické dravce', 'SK0326511692', '22_49_obec Panické Dravce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (301, 22, '5', 'mesto Poltár', 'poltár', 'SK0327511765', '22_5_mesto Poltár');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (302, 22, '50', 'obec Kriváň', 'kriváň', 'SK0324518549', '22_50_obec Kriváň');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (303, 22, '51', 'obec Detvianska Huta', 'detvianska huta', 'SK0324518271', '22_51_obec Detvianska Huta');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (304, 22, '52', 'obec Klokoč', 'klokoč', 'SK0324518492', '22_52_obec Klokoč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (305, 22, '53', 'obec Korytárky', 'korytárky', 'SK0324580520', '22_53_obec Korytárky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (306, 22, '54', 'obec Veľká Čalomija', 'veľká čalomija', 'SK032A516465', '22_54_obec Veľká Čalomija');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (307, 22, '55', 'obec Veľké Zlievce', 'veľké zlievce', 'SK032A516490', '22_55_obec Veľké Zlievce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (308, 22, '56', 'obec Ábelová', 'ábelová', 'SK0326511226', '22_56_obec Ábelová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (309, 22, '57', 'Obec Vígľaš', 'vígľaš', 'SK0324518921', '22_57_Obec Vígľaš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (310, 22, '58', 'Obec Bušince', 'bušince', 'SK032A515892', '22_58_Obec Bušince');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (311, 22, '59', 'Obec Stožok', 'stožok', 'SK0324518824', '22_59_Obec Stožok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (312, 22, '6', 'mesto Detva', 'detva', 'SK0324518263', '22_6_mesto Detva');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (313, 22, '7', 'obec Čakanovce', 'čakanovce', 'SK0326511323', '22_7_obec Čakanovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (314, 22, '8', 'obec Prša', 'prša', 'SK0326511781', '22_8_obec Prša');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (315, 22, '9', 'obec Divín', 'divín', 'SK0326511358', '22_9_obec Divín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (316, 23, '1', 'Mesto Dolný Kubín', 'dolný kubín', 'SK0313509540', '23_1_Mesto Dolný Kubín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (317, 23, '10', 'Obec Mútne', 'mútne', 'SK0317509850', '23_10_Obec Mútne');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (318, 23, '11', 'Obec Oravská Polhora', 'oravská polhora', 'SK0317509914', '23_11_Obec Oravská Polhora');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (319, 23, '12', 'Obec Oravská Lesná', 'oravská lesná', 'SK0317509906', '23_12_Obec Oravská Lesná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (320, 23, '13', 'Obec Štefanov nad Oravou', 'štefanov nad oravou', 'SK031A510084', '23_13_Obec Štefanov nad Oravou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (321, 23, '14', 'Obec Klin', 'klin', 'SK0317509728', '23_14_Obec Klin');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (322, 23, '15', 'Obec Zubrohlava', 'zubrohlava', 'SK0317510246', '23_15_Obec Zubrohlava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (323, 23, '16', 'Obec Bobrov', 'bobrov', 'SK0317509582', '23_16_Obec Bobrov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (324, 23, '17', 'Obec Brezovica', 'brezovica', 'SK031A509604', '23_17_Obec Brezovica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (325, 23, '2', 'Mesto Námestovo', 'námestovo', 'SK0317509868', '23_2_Mesto Námestovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (326, 23, '3', 'Mesto Trstená', 'trstená', 'SK031A510106', '23_3_Mesto Trstená');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (327, 23, '4', 'Obec Habovka', 'habovka', 'SK031A509655', '23_4_Obec Habovka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (328, 23, '5', 'Obec Zuberec', 'zuberec', 'SK031A510238', '23_5_Obec Zuberec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (329, 23, '6', 'Obec Párnica', 'párnica', 'SK0313509973', '23_6_Obec Párnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (330, 23, '7', 'Obec Zázrivá', 'zázrivá', 'SK0313510211', '23_7_Obec Zázrivá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (331, 23, '8', 'Obec Hruštín', 'hruštín', 'SK0317509680', '23_8_Obec Hruštín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (332, 23, '9', 'Obec Oravský Biely Potok', 'oravský biely potok', 'SK031A509949', '23_9_Obec Oravský Biely Potok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (333, 24, '1', 'Mesto Kežmarok', 'kežmarok', 'SK0413523585', '24_1_Mesto Kežmarok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (334, 24, '10', 'Obec Vrbov', 'vrbov', 'SK0413524077', '24_10_Obec Vrbov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (335, 24, '11', 'Obec Ždiar', 'ždiar', 'SK0416524131', '24_11_Obec Ždiar');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (336, 24, '12', 'Obec Malý Slavkov', 'malý slavkov', 'SK0413581241', '24_12_Obec Malý Slavkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (337, 24, '2', 'Mesto Levoča', 'levoča', 'SK0414543292', '24_2_Mesto Levoča');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (338, 24, '3', 'Mesto Spišská Belá', 'spišská belá', 'SK0413523828', '24_3_Mesto Spišská Belá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (339, 24, '4', 'Mesto Spišské Podhradie', 'spišské podhradie', 'SK0414543578', '24_4_Mesto Spišské Podhradie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (340, 24, '5', 'Obec Červený Kláštor', 'červený kláštor', 'SK0413523429', '24_5_Obec Červený Kláštor');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (341, 24, '6', 'Obec Malá Franková', 'malá franková', 'SK0413559938', '24_6_Obec Malá Franková');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (342, 24, '7', 'Obec Osturňa', 'osturňa', 'SK0413523771', '24_7_Obec Osturňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (343, 24, '8', 'Obec Spišské Hanušovce', 'spišské hanušovce', 'SK0413523861', '24_8_Obec Spišské Hanušovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (344, 24, '9', 'Obec Veľká Franková', 'veľká franková', 'SK0413523992', '24_9_Obec Veľká Franková');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (345, 25, '1', 'mesto Bojnice', 'bojnice', 'SK0227513903', '25_1_mesto Bojnice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (346, 25, '2', 'mesto Prievidza', 'prievidza', 'SK0227513881', '25_2_mesto Prievidza');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (347, 25, '3', 'obec Sebedražie', 'sebedražie', 'SK0227514373', '25_3_obec Sebedražie');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (348, 25, '4', 'obec Lehota pod Vtáčnikom', 'lehota pod vtáčnikom', 'SK0227514136', '25_4_obec Lehota pod Vtáčnikom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (349, 25, '5', 'obec Nitrianske Rudno', 'nitrianske rudno', 'SK0227514233', '25_5_obec Nitrianske Rudno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (350, 25, '6', 'mesto Handlová', 'handlová', 'SK0227513997', '25_6_mesto Handlová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (351, 26, '1', 'Mesto Senec', 'senec', 'SK0108508217', '26_1_Mesto Senec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (352, 26, '10', 'Obec Nová Dedinka', 'nová dedinka', 'SK0108508136', '26_10_Obec Nová Dedinka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (353, 26, '2', 'Obec Hrubá Borša', 'hrubá borša', 'SK0108503797', '26_2_Obec Hrubá Borša');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (354, 26, '3', 'Obec Hrubý Šúr', 'hrubý šúr', 'SK0108503801', '26_3_Obec Hrubý Šúr');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (355, 26, '4', 'Obec Kaplna', 'kaplna', 'SK0108555495', '26_4_Obec Kaplna');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (356, 26, '5', 'Obec Kráľová pri Senci', 'kráľová pri senci', 'SK0108503894', '26_5_Obec Kráľová pri Senci');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (357, 26, '6', 'Obec Ivanka pri Dunaji', 'ivanka pri dunaji', 'SK0108507938', '26_6_Obec Ivanka pri Dunaji');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (358, 26, '7', 'Obec Veľký Biel', 'veľký biel', 'SK0108508292', '26_7_Obec Veľký Biel');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (359, 26, '8', 'Obec Bernolákovo', 'bernolákovo', 'SK0108507814', '26_8_Obec Bernolákovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (360, 26, '9', 'Obec Igram', 'igram', 'SK0108555487', '26_9_Obec Igram');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (361, 27, '1', 'Mesto Senica', 'senica', 'SK0215504203', '27_1_Mesto Senica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (362, 27, '10', 'Obec Kopčany', 'kopčany', 'SK0216504459', '27_10_Obec Kopčany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (363, 27, '11', 'Obec Lozorno', 'lozorno', 'SK0106508055', '27_11_Obec Lozorno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (364, 27, '12', 'Obec Šajdíkove Humence', 'šajdíkove humence', 'SK0215504882', '27_12_Obec Šajdíkove Humence');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (365, 27, '13', 'Obec Radošovce', 'radošovce', 'SK0216504742', '27_13_Obec Radošovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (367, 27, '14', 'Obec Rohožník', 'rohožník', 'SK0106504769', '27_14_Obec Rohožník');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (368, 27, '15', 'Obec Sobotište', 'sobotište', 'SK0215504840', '27_15_Obec Sobotište');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (369, 27, '16', 'Mesto Brezová pod Bradlom', 'brezová pod bradlom', 'SK0223504262', '27_16_Mesto Brezová pod Bradlom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (370, 27, '17', 'Obec Častkov', 'častkov', 'SK0215504327', '27_17_Obec Častkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (371, 27, '2', 'Mesto Skalica', 'skalica', 'SK0216504815', '27_2_Mesto Skalica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (372, 27, '3', 'Mesto Holíč', 'holíč', 'SK0216504378', '27_3_Mesto Holíč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (373, 27, '4', 'Mesto Šaštín –Stráže', 'šaštín-stráže', 'SK0215504891', '27_4_Mesto Šaštín –Stráže');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (374, 27, '5', 'Mesto Stupava', 'stupava', 'SK0106508233', '27_5_Mesto Stupava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (375, 27, '6', 'Obec Smrdáky', 'smrdáky', 'SK0215504831', '27_6_Obec Smrdáky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (376, 27, '7', 'Obec Kuchyňa', 'kuchyňa', 'SK0106508021', '27_7_Obec Kuchyňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (377, 27, '8', 'Obec Podbranč', 'podbranč', 'SK0215504653', '27_8_Obec Podbranč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (378, 27, '9', 'Obec Hlboké', 'hlboké', 'SK0215504360', '27_9_Obec Hlboké');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (379, 28, '1', 'Mesto Komárno', 'komárno', 'SK0231501026', '28_1_Mesto Komárno');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (380, 28, '2', 'Obec Patince', 'patince', 'SK0231501310', '28_2_Obec Patince');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (381, 28, '3', 'Obec Moča', 'moča', 'SK0231501255', '28_3_Obec Moča');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (382, 28, '4', 'Obec Kravany nad Dunajom', 'kravany nad dunajom', 'SK0231501212', '28_4_Obec Kravany nad Dunajom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (383, 28, '5', 'Obec Iža', 'iža', 'SK0231501174', '28_5_Obec Iža');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (384, 28, '6', 'Obec Svodín', 'svodín', 'SK0234503568', '28_6_Obec Svodín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (385, 28, '7', 'Mesto Nové Zámky', 'nové zámky', 'SK0234503011', '28_7_Mesto Nové Zámky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (386, 29, '1', 'mesto Trenčín,', 'trenčín', 'SK0229505820', '29_1_mesto Trenčín,');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (387, 29, '2', 'obec Beckov,', 'beckov', 'SK0224505846', '29_2_obec Beckov,');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (388, 29, '3', 'obec Kálnica,', 'kálnica', 'SK0224506109', '29_3_obec Kálnica,');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (389, 29, '4', 'obec Čachtice,', 'čachtice', 'SK0224505901', '29_4_obec Čachtice,');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (390, 29, '5', 'obec Modrovka,', 'modrovka', 'SK0224506257', '29_5_obec Modrovka,');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (391, 30, '1', 'Mesto Modra', 'modra', 'SK0107508101', '30_1_Mesto Modra');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (392, 30, '10', 'Obec Limbach', 'limbach', 'SK0107508047', '30_10_Obec Limbach');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (393, 30, '2', 'Mesto Svätý Jur', 'svätý jur', 'SK0107507989', '30_2_Mesto Svätý Jur');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (394, 30, '3', 'Mesto Pezinok', 'pezinok', 'SK0107508179', '30_3_Mesto Pezinok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (395, 30, '4', 'Obec Dubová', 'dubová', 'SK0107507881', '30_4_Obec Dubová');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (396, 30, '5', 'Obec Píla', 'píla', 'SK0107508187', '30_5_Obec Píla');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (397, 30, '6', 'Obec Vinosady', 'vinosady', 'SK0107508314', '30_6_Obec Vinosady');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (398, 30, '7', 'Obec Budmerice', 'budmerice', 'SK0107507849', '30_7_Obec Budmerice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (399, 30, '8', 'Obec Slovenský Grob', 'slovenský grob', 'SK0107508225', '30_8_Obec Slovenský Grob');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (400, 30, '9', 'Obec Šenkvice', 'šenkvice', 'SK0107508250', '30_9_Obec Šenkvice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (401, 31, '1', 'Mesto Spišská Nová Ves', 'spišská nová ves', 'SK042A526355', '31_1_Mesto Spišská Nová Ves');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (402, 31, '10', 'Obec Spišské Tomášovce', 'spišské tomášovce', 'SK042A543586', '31_10_Obec Spišské Tomášovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (403, 31, '11', 'Obec Hrabušice', 'hrabušice', 'SK042A526592', '31_11_Obec Hrabušice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (404, 31, '12', 'Obec Matejovce nad Hornádom', 'matejovce nad hornádom', 'SK042A543349', '31_12_Obec Matejovce nad Hornádom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (405, 31, '2', 'Mesto Gelnica', 'gelnica', 'SK0421526509', '31_2_Mesto Gelnica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (406, 31, '3', 'Obec Markušovce', 'markušovce', 'SK042A543331', '31_3_Obec Markušovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (407, 31, '4', 'Obec Poráč', 'poráč', 'SK042A543489', '31_4_Obec Poráč');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (408, 31, '5', 'Obec Spišský Hrušov', 'spišský hrušov', 'SK042A543616', '31_5_Obec Spišský Hrušov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (409, 31, '6', 'Obec Letanovce', 'letanovce', 'SK042A543284', '31_6_Obec Letanovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (410, 31, '7', 'Obec Stratená', 'stratená', 'SK0428526291', '31_7_Obec Stratená');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (411, 31, '8', 'Obec Smižany', 'smižany', 'SK042A560154', '31_8_Obec Smižany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (412, 31, '9', 'Mesto Dobšiná', 'dobšiná', 'SK0428525634', '31_9_Mesto Dobšiná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (413, 32, '1', 'Mesto Levice', 'levice', 'SK0232502031', '32_1_Mesto Levice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (414, 32, '10', 'Obec Bohunice', 'bohunice', 'SK0232580937', '32_10_Obec Bohunice');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (415, 32, '11', 'Obec Žemberovce', 'žemberovce', 'SK0232502995', '32_11_Obec Žemberovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (416, 32, '12', 'Obec Podhájska', 'podhájska', 'SK0234503479', '32_12_Obec Podhájska');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (417, 32, '13', 'Obec Čaka', 'čaka', 'SK0232502120', '32_13_Obec Čaka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (418, 32, '14', 'Obec Tekovské Lužany', 'tekovské lužany', 'SK0232502821', '32_14_Obec Tekovské Lužany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (419, 32, '15', 'Obec Plavé Vozokany', 'plavé vozokany', 'SK0232502651', '32_15_Obec Plavé Vozokany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (420, 32, '16', 'Obec Málaš', 'málaš', 'SK0232502511', '32_16_Obec Málaš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (421, 32, '17', 'Obec Bajka', 'bajka', 'SK0232502049', '32_17_Obec Bajka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (422, 32, '18', 'Obec Beša', 'beša', 'SK0232502065', '32_18_Obec Beša');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (423, 32, '19', 'Obec Dolný Pial', 'dolný pial', 'SK0232502197', '32_19_Obec Dolný Pial');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (424, 32, '2', 'Mesto Želiezovce', 'želiezovce', 'SK0232502987', '32_2_Mesto Želiezovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (425, 32, '20', 'Obec Horný Pial', 'horný pial', 'SK0232502294', '32_20_Obec Horný Pial');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (426, 32, '21', 'Obec Lok', 'lok', 'SK0232502481', '32_21_Obec Lok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (427, 32, '22', 'Obec Lula', 'lula', 'SK0232502502', '32_22_Obec Lula');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (428, 32, '23', 'Obec Ondrejovce', 'ondrejovce', 'SK0232502618', '32_23_Obec Ondrejovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (429, 32, '24', 'Obec Tehla', 'tehla', 'SK0232502812', '32_24_Obec Tehla');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (430, 32, '25', 'Obec Tekovský Hrádok', 'tekovský hrádok', 'SK0232502847', '32_25_Obec Tekovský Hrádok');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (431, 32, '26', 'Obec Veľký Ďúr', 'veľký ďur', 'SK0232502936', '32_26_Obec Veľký Ďúr');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (432, 32, '27', 'Obec Farná', 'farná', 'SK0232502227', '32_27_Obec Farná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (433, 32, '28', 'Obec Brhlovce', 'brhlovce', 'SK0232502103', '32_28_Obec Brhlovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (434, 32, '3', 'Obec Kalná nad Hronom', 'kalná nad hronom', 'SK0232502413', '32_3_Obec Kalná nad Hronom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (435, 32, '4', 'Obec Pukanec', 'pukanec', 'SK0232502693', '32_4_Obec Pukanec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (436, 32, '5', 'Obec Bátovce', 'bátovce', 'SK0232502057', '32_5_Obec Bátovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (437, 32, '6', 'Obec Santovka', 'santovka', 'SK0232502715', '32_6_Obec Santovka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (438, 32, '7', 'Obec Jur nad Hronom', 'jur nad hronom', 'SK0232502391', '32_7_Obec Jur nad Hronom');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (439, 32, '8', 'Obec Čajkov', 'čajkov', 'SK0232502111', '32_8_Obec Čajkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (440, 32, '9', 'Obec Rybník', 'rybník', 'SK0232502707', '32_9_Obec Rybník');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (441, 33, '1', 'Mesto Hnúšťa', 'hnúšťa', 'SK0329514829', '33_1_Mesto Hnúšťa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (442, 33, '10', 'Obec Rákoš', 'rákoš', 'SK0328526118', '33_10_Obec Rákoš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (443, 33, '11', 'Obec Drienčany', 'drienčany', 'SK0329514659', '33_11_Obec Drienčany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (444, 33, '12', 'Mesto Tisovec', 'tisovec', 'SK0329515680', '33_12_Mesto Tisovec');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (445, 33, '13', 'Obec Rimavská Baňa', 'rimavská baňa', 'SK0329515426', '33_13_Obec Rimavská Baňa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (446, 33, '14', 'Obec Sirk', 'sirk', 'SK0328526258', '33_14_Obec Sirk');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (447, 33, '15', 'Obec Veľké Teriakovce', 'veľké teriakovce', 'SK0329515736', '33_15_Obec Veľké Teriakovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (448, 33, '16', 'Obec Nižná Slaná', 'nižná slaná', 'SK0428526045', '33_16_Obec Nižná Slaná');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (449, 33, '2', 'Mesto Jelšava', 'jelšava', 'SK0328525791', '33_2_Mesto Jelšava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (450, 33, '3', 'Mesto Revúca', 'revúca', 'SK0328526142', '33_3_Mesto Revúca');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (451, 33, '4', 'Mesto Rožňava', 'rožňava', 'SK0428525529', '33_4_Mesto Rožňava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (452, 33, '5', 'Mesto Tornaľa', 'tornaľa', 'SK0328515612', '33_5_Mesto Tornaľa');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (453, 33, '6', 'Obec Jesenské', 'jesenské', 'SK0329515001', '33_6_Obec Jesenské');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (454, 33, '7', 'Obec Muráň', 'muráň', 'SK0328525987', '33_7_Obec Muráň');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (455, 33, '8', 'Obec Muránska Huta', 'muránska huta', 'SK0328526002', '33_8_Obec Muránska Huta');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (456, 33, '9', 'Obec Betliar', 'betliar', 'SK0428525545', '33_9_Obec Betliar');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (457, 34, '1', 'Mesto Lipany', 'lipany', 'SK0418524778', '34_1_Mesto Lipany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (458, 34, '2', 'Mesto Prešov', 'prešov', 'SK0417524140', '34_2_Mesto Prešov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (459, 34, '3', 'Mesto Sabinov', 'sabinov', 'SK0418525146', '34_3_Mesto Sabinov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (460, 34, '4', 'Mesto Veľký Šariš', 'veľký šariš', 'SK0417525405', '34_4_Mesto Veľký Šariš');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (461, 34, '5', 'Obec Drienica', 'drienica', 'SK0418524344', '34_5_Obec Drienica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (462, 34, '6', 'Obec Nižný Slavkov', 'nižný slavkov', 'SK0418524921', '34_6_Obec Nižný Slavkov');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (463, 34, '7', 'Mesto Hanušovce nad Topľou', 'hanušovce nad topľou', 'SK041D544213', '34_7_Mesto Hanušovce nad Topľou');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (464, 34, '8', 'Obec Ruská Nová Ves', 'ruská nová ves', 'SK0417525138', '34_8_Obec Ruská Nová Ves');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (465, 35, '1', 'Mesto Dunajská Streda', 'dunajská streda', 'SK0211501433', '35_1_Mesto Dunajská Streda');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (466, 35, '2', 'Mesto Šamorín', 'šamorín', 'SK0211501905', '35_2_Mesto Šamorín');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (467, 35, '3', 'Mesto Veľký Meder', 'veľký meder', 'SK0211501522', '35_3_Mesto Veľký Meder');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (468, 35, '4', 'Mesto Gabčíkovo', 'gabčíkovo', 'SK0211501573', '35_4_Mesto Gabčíkovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (469, 35, '5', 'Obec Kyselica', 'kyselica', 'SK0211580597', '35_5_Obec Kyselica');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (470, 35, '6', 'Obec Orechová Potôň', 'orechová potôň', 'SK0211501859', '35_6_Obec Orechová Potôň');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (471, 35, '7', 'Obec Malé Dvorníky', 'malé dvorníky', 'SK0211555665', '35_7_Obec Malé Dvorníky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (472, 35, '8', 'Obec Vrakúň', 'vrakúň', 'SK0211502006', '35_8_Obec Vrakúň');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (473, 35, '9', 'Obec Potônske Lúky', 'potônske lúky', 'SK0211582522', '35_9_Obec Potônske Lúky');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (474, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0105529494', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (475, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529397', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (476, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0103529354', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (477, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0102529338', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (478, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0102529320', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (479, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0103529346', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (480, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0101528595', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (481, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0103529362', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (482, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0105529443', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (483, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529389', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (484, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529371', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (485, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529427', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (486, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529419', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (487, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0104529401', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (488, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0102529311', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (489, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0105529460', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (490, 36, '1', 'Hlavné mesto SR Bratislava', 'bratislava', 'SK0105529435', '36_1_Hlavné mesto SR Bratislava');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (491, 37, '1', 'Mesto Štúrovo', 'štúrovo', 'SK0234503584', '37_1_Mesto Štúrovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (492, 37, '2', 'Obec Belá', 'belá', 'SK0234503061', '37_2_Obec Belá');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (493, 37, '3', 'Obec Chľaba', 'chľaba', 'SK0234503207', '37_3_Obec Chľaba');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (494, 38, '1', 'Mesto Galanta', 'galanta', 'SK0212503665', '38_1_Mesto Galanta');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (495, 38, '10', 'Obec Veľký Grob', 'veľký grob', 'SK0212504149', '38_10_Obec Veľký Grob');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (496, 38, '11', 'Obec Malá Mača', 'malá mača', 'SK0212582638', '38_11_Obec Malá Mača');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (497, 38, '12', 'Obec Veľké Úľany', 'veľké úľany', 'SK0212504131', '38_12_Obec Veľké Úľany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (498, 38, '13', 'Obec Jelka', 'jelka', 'SK0212503835', '38_13_Obec Jelka');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (499, 38, '14', 'Obec Veľká Mača', 'veľká mača', 'SK0212504122', '38_14_Obec Veľká Mača');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (500, 38, '15', 'Obec Čierna Voda', 'čierna voda', 'SK0212503690', '38_15_Obec Čierna Voda');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (501, 38, '16', 'Obec Diakovce', 'diakovce', 'SK0235503711', '38_16_Obec Diakovce');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (502, 38, '17', 'Obec Čierny Brod', 'čierny brod', 'SK0212503703', '38_17_Obec Čierny Brod');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (503, 38, '2', 'Obec Tomášikovo', 'tomášikovo', 'SK0212504076', '38_2_Obec Tomášikovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (504, 38, '3', 'Obec Horné Saliby', 'horné saliby', 'SK0212503771', '38_3_Obec Horné Saliby');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (505, 38, '4', 'Obec Vozokany', 'vozokany', 'SK0212504173', '38_4_Obec Vozokany');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (506, 38, '5', 'Obec Matúškovo', 'matúškovo', 'SK0212555754', '38_5_Obec Matúškovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (507, 38, '6', 'Mesto Sládkovičovo', 'sládkovičovo', 'SK0212504017', '38_6_Mesto Sládkovičovo');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (508, 38, '7', 'Obec Dolná Streda', 'dolná streda', 'SK0212555789', '38_7_Obec Dolná Streda');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (509, 38, '8', 'Obec Košúty', 'košúty', 'SK0212503860', '38_8_Obec Košúty');
INSERT INTO gtlab.sk_dmo_boundaries_susr_codes VALUES (510, 38, '9', 'Obec Mostová', 'mostová', 'SK0212503924', '38_9_Obec Mostová');


--
-- TOC entry 8494 (class 2606 OID 3083482)
-- Name: sk_dmo_boundaries_susr_codes sk_dmo_boundaries_susr_codes_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.sk_dmo_boundaries_susr_codes
    ADD CONSTRAINT sk_dmo_boundaries_susr_codes_pkey PRIMARY KEY ("Kód_obce");


--
-- TOC entry 8492 (class 1259 OID 3063210)
-- Name: ix_gtlab_sk_dmo_boundaries_susr_codes_index; Type: INDEX; Schema: gtlab; Owner: postgres
--

CREATE INDEX ix_gtlab_sk_dmo_boundaries_susr_codes_index ON gtlab.sk_dmo_boundaries_susr_codes USING btree (index);


--
-- TOC entry 8497 (class 2606 OID 3083457)
-- Name: sk_dmo_boundaries_susr_codes fk_sk_dmo_boundaries_susr_codes_with_sk_dmo; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.sk_dmo_boundaries_susr_codes
    ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_dmo FOREIGN KEY (dmo_id) REFERENCES gtlab.sk_dmos_raw(dmo_id);


--
-- TOC entry 8495 (class 2606 OID 3083476)
-- Name: sk_dmo_boundaries_susr_codes fk_sk_dmo_boundaries_susr_codes_with_sk_dmo_members; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.sk_dmo_boundaries_susr_codes
    ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_dmo_members FOREIGN KEY (dmo_member_id) REFERENCES gtlab.sk_dmo_members_raw(dmo_member_id);


--
-- TOC entry 8496 (class 2606 OID 3083464)
-- Name: sk_dmo_boundaries_susr_codes fk_sk_dmo_boundaries_susr_codes_with_sk_municipalities_gku; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.sk_dmo_boundaries_susr_codes
    ADD CONSTRAINT fk_sk_dmo_boundaries_susr_codes_with_sk_municipalities_gku FOREIGN KEY ("Kód_obce") REFERENCES gtlab.sk_municipalities_gku("Kód_obce");


-- Completed on 2024-08-19 10:51:09

--
-- PostgreSQL database dump complete
--

