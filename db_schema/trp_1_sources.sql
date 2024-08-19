--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:58:43

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
-- TOC entry 1534 (class 1259 OID 3177847)
-- Name: trp_1_sources; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_1_sources (
    id integer NOT NULL,
    name text,
    trp_id integer
);


ALTER TABLE gtlab.trp_1_sources OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3177847)
-- Dependencies: 1534
-- Data for Name: trp_1_sources; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.trp_1_sources VALUES (0, 'Primary Tourism Resources', 1);
INSERT INTO gtlab.trp_1_sources VALUES (1, 'Secondary Tourism Resources', 1);


--
-- TOC entry 8493 (class 2606 OID 3177854)
-- Name: trp_1_sources trp_1_sources_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_1_sources
    ADD CONSTRAINT trp_1_sources_pkey PRIMARY KEY (id);


--
-- TOC entry 8494 (class 2606 OID 3177863)
-- Name: trp_1_sources ps_to_source; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_1_sources
    ADD CONSTRAINT ps_to_source FOREIGN KEY (trp_id) REFERENCES gtlab.trp_0_ps(id);


-- Completed on 2024-08-19 10:58:43

--
-- PostgreSQL database dump complete
--

