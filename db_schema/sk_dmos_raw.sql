--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:47:24

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
-- TOC entry 1516 (class 1259 OID 3079599)
-- Name: sk_dmos_raw; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.sk_dmos_raw (
    level_0 bigint,
    index bigint,
    dmo_id bigint NOT NULL,
    dmo_name text,
    dmo_pdf text,
    dmo_source text,
    source_pdf_name text,
    source_last_update_ym_int text,
    dmo_cin text
);


ALTER TABLE gtlab.sk_dmos_raw OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3079599)
-- Dependencies: 1516
-- Data for Name: sk_dmos_raw; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.sk_dmos_raw VALUES (0, 0, 0, 'OOCR Región Vysoké Tatry ', '0_OOCR_Región_Vysoké_Tatry.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-vysoke-tatry-pdf-395-kb-1642', '"Register Region Vysok_ Tatry_februar_2024.pdf"; filename*=utf-8''''Register%20Region%20Vysok%C3%A9%20Tatry_februar_2024.pdf', '2024-2', '42234077');
INSERT INTO gtlab.sk_dmos_raw VALUES (1, 0, 1, 'OOCR SEVERNÝ SPIŠ - PIENINY ', '1_OOCR_SEVERNÝ_SPIŠ_-_PIENINY.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-severny-spis-pieniny-pdf-539-kb', '"Register Severny Spis - Pieniny_januar_2023.pdf"', '2023-1', '42234182');
INSERT INTO gtlab.sk_dmos_raw VALUES (2, 0, 2, 'OOCR Visit Košice  ', '2_OOCR_Visit_Košice.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-kosice-turizmus-pdf-377-kb', '"Register_zmena_Visit_Kosice_februar_2024.pdf"', '2024-2', '42247632');
INSERT INTO gtlab.sk_dmos_raw VALUES (3, 0, 3, 'OOCR SLNEČNÝ HONT ', '3_OOCR_SLNEČNÝ_HONT.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-dudince-pdf-367-kb', '"Register Dudince marec_2024.pdf"', '2024-3', '42199212');
INSERT INTO gtlab.sk_dmos_raw VALUES (4, 0, 4, 'OOCR REGIÓN HOREHRONIE ', '4_OOCR_REGIÓN_HOREHRONIE.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-nizke-tatry-juh-pdf-533-kb', '"Register_zmena_REGION_HOREHRONIE_februar_2024.pdf"', '2024-2', '42299381');
INSERT INTO gtlab.sk_dmos_raw VALUES (5, 0, 5, 'OOCR „ŠARIŠ“ – BARDEJOV ', '5_OOCR_„ŠARIŠ“_–_BARDEJOV.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-saris-bardejov-pdf-288-kb', '"Register Region Saris Bardejov_februar_2024.pdf"', '2024-2', '42238714');
INSERT INTO gtlab.sk_dmos_raw VALUES (6, 0, 6, 'OOCR Región Gron ', '6_OOCR_Región_Gron.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-gron-pdf-442-kb', '"Register_zmena_marec_2024.pdf"', '2024-3', '42304482');
INSERT INTO gtlab.sk_dmos_raw VALUES (7, 0, 7, 'OOCR Trenčianske Teplice ', '7_OOCR_Trenčianske_Teplice.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-trencianske-teplice-pdf-323-kb', '"Zmena Trencianske_Teplice_marec_2024.pdf"', '2024-3', '42274885');
INSERT INTO gtlab.sk_dmos_raw VALUES (8, 0, 8, 'OOCR Región Horné Považie ', '8_OOCR_Región_Horné_Považie.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-horne-povazie-pdf-532-kb', '"Register Region Horne Povazie_februar_2024.pdf"', '2024-2', '42274818');
INSERT INTO gtlab.sk_dmos_raw VALUES (9, 0, 9, 'OOCR Trnava Tourism ', '9_OOCR_Trnava_Tourism.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-trnava-tourism-pdf-496-kb', '"Register Trnava Tourism_februar_2024.pdf"', '2024-2', '42288924');
INSERT INTO gtlab.sk_dmos_raw VALUES (10, 0, 10, 'OOCR Rajecká dolina ', '10_OOCR_Rajecká_dolina.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-rajecka-dolina-pdf-363-kb', '"Register  Rajecka dolina januar_2024.pdf"', '2024-1', '42219281');
INSERT INTO gtlab.sk_dmos_raw VALUES (11, 0, 11, 'OOCR Horný Zemplín ', '11_OOCR_Horný_Zemplín.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-horny-zemplin-a-horny-saris-pdf-602-kb-1654', '"Register Horny Zemplin_marec_2024.pdf"', '2024-3', '42234531');
INSERT INTO gtlab.sk_dmos_raw VALUES (12, 0, 12, 'OOCR Turiec ', '12_OOCR_Turiec.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-turiec-kremnicko-pdf-365-kb', '"Register_TURIEC_februar_2024.pdf"', '2024-2', '42220360');
INSERT INTO gtlab.sk_dmos_raw VALUES (13, 0, 13, 'Nitrianska OCR ', '13_Nitrianska_OCR.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/nitrianska-ocr-pdf-591-kb', '"Register Nitra_marec2_2024.pdf"', '2024-3', '42209005');
INSERT INTO gtlab.sk_dmos_raw VALUES (14, 0, 14, 'Zemplínska OOCR ', '14_Zemplínska_OOCR.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/zemplinska-oocr-pdf-536-kb', '"Register ZOOCR zmena februar_2024.pdf"', '2024-2', '42247748');
INSERT INTO gtlab.sk_dmos_raw VALUES (15, 0, 15, 'OOCR Stredné Slovensko ', '15_OOCR_Stredné_Slovensko.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-stredne-slovensko-pdf-564-kb', '"Register Stredne Slovensko februar_2024.pdf"', '2024-2', '42299268');
INSERT INTO gtlab.sk_dmos_raw VALUES (16, 0, 16, 'OOCR Malá Fatra ', '16_OOCR_Malá_Fatra.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-mala-fatra-pdf-387-kb', '"Register Mala Fatra_april_2024.pdf"', '2024-4', '42219574');
INSERT INTO gtlab.sk_dmos_raw VALUES (17, 0, 17, 'OOCR Región Banská Štiavnica ', '17_OOCR_Región_Banská_Štiavnica.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-banska-stiavnica-pdf-575-kb-1660', '"Register Region Stiavnica_marec2_2024.pdf"', '2024-3', '42197813');
INSERT INTO gtlab.sk_dmos_raw VALUES (18, 0, 18, 'OOCR Vysoké Tatry - Podhorie ', '18_OOCR_Vysoké_Tatry_-_Podhorie.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-vysoke-tatry-podhorie-pdf-355-kb', '"Zmena Vysoke Tatry - Podhorie februar_2024.pdf"', '2024-2', '42234573');
INSERT INTO gtlab.sk_dmos_raw VALUES (19, 0, 19, 'OCR Kysuce ', '19_OCR_Kysuce.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-kysuce-pdf-537-kb', '"Zmena Register Kysuce _april_2024.pdf"', '2024-4', '42220009');
INSERT INTO gtlab.sk_dmos_raw VALUES (20, 0, 20, 'OOCR REZORT PIEŠŤANY ', '20_OOCR_REZORT_PIEŠŤANY.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-rezort-piestany-pdf-327-kb-1665', '"Register Rezort Piestany_februar_2024.pdf"', '2024-2', '42288916');
INSERT INTO gtlab.sk_dmos_raw VALUES (21, 0, 21, 'OOCR REGION LIPTOV ', '21_OOCR_REGION_LIPTOV.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-liptov-pdf-370-kb', '"Register Region Liptov april_2024.pdf"', '2024-4', '42219906');
INSERT INTO gtlab.sk_dmos_raw VALUES (22, 0, 22, 'OOCR TURISTICKÝ NOVOHRAD A PODPOĽANIE ', '22_OOCR_TURISTICKÝ_NOVOHRAD_A_PODPOĽANIE.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-turisticky-novohrad-a-podpolanie-pdf-413-kb', '"Register Turisticky Novohrad a Podpolanie februar_2024.pdf"', '2024-2', '42199425');
INSERT INTO gtlab.sk_dmos_raw VALUES (23, 0, 23, 'OOCR Klaster Orava ', '23_OOCR_Klaster_Orava.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-klaster-orava-pdf-369-kb', '"Zmena_Register Klaster Orava februar_2024.pdf"', '2024-2', '42219701');
INSERT INTO gtlab.sk_dmos_raw VALUES (24, 0, 24, 'OOCR TATRY - SPIŠ - PIENINY ', '24_OOCR_TATRY_-_SPIŠ_-_PIENINY.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-tatry-spis-pieniny-pdf-495-kb', '"Register Tatry Spis Pieniny marec_2024.pdf"', '2024-3', '42234565');
INSERT INTO gtlab.sk_dmos_raw VALUES (25, 0, 25, 'OOCR Región Horná Nitra-Bojnice ', '25_OOCR_Región_Horná_Nitra-Bojnice.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-horna-nitra-bojnice-pdf-362-kb', '"Register zmena_marec_2024_RHNB.pdf"', '2024-3', '42274770');
INSERT INTO gtlab.sk_dmos_raw VALUES (26, 0, 26, 'OOCR Región Senec', '26_OOCR_Región_Senec.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-senec', '"Register_zmena_ Region_Senec februar_2024.pdf"', '2024-2', '42260337');
INSERT INTO gtlab.sk_dmos_raw VALUES (27, 0, 27, 'OOCR Záhorie a Kopanice', '27_OOCR_Záhorie_a_Kopanice.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-zahorie', '"Register_Zmena_Zahorie_APRIL_2024.pdf"', '2024-4', '42292174');
INSERT INTO gtlab.sk_dmos_raw VALUES (28, 0, 28, 'OOCR PODUNAJSKO ', '28_OOCR_PODUNAJSKO.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-podunajsko-pdf-578-kb', '"Register Podunajsko_februar_2024.pdf"', '2024-2', '50092499');
INSERT INTO gtlab.sk_dmos_raw VALUES (29, 0, 29, 'OOCR Trenčín a okolie ', '29_OOCR_Trenčín_a_okolie.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-trencin-a-okolie-pdf-512-kb', '"Zmena loga Tren__n a okolie_januar_2023.pdf"; filename*=utf-8''''Zmena%20loga%20Tren%C4%8D%C3%ADn%20a%20okolie_januar_2023.pdf', '2023-1', '50113577');
INSERT INTO gtlab.sk_dmos_raw VALUES (30, 0, 30, 'OOCR Malé Karpaty ', '30_OOCR_Malé_Karpaty.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-male-karpaty-pdf-509-kb', '"Register Male Karpaty februar_2024.pdf"', '2024-2', '50110641');
INSERT INTO gtlab.sk_dmos_raw VALUES (31, 0, 31, 'OOCR Slovenský raj & Spiš ', '31_OOCR_Slovenský_raj__Spiš.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-slovensky-raj-spis-pdf-526-kb', '"Register_Slovensky raj_Spis _februar_2024.pdf"', '2024-2', '42319331');
INSERT INTO gtlab.sk_dmos_raw VALUES (32, 0, 32, 'OOCR Tekov ', '32_OOCR_Tekov.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-tekov-pdf-399-kb', '"Register_Zmena_Tekov februar_2024.pdf"', '2024-2', '51019914');
INSERT INTO gtlab.sk_dmos_raw VALUES (33, 0, 33, 'OOCR GEMER', '33_OOCR_GEMER.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/subory-na-stiahnutie/oocr-gemer/register-oocr-gemer', '"Register_zmena_februar_2024_GEMER.pdf"', '2024-2', '51837099');
INSERT INTO gtlab.sk_dmos_raw VALUES (34, 0, 34, 'OOCR Región Šariš', '34_OOCR_Región_Šariš.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-region-saris', '"Register Region_Saris zmena_februar_2024.pdf"', '2024-2', '50076515');
INSERT INTO gtlab.sk_dmos_raw VALUES (35, 0, 35, 'OOCR Žitný ostrov – Csallóköz', '35_OOCR_Žitný_ostrov_–_Csallóköz.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-zitny-ostrov-csallokoz', '"Register_zmena_Zitny_ostrov_februar_2024.pdf"', '2024-2', '42288967');
INSERT INTO gtlab.sk_dmos_raw VALUES (36, 0, 36, 'Bratislavská organizácia cestovného ruchu', '36_Bratislavská_organizácia_cestovného_ruchu.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/bratislavska-organizacia-cestovneho-ruchu', '"Register BTB_april_2024.pdf"', '2024-4', '42259088');
INSERT INTO gtlab.sk_dmos_raw VALUES (37, 0, 37, 'OOCR Štúrovo - Parkan', '37_OOCR_Štúrovo_-_Parkan.pdf', 'https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu/oocr-sturovo-parkan', '"Register__turovo_Parkan_februar_2024.pdf"; filename*=utf-8''''Register_%C5%A0turovo_Parkan_februar_2024.pdf', '2024-2', '53485190');
INSERT INTO gtlab.sk_dmos_raw VALUES (38, 0, 38, 'Oblastná organizácia cestovného ruchu Matúšova zem – Mátyusföld', '38_Oblastná_organizácia_cestovného_ruchu_Matúšova_zem_–_Mátyusföld.pdf', 'https://www.mindop.sk/oblastna-organizacia-cestovneho-ruchu-matusova-zem-matyusfold', '"Register_OOCR_Mat__ova zem_februar_2024.pdf"; filename*=utf-8''''Register_OOCR_Mat%C3%BA%C5%A1ova%20zem_februar_2024.pdf', '2024-2', '54307406');


--
-- TOC entry 8494 (class 2606 OID 3083451)
-- Name: sk_dmos_raw sk_dmos_raw_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.sk_dmos_raw
    ADD CONSTRAINT sk_dmos_raw_pkey PRIMARY KEY (dmo_id);


--
-- TOC entry 8492 (class 1259 OID 3079605)
-- Name: ix_gtlab_sk_dmos_raw_level_0; Type: INDEX; Schema: gtlab; Owner: postgres
--

CREATE INDEX ix_gtlab_sk_dmos_raw_level_0 ON gtlab.sk_dmos_raw USING btree (level_0);


-- Completed on 2024-08-19 10:47:24

--
-- PostgreSQL database dump complete
--

