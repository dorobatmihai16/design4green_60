--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 11:00:24

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
-- TOC entry 216 (class 1259 OID 16688)
-- Name: revenus_regions; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.revenus_regions (
    codgeo numeric NOT NULL,
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


ALTER TABLE public.revenus_regions OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16688)
-- Dependencies: 216
-- Data for Name: revenus_regions; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.revenus_regions (codgeo, libgeo, nbmenfisc16, nbpersmenfisc16, med16, pimp16, tp6016, tp60age116, tp60age216, tp60age316, tp60age416, tp60age516, tp60age616, tp60tol116, tp60tol216, pact16, ptsa16, pcho16, pben16, ppen16, ppat16, ppsoc16, ppfam16, ppmini16, pplogt16, pimpot16, d116, d916, rd16) FROM stdin;
2	Martinique	148960	341866	17057	33.3	29.8	49.0	33.7	32.3	29.4	23.3	31.1	22.3	37.7	73.1	64.0	3.7	5.4	23.2	5.7	11.4	2.7	6.5	2.3	-13.4	8300	36240	4.4
4	La Réunion	307206	850081	14733	27.8	39.0	52.5	41.3	40.9	36.1	31.7	39.6	30.4	47.6	74.9	62.2	5.0	7.7	15.1	6.8	15.9	4.4	8.1	3.4	-12.7	7693	35035	4.6
11	Île-de-France	4884307	11912806	22906	63.9	15.7	19.2	16.6	18.0	16.4	12.4	7.9	5.7	25.7	85.4	77.3	3.1	5.0	21.6	10.8	4.4	1.8	1.4	1.2	-22.2	10469	46607	4.5
24	Centre-Val de Loire	1112341	2516913	20658	51.4	13.2	21.8	16.3	15.8	13.0	8.1	7.2	6.1	28.0	69.3	61.5	3.0	4.8	32.3	8.8	5.3	2.2	1.8	1.3	-15.7	11423	34694	3.0
27	Bourgogne-Franche-Comté	1221281	2707291	20579	50.6	13.1	20.8	15.9	15.7	13.0	8.1	7.9	6.6	27.0	69.6	61.1	3.0	5.5	32.2	8.6	5.3	2.1	1.9	1.3	-15.7	11508	35355	3.1
28	Normandie	1410876	3223913	20301	49.1	13.7	22.6	16.4	16.5	13.7	8.1	7.4	6.0	27.1	69.6	61.1	3.2	5.3	31.3	8.2	6.0	2.3	2.1	1.5	-15.1	11311	34148	3.0
32	Hauts-de-France	2415251	5814897	19249	45.7	18.3	29.4	21.5	21.3	17.8	10.7	9.7	7.8	34.5	72.2	63.7	3.4	5.1	27.7	7.8	7.6	2.8	2.8	2.0	-15.3	10337	33548	3.2
44	Grand Est	2322241	5300008	20751	49.7	14.5	24.5	18.5	17.5	13.4	8.7	7.6	6.4	28.6	69.8	61.4	3.1	5.3	28.7	11.9	5.4	2.0	1.9	1.5	-15.8	11027	36953	3.4
52	Pays de la Loire	1577232	3658605	20642	49.0	11.0	17.9	12.3	12.9	11.3	6.3	7.1	5.3	24.9	71.3	63.0	3.0	5.2	29.8	9.0	5.3	2.4	1.6	1.3	-15.4	12145	34078	2.8
53	Bretagne	1440097	3225483	20742	49.3	11.1	19.8	12.7	12.7	11.2	6.4	8.2	6.0	24.7	68.3	59.1	3.0	6.2	32.9	9.3	5.1	2.2	1.7	1.3	-15.6	12106	34585	2.9
75	Nouvelle-Aquitaine	2615300	5738334	20370	48.5	13.7	23.1	15.8	15.9	13.8	8.6	10.3	7.6	26.2	67.3	57.9	3.2	6.2	33.5	9.8	5.3	1.9	2.0	1.4	-15.9	11293	35083	3.1
76	Occitanie	2521915	5589222	19905	46.7	16.9	26.8	19.4	19.7	17.2	11.5	11.8	8.9	30.9	68.0	58.1	3.4	6.6	31.7	10.0	6.3	2.1	2.5	1.7	-16.0	10402	35279	3.4
84	Auvergne-Rhône-Alpes	3338422	7670442	21478	52.6	12.7	19.6	14.7	15.0	12.4	8.1	7.9	5.8	24.9	73.9	65.7	3.1	5.1	27.4	10.4	4.8	2.0	1.5	1.3	-16.5	11554	39128	3.4
93	Provence-Alpes-Côte d'Azur	2226183	4989332	20525	51.4	17.2	24.7	20.3	20.5	17.9	12.4	10.3	7.7	29.4	69.3	59.4	3.5	6.4	31.1	11.9	5.7	1.9	2.2	1.6	-18.0	10222	37710	3.7
94	Corse	124341	267473	19519	47.3	19.6	25.6	22.0	22.1	19.3	16.5	17.5	11.5	29.9	68.8	57.3	3.0	8.5	31.9	10.8	5.7	1.5	2.7	1.5	-17.2	9805	35881	3.7
\.


-- Completed on 2020-11-06 11:00:28

--
-- PostgreSQL database dump complete
--

