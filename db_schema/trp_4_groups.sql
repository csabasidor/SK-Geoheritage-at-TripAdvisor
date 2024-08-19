--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 11:00:00

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
-- TOC entry 1537 (class 1259 OID 3177907)
-- Name: trp_4_groups; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_4_groups (
    id integer NOT NULL,
    name text,
    subclass_id integer
);


ALTER TABLE gtlab.trp_4_groups OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3177907)
-- Dependencies: 1537
-- Data for Name: trp_4_groups; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

COPY gtlab.trp_4_groups (id, name, subclass_id) FROM stdin;
0	Caves	1
1	Peaks	1
2	Canyons	1
3	Cliffs	1
4	Volcanos	1
5	Springs	1
6	Water falls	1
7	Castel hills	1
8	Mineral & Fossile collections	1
9	Oceans & Seas	2
10	Sea sides	2
11	Rivers	2
12	Lakes	2
13	Architectural monuments	5
14	Current architectonics	5
15	Historical sites	5
16	Museums	6
17	Theaters	6
18	Galleries	6
19	Educational services	6
20	Other cultural services	6
21	Hotels	14
22	Guest houses	14
23	Rental apartments	14
24	Other	14
25	Restaurants	15
26	Eating  houses	15
27	Pubs	15
28	Bars	15
29	Cafés	15
30	Other	15
32	Destination specific service providers	16
33	Health and Life style services	16
34	Sport services	16
35	Adult entertainment	16
36	Travel Agencies	17
37	Tour Operators	17
38	Insurance companies	17
39	Rental services	17
40	Border crossings	18
41	Customs	18
42	Tourist information services	18
43	Railway transporters	19
44	Airlines	19
45	Bus carriers	19
46	Ferries	19
47	Airports	25
48	Bus stations	25
49	Railway stations	25
50	Bus stations	25
51	Taxi	25
52	Local public mass transportation	25
53	Other geosites	1
54	Protected sites	0
55	Forests	0
56	Other landscapes	0
57	Music	27
58	Exhibitons	13
59	Whole sale	24
60	Retail	24
61	Food production	26
62	Other	5
64	Family entertainment	16
65	Other Bodies of Water	2
66	Dams	2
67	Shores and Beaches	2
63	Relegious sites	5
\.


--
-- TOC entry 8493 (class 2606 OID 3177914)
-- Name: trp_4_groups trp_4_groups_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_4_groups
    ADD CONSTRAINT trp_4_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 8494 (class 2606 OID 3177949)
-- Name: trp_4_groups subclass_group; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_4_groups
    ADD CONSTRAINT subclass_group FOREIGN KEY (subclass_id) REFERENCES gtlab.trp_3_subclasses(id);


-- Completed on 2024-08-19 11:00:00

--
-- PostgreSQL database dump complete
--

