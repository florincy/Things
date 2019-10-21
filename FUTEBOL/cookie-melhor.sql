--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- Started on 2019-10-21 16:45:10 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13043)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16410)
-- Name: ceara; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ceara (
    ataque integer,
    defesa integer,
    "lateral" integer,
    idc integer NOT NULL
);


ALTER TABLE public.ceara OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16413)
-- Name: ceará_idc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--





--
-- TOC entry 2944 (class 0 OID 0)
-- Dependencies: 197
-- Name: ceará_idc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--



--
-- TOC entry 198 (class 1259 OID 16415)
-- Name: flamengo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flamengo (
    ataque integer,
    defesa integer,
    lado integer,
    idfla integer NOT NULL
);


ALTER TABLE public.flamengo OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16418)
-- Name: fluminense; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fluminense (
    ataque integer,
    defesa integer,
    "lateral" integer,
    idflu integer NOT NULL
);


ALTER TABLE public.fluminense OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16429)
-- Name: sq_ceara; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sq_ceara
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_ceara OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16427)
-- Name: sq_flamengo; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sq_flamengo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_flamengo OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16431)
-- Name: sq_fluminense; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sq_fluminense
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_fluminense OWNER TO postgres;

--
-- TOC entry 2929 (class 0 OID 16410)
-- Dependencies: 196
-- Data for Name: ceara; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2931 (class 0 OID 16415)
-- Dependencies: 198
-- Data for Name: flamengo; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2932 (class 0 OID 16418)
-- Dependencies: 199
-- Data for Name: fluminense; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 197
-- Name: ceará_idc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 201
-- Name: sq_ceara; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sq_ceara', 1, false);


--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 200
-- Name: sq_flamengo; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sq_flamengo', 1, true);


--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 202
-- Name: sq_fluminense; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sq_fluminense', 1, false);


--
-- TOC entry 2803 (class 2606 OID 16422)
-- Name: ceara pk_idc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ceara
    ADD CONSTRAINT pk_idc PRIMARY KEY (idc);


--
-- TOC entry 2805 (class 2606 OID 16424)
-- Name: flamengo pk_idfla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flamengo
    ADD CONSTRAINT pk_idfla PRIMARY KEY (idfla);


--
-- TOC entry 2807 (class 2606 OID 16426)
-- Name: fluminense pk_idflu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluminense
    ADD CONSTRAINT pk_idflu PRIMARY KEY (idflu);


-- Completed on 2019-10-21 16:45:10 -03

--
-- PostgreSQL database dump complete
--

