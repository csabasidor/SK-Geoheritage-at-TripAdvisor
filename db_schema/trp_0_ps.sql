--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 10:58:19

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
-- TOC entry 1535 (class 1259 OID 3177855)
-- Name: trp_0_ps; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_0_ps (
    id integer NOT NULL,
    name text
);


ALTER TABLE gtlab.trp_0_ps OWNER TO postgres;

--
-- TOC entry 8610 (class 0 OID 3177855)
-- Dependencies: 1535
-- Data for Name: trp_0_ps; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.trp_0_ps VALUES (0, 'Tourism preconditions');
INSERT INTO gtlab.trp_0_ps VALUES (1, 'Tourism resources');


--
-- TOC entry 8493 (class 2606 OID 3177862)
-- Name: trp_0_ps trp_0_ps_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_0_ps
    ADD CONSTRAINT trp_0_ps_pkey PRIMARY KEY (id);


-- Completed on 2024-08-19 10:58:19

--
-- PostgreSQL database dump complete
--

