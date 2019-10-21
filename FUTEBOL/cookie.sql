--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-21 12:48:19 BRST

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
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 42119)
-- Name: ceara; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ceara (
    ataque integer,
    defesa integer,
    "lateral" integer,
    idc integer NOT NULL
);


ALTER TABLE ceara OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 42122)
-- Name: ceará_idc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "ceará_idc_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "ceará_idc_seq" OWNER TO postgres;

--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 184
-- Name: ceará_idc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ceará_idc_seq" OWNED BY ceara.idc;


--
-- TOC entry 181 (class 1259 OID 42110)
-- Name: flamengo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE flamengo (
    ataque integer,
    defesa integer,
    "lateral" integer,
    idfla integer NOT NULL
);


ALTER TABLE flamengo OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 42128)
-- Name: flamengo_idfla_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE flamengo_idfla_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flamengo_idfla_seq OWNER TO postgres;

--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 185
-- Name: flamengo_idfla_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE flamengo_idfla_seq OWNED BY flamengo.idfla;


--
-- TOC entry 182 (class 1259 OID 42113)
-- Name: fluminense; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fluminense (
    ataque integer,
    defesa integer,
    "lateral" integer,
    idflu integer NOT NULL
);


ALTER TABLE fluminense OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 42134)
-- Name: fluminense_idflu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fluminense_idflu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fluminense_idflu_seq OWNER TO postgres;

--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 186
-- Name: fluminense_idflu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fluminense_idflu_seq OWNED BY fluminense.idflu;


--
-- TOC entry 2033 (class 2604 OID 42124)
-- Name: idc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ceara ALTER COLUMN idc SET DEFAULT nextval('"ceará_idc_seq"'::regclass);


--
-- TOC entry 2031 (class 2604 OID 42130)
-- Name: idfla; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY flamengo ALTER COLUMN idfla SET DEFAULT nextval('flamengo_idfla_seq'::regclass);


--
-- TOC entry 2032 (class 2604 OID 42136)
-- Name: idflu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fluminense ALTER COLUMN idflu SET DEFAULT nextval('fluminense_idflu_seq'::regclass);


--
-- TOC entry 2156 (class 0 OID 42119)
-- Dependencies: 183
-- Data for Name: ceara; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ceara (ataque, defesa, "lateral", idc) FROM stdin;
\.


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 184
-- Name: ceará_idc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"ceará_idc_seq"', 1, false);


--
-- TOC entry 2154 (class 0 OID 42110)
-- Dependencies: 181
-- Data for Name: flamengo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY flamengo (ataque, defesa, "lateral", idfla) FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 185
-- Name: flamengo_idfla_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('flamengo_idfla_seq', 1, false);


--
-- TOC entry 2155 (class 0 OID 42113)
-- Dependencies: 182
-- Data for Name: fluminense; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fluminense (ataque, defesa, "lateral", idflu) FROM stdin;
\.


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 186
-- Name: fluminense_idflu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fluminense_idflu_seq', 1, false);


--
-- TOC entry 2039 (class 2606 OID 42145)
-- Name: pk_idc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ceara
    ADD CONSTRAINT pk_idc PRIMARY KEY (idc);


--
-- TOC entry 2035 (class 2606 OID 42143)
-- Name: pk_idfla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY flamengo
    ADD CONSTRAINT pk_idfla PRIMARY KEY (idfla);


--
-- TOC entry 2037 (class 2606 OID 42141)
-- Name: pk_idflu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fluminense
    ADD CONSTRAINT pk_idflu PRIMARY KEY (idflu);


--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-21 12:48:19 BRST

--
-- PostgreSQL database dump complete
--

