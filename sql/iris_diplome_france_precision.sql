--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:48:45

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
-- TOC entry 213 (class 1259 OID 16669)
-- Name: iris_diplome_france_precision; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.iris_diplome_france_precision (
    var_id character varying NOT NULL,
    var_lib character varying NOT NULL,
    cvdiff_moins25 character varying NOT NULL,
    cvdiff_25_49 character varying NOT NULL,
    cvdiff_50_74 character varying NOT NULL,
    cvdiff_75_99 character varying NOT NULL,
    cvdiff_100_149 character varying NOT NULL,
    cvdiff_150_199 character varying NOT NULL,
    cvdiff_200_299 character varying NOT NULL,
    cvdiff_300_499 character varying NOT NULL,
    cvdiff_500_1499 character varying NOT NULL,
    cvdiff_1500p character varying NOT NULL
);


ALTER TABLE public.iris_diplome_france_precision OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16669)
-- Dependencies: 213
-- Data for Name: iris_diplome_france_precision; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.iris_diplome_france_precision (var_id, var_lib, cvdiff_moins25, cvdiff_25_49, cvdiff_50_74, cvdiff_75_99, cvdiff_100_149, cvdiff_150_199, cvdiff_200_299, cvdiff_300_499, cvdiff_500_1499, cvdiff_1500p) FROM stdin;
P16_POP0205	Pop 2-5 ans en 2016 (princ)	>26	26	19	15	13	11	9	8	<8	<8
P16_POP0610	Pop 6-10 ans en 2016 (princ)	>28	28	20	16	14	11	10	8	6	<6
P16_POP1114	Pop 11-14 ans en 2016 (princ)	>26	26	19	16	14	11	10	8	<8	<8
P16_POP1517	Pop 15-17 ans en 2016 (princ)	>24	24	18	15	13	11	10	<10	<10	<10
P16_POP1824	Pop 18-24 ans en 2016 (princ)	>17	>17	17	14	13	11	10	8	7	<7
P16_POP2529	Pop 25-29 ans en 2016 (princ)	>23	23	17	14	12	10	9	8	6	<6
P16_POP30P	Pop 30 ans ou plus en 2016 (princ)	>5	>5	>5	>5	>5	>5	>5	5	4	3
P16_SCOL0205	Pop scolarisée 2-5 ans en 2016 (princ)	>25	25	18	15	13	10	9	7	<7	<7
P16_SCOL0610	Pop scolarisée 6-10 ans en 2016 (princ)	>28	28	20	16	14	11	10	8	6	<6
P16_SCOL1114	Pop scolarisée 11-14 ans en 2016 (princ)	>26	26	19	15	14	11	10	8	<8	<8
P16_SCOL1517	Pop scolarisée 15-17 ans en 2016 (princ)	>24	24	18	15	13	11	10	<10	<10	<10
P16_SCOL1824	Pop scolarisée 18-24 ans en 2016 (princ)	>23	23	17	15	13	12	10	9	8	<8
P16_SCOL2529	Pop scolarisée 25-29 ans en 2016 (princ)	>23	23	17	15	13	12	<12	<12	<12	<12
P16_SCOL30P	Pop scolarisée 30 ans ou plus en 2016 (princ)	>23	23	17	14	<14	<14	<14	<14	<14	<14
P16_NSCOL15P	Pop 15 ans ou plus non scolarisée en 2016 (princ)	>4	>4	>4	>4	>4	>4	>4	>4	4	3
P16_NSCOL15P_DIPLMIN	Pop 15 ans ou plus non scol. Sans diplôme ou BEPC, brevet des collèges, DNB en 2016 (princ)	>14	>14	>14	>14	14	11	10	8	6	4
P16_NSCOL15P_CAPBEP	Pop 15 ans ou plus non scol. CAP-BEP en 2016 (princ)	>24	24	17	14	12	10	9	7	6	<6
P16_NSCOL15P_BAC	Pop 15 ans ou plus non scol. BAC en 2016 (princ)	>14	>14	14	12	11	9	8	7	6	<6
P16_NSCOL15P_SUP	Pop 15 ans ou plus non scol. Enseignement sup en 2016 (princ)	>21	21	16	13	12	10	9	7	6	4
P16_HNSCOL15P	Hommes 15 ans ou plus non scolarisés en 2016 (princ)	>6	>6	>6	>6	>6	>6	6	5	4	3
P16_HNSCOL15P_DIPLMIN	Hommes 15 ans ou plus non scol. Sans diplôme ou BEPC, brevet des collèges, DNB en 2016 (princ)	>24	24	17	14	12	10	9	7	5	<5
P16_HNSCOL15P_CAPBEP	Hommes 15 ans ou plus non scol. CAP-BEP en 2016 (princ)	>22	22	16	13	11	9	8	7	5	<5
P16_HNSCOL15P_BAC	Hommes 15 ans ou plus non scol. BAC en 2016 (princ)	>19	19	14	12	11	10	9	8	<8	<8
P16_HNSCOL15P_SUP	Hommes 15 ans ou plus non scol. Enseignement sup en 2016 (princ)	>20	20	15	12	11	9	8	7	6	<6
P16_FNSCOL15P	Femmes 15 ans ou plus non scolarisées en 2016 (princ)	>5	>5	>5	>5	>5	>5	5	4	4	2
P16_FNSCOL15P_DIPLMIN	Femmes 15 ans ou plus non scol. Sans diplôme ou BEPC, brevet des collèges, DNB en 2016 (princ)	>18	>18	18	14	12	10	9	7	5	<5
P16_FNSCOL15P_CAPBEP	Femmes 15 ans ou plus non scol. CAP-BEP en 2016 (princ)	>22	22	16	13	11	9	8	7	5	<5
P16_FNSCOL15P_BAC	Femmes 15 ans ou plus non scol. BAC en 2016 (princ)	>20	20	14	12	11	9	8	7	<7	<7
P16_FNSCOL15P_SUP	Femmes 15 ans ou plus non scol. Enseignement sup en 2016 (princ)	>20	20	15	12	11	9	8	7	6	<6
\.


-- Completed on 2020-11-06 10:48:49

--
-- PostgreSQL database dump complete
--

