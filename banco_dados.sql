--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-06-27 10:54:35 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 182 (class 1259 OID 17118)
-- Name: sq_cd_tabela; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_cd_tabela
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_cd_tabela OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 17110)
-- Name: tabela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tabela (
    coluna character varying,
    cd_tabela integer NOT NULL
);


ALTER TABLE tabela OWNER TO postgres;

--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 182
-- Name: sq_cd_tabela; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_cd_tabela', 1, false);


--
-- TOC entry 2136 (class 0 OID 17110)
-- Dependencies: 181
-- Data for Name: tabela; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabela (coluna, cd_tabela) FROM stdin;
\.


--
-- TOC entry 2021 (class 2606 OID 17121)
-- Name: pk_cd_tabela; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tabela
    ADD CONSTRAINT pk_cd_tabela PRIMARY KEY (cd_tabela);


--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-06-27 10:54:42 BRT

--
-- PostgreSQL database dump complete
--

