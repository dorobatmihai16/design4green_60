--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:28:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 222 (class 1259 OID 16730)
-- Name: france_metropolitane; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.france_metropolitane (
    codgeo boolean NOT NULL,
    libgeo character varying NOT NULL,
    nbmenfisc16 numeric NOT NULL,
    nbpersmenfisc16 numeric NOT NULL,
    med16 numeric NOT NULL,
    pimp16 numeric NOT NULL,
    tp6016 numeric NOT NULL,
    tp60age116 numeric NOT NULL,
    tp60age216 numeric NOT NULL,
    tp60age316 numeric NOT NULL,
    tp60age416 numeric NOT NULL,
    tp60age516 numeric NOT NULL,
    tp60age616 numeric NOT NULL,
    tp60tol116 numeric NOT NULL,
    tp60tol216 numeric NOT NULL,
    pact16 numeric NOT NULL,
    ptsa16 numeric NOT NULL,
    pcho16 numeric NOT NULL,
    pben16 numeric NOT NULL,
    ppen16 numeric NOT NULL,
    ppat16 numeric NOT NULL,
    ppsoc16 numeric NOT NULL,
    ppfam16 numeric NOT NULL,
    ppmini16 numeric NOT NULL,
    pplogt16 numeric NOT NULL,
    pimpot16 numeric NOT NULL,
    d116 numeric NOT NULL,
    d916 numeric NOT NULL,
    rd16 numeric NOT NULL
);


ALTER TABLE public.france_metropolitane OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16730)
-- Dependencies: 222
-- Data for Name: france_metropolitane; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.france_metropolitane (codgeo, libgeo, nbmenfisc16, nbpersmenfisc16, med16, pimp16, tp6016, tp60age116, tp60age216, tp60age316, tp60age416, tp60age516, tp60age616, tp60tol116, tp60tol216, pact16, ptsa16, pcho16, pben16, ppen16, ppat16, ppsoc16, ppfam16, ppmini16, pplogt16, pimpot16, d116, d916, rd16) FROM stdin;
t	France métropolitaine	27209787	62614716	20809	52.0	14.7	22.5	16.9	17.2	14.8	9.7	8.9	6.7	27.6	73.5	64.8	3.2	5.5	28.5	10.0	5.4	2.1	1.9	1.4	-17.4	10948	37880	3.5
\.


-- Completed on 2020-11-06 10:28:56

--
-- PostgreSQL database dump complete
--

