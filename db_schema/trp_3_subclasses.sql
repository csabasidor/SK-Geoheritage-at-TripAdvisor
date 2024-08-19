--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:59:40

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
-- TOC entry 1539 (class 1259 OID 3177936)
-- Name: trp_3_subclasses; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_3_subclasses (
    id integer NOT NULL,
    name text,
    class_id integer
);


ALTER TABLE gtlab.trp_3_subclasses OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3177936)
-- Dependencies: 1539
-- Data for Name: trp_3_subclasses; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.trp_3_subclasses VALUES (0, 'Outdoor landscapes', 0);
INSERT INTO gtlab.trp_3_subclasses VALUES (1, 'Geosites', 0);
INSERT INTO gtlab.trp_3_subclasses VALUES (2, 'Bodies of water', 0);
INSERT INTO gtlab.trp_3_subclasses VALUES (5, 'Tangible cultural heritage', 1);
INSERT INTO gtlab.trp_3_subclasses VALUES (6, 'Cultural services', 1);
INSERT INTO gtlab.trp_3_subclasses VALUES (7, 'Expos', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (8, 'Conferences', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (9, 'Active sport events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (10, 'Pasive sport events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (11, 'Religious events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (12, 'Political events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (13, 'Other events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (14, 'Accommodation', 3);
INSERT INTO gtlab.trp_3_subclasses VALUES (15, 'Food & Bevarage', 3);
INSERT INTO gtlab.trp_3_subclasses VALUES (16, 'Services of Individual recreation', 3);
INSERT INTO gtlab.trp_3_subclasses VALUES (17, 'Intermediary services', 4);
INSERT INTO gtlab.trp_3_subclasses VALUES (18, 'Public services', 4);
INSERT INTO gtlab.trp_3_subclasses VALUES (19, 'Transportation services', 4);
INSERT INTO gtlab.trp_3_subclasses VALUES (20, 'Emeregency services', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (21, 'Financial services', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (22, 'Telecommunication services', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (23, 'Postal services', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (25, 'Local Transportation I & S', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (26, 'Other', 5);
INSERT INTO gtlab.trp_3_subclasses VALUES (27, 'Cultural events', 2);
INSERT INTO gtlab.trp_3_subclasses VALUES (24, 'Whole sale and Retail', 5);


--
-- TOC entry 8493 (class 2606 OID 3177943)
-- Name: trp_3_subclasses trp_3_subclasses_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_3_subclasses
    ADD CONSTRAINT trp_3_subclasses_pkey PRIMARY KEY (id);


--
-- TOC entry 8494 (class 2606 OID 3177944)
-- Name: trp_3_subclasses class_to_subclass; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_3_subclasses
    ADD CONSTRAINT class_to_subclass FOREIGN KEY (class_id) REFERENCES gtlab.trp_2_classes(id);


-- Completed on 2024-08-19 10:59:41

--
-- PostgreSQL database dump complete
--

