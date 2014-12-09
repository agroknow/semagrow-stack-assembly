--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.0
-- Dumped by pg_dump version 9.3.0
-- Started on 2014-12-03 15:33:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 172 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1947 (class 0 OID 0)
-- Dependencies: 172
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 40981)
-- Name: aligned_elements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE aligned_elements (
    entity1_uri character varying(2048) NOT NULL,
    entity2_uri character varying(2048) NOT NULL,
    alignment_relation character varying(8),
    confidence double precision,
    onto1_uri character varying(2048),
    onto2_uri character varying(2048),
    id integer
);


ALTER TABLE public.aligned_elements OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 40973)
-- Name: alignment_task; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alignment_task (
    onto1_uri character varying(2048) NOT NULL,
    onto2_uri character varying(2048) NOT NULL,
    id integer
);


ALTER TABLE public.alignment_task OWNER TO postgres;

--
-- TOC entry 1939 (class 0 OID 40981)
-- Dependencies: 171
-- Data for Name: aligned_elements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY aligned_elements (entity1_uri, entity2_uri, alignment_relation, confidence, onto1_uri, onto2_uri, id) FROM stdin;
\.


--
-- TOC entry 1938 (class 0 OID 40973)
-- Dependencies: 170
-- Data for Name: alignment_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alignment_task (onto1_uri, onto2_uri, id) FROM stdin;
\.


--
-- TOC entry 1830 (class 2606 OID 40988)
-- Name: aligned_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aligned_elements
    ADD CONSTRAINT aligned_elements_pkey PRIMARY KEY (entity1_uri, entity2_uri);


--
-- TOC entry 1828 (class 2606 OID 40980)
-- Name: alignment_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alignment_task
    ADD CONSTRAINT alignment_task_pkey PRIMARY KEY (onto1_uri, onto2_uri);


--
-- TOC entry 1946 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-12-03 15:33:27

--
-- PostgreSQL database dump complete
--

