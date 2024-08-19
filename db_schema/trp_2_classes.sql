--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:59:14

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
-- TOC entry 1536 (class 1259 OID 3177868)
-- Name: trp_2_classes; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_2_classes (
    id integer NOT NULL,
    name text,
    sources_id integer
);


ALTER TABLE gtlab.trp_2_classes OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3177868)
-- Dependencies: 1536
-- Data for Name: trp_2_classes; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.trp_2_classes VALUES (0, 'Natural', 0);
INSERT INTO gtlab.trp_2_classes VALUES (1, 'Anthropogenic', 0);
INSERT INTO gtlab.trp_2_classes VALUES (2, 'Organized events', 0);
INSERT INTO gtlab.trp_2_classes VALUES (3, 'T & T Suprastructure', 1);
INSERT INTO gtlab.trp_2_classes VALUES (4, 'T & T Infrastructure', 1);
INSERT INTO gtlab.trp_2_classes VALUES (5, 'General Local Infrastructure', 1);


--
-- TOC entry 8493 (class 2606 OID 3177875)
-- Name: trp_2_classes trp_2_classes_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_2_classes
    ADD CONSTRAINT trp_2_classes_pkey PRIMARY KEY (id);


--
-- TOC entry 8494 (class 2606 OID 3177876)
-- Name: trp_2_classes source_to_class; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_2_classes
    ADD CONSTRAINT source_to_class FOREIGN KEY (sources_id) REFERENCES gtlab.trp_1_sources(id);


-- Completed on 2024-08-19 10:59:15

--
-- PostgreSQL database dump complete
--

