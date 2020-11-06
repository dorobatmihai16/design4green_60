--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:52:52

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
-- TOC entry 196 (class 1259 OID 16386)
-- Name: iris_population_france_precision; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.iris_population_france_precision (
    "VAR_ID" character varying NOT NULL,
    "VAR_LIB" character varying NOT NULL,
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


ALTER TABLE public.iris_population_france_precision OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16386)
-- Dependencies: 196
-- Data for Name: iris_population_france_precision; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.iris_population_france_precision ("VAR_ID", "VAR_LIB", cvdiff_moins25, cvdiff_25_49, cvdiff_50_74, cvdiff_75_99, cvdiff_100_149, cvdiff_150_199, cvdiff_200_299, cvdiff_300_499, cvdiff_500_1499, cvdiff_1500p) FROM stdin;
P16_POP	Population en 2016 (princ)	>5	>5	>5	>5	>5	>5	>5	>5	5	3
P16_POP0002	Pop 0-2 ans en 2016 (princ)	>25	25	17	14	12	10	9	<9	<9	<9
P16_POP0305	Pop 3-5 ans en 2016 (princ)	>25	25	18	14	12	10	9	7	<7	<7
P16_POP0610	Pop 6-10 ans en 2016 (princ)	>28	28	20	16	14	11	10	8	6	<6
P16_POP1117	Pop 11-17 ans en 2016 (princ)	>28	28	20	17	15	12	11	9	7	<7
P16_POP1824	Pop 18-24 ans en 2016 (princ)	>17	>17	17	14	13	11	10	8	7	<7
P16_POP2539	Pop 25-39 ans en 2016 (princ)	>13	>13	>13	>13	13	11	9	8	6	4
P16_POP4054	Pop 40-54 ans en 2016 (princ)	>10	>10	>10	>10	>10	10	9	7	6	<6
P16_POP5564	Pop 55-64 ans en 2016 (princ)	>13	>13	>13	13	12	10	9	8	7	<7
P16_POP6579	Pop 65-79 ans en 2016 (princ)	>17	>17	17	14	13	11	10	8	7	<7
P16_POP80P	Pop 80 ans ou plus en 2016 (princ)	>23	23	18	15	14	12	11	10	<10	<10
P16_POP0014	Pop 0-14 ans en 2016 (princ)	>17	>17	>17	>17	17	14	12	10	8	5
P16_POP1529	Pop 15-29 ans en 2016 (princ)	>15	>15	>15	15	13	11	10	8	6	4
P16_POP3044	Pop 30-44 ans en 2016 (princ)	>13	>13	>13	>13	13	10	9	8	6	4
P16_POP4559	Pop 45-59 ans en 2016 (princ)	>10	>10	>10	>10	>10	10	9	7	6	<6
P16_POP6074	Pop 60-74 ans en 2016 (princ)	>14	>14	>14	14	12	10	9	8	7	<7
P16_POP75P	Pop 75 ans ou plus en 2016 (princ)	>23	23	17	15	13	11	10	9	8	<8
P16_POP0019	Pop 0-19 ans en 2016 (princ)	>14	>14	>14	>14	>14	14	12	10	8	5
P16_POP2064	Pop 20-64 ans en 2016 (princ)	>5	>5	>5	>5	>5	>5	>5	>5	5	3
P16_POP65P	Pop 65 ans ou plus en 2016 (princ)	>14	>14	>14	14	12	11	9	8	7	<7
P16_POPH	Pop Hommes en 2016 (princ)	>6	>6	>6	>6	>6	>6	>6	6	5	3
P16_H0014	Pop Hommes 0-14 ans en 2016 (princ)	>21	>21	21	17	15	12	10	9	7	<7
P16_H1529	Pop Hommes 15-29 ans en 2016 (princ)	>17	>17	17	14	12	10	9	7	6	<6
P16_H3044	Pop Hommes 30-44 ans en 2016 (princ)	>14	>14	14	12	11	9	8	7	5	<5
P16_H4559	Pop Hommes 45-59 ans en 2016 (princ)	>14	>14	14	12	10	9	8	7	6	<6
P16_H6074	Pop Hommes 60-74 ans en 2016 (princ)	>20	20	15	13	11	10	9	7	<7	<7
P16_H75P	Pop Hommes 75 ans ou plus en 2016 (princ)	>22	22	17	14	13	11	10	<10	<10	<10
P16_H0019	Pop Hommes 0-19 ans en 2016 (princ)	>17	>17	>17	17	15	12	11	9	7	<7
P16_H2064	Pop Hommes 20-64 ans en 2016 (princ)	>7	>7	>7	>7	>7	>7	7	6	5	3
P16_H65P	Pop Hommes 65 ans ou plus en 2016 (princ)	>21	21	15	13	11	10	9	7	<7	<7
P16_POPF	Pop Femmes en 2016 (princ)	>6	>6	>6	>6	>6	>6	6	5	4	3
P16_F0014	Pop Femmes 0-14 ans en 2016 (princ)	>28	28	20	16	14	12	10	9	7	<7
P16_F1529	Pop Femmes 15-29 ans en 2016 (princ)	>16	>16	16	13	12	10	9	7	6	<6
P16_F3044	Pop Femmes 30-44 ans en 2016 (princ)	>15	>15	15	12	11	9	8	7	5	<5
P16_F4559	Pop Femmes 45-59 ans en 2016 (princ)	>12	>12	>12	12	11	9	8	7	5	<5
P16_F6074	Pop Femmes 60-74 ans en 2016 (princ)	>20	20	15	12	11	9	8	7	6	<6
P16_F75P	Pop Femmes 75 ans ou plus en 2016 (princ)	>22	22	16	14	12	10	9	8	7	<7
P16_F0019	Pop Femmes 0-19 ans en 2016 (princ)	>16	>16	>16	16	14	12	10	9	7	<7
P16_F2064	Pop Femmes 20-64 ans en 2016 (princ)	>6	>6	>6	>6	>6	>6	6	5	4	3
P16_F65P	Pop Femmes 65 ans ou plus en 2016 (princ)	>20	20	15	13	11	10	9	7	6	<6
C16_POP15P	Pop 15 ans ou plus en 2016 (compl)	>4	>4	>4	>4	>4	>4	>4	>4	4	3
C16_POP15P_CS1	Pop 15 ans ou plus Agriculteurs exploitants en 2016 (compl)	>29	29	21	<21	<21	<21	<21	<21	<21	<21
C16_POP15P_CS2	Pop 15 ans ou plus Artisans, Comm., Chefs entr. en 2016 (compl)	>23	23	17	15	14	12	11	<11	<11	<11
C16_POP15P_CS3	Pop 15 ans ou plus Cadres, Prof. intel. sup. en 2016 (compl)	>23	23	17	14	13	11	10	8	7	<7
C16_POP15P_CS4	Pop 15 ans ou plus Prof. intermédiaires en 2016 (compl)	>20	20	15	13	11	9	8	7	6	<6
C16_POP15P_CS5	Pop 15 ans ou plus Employés en 2016 (compl)	>13	>13	>13	13	12	10	9	7	6	<6
C16_POP15P_CS6	Pop 15 ans ou plus Ouvriers en 2016 (compl)	>24	24	17	14	12	10	9	8	6	<6
C16_POP15P_CS7	Pop 15 ans ou plus Retraités en 2016 (compl)	>12	>12	>12	>12	12	10	9	8	6	5
C16_POP15P_CS8	Pop 15 ans ou plus Autres en 2016 (compl)	>14	>14	>14	14	13	11	10	8	7	<7
C16_H15P	Pop 15 ans ou plus Hommes en 2016 (compl)	>7	>7	>7	>7	>7	7	6	5	4	3
C16_H15P_CS1	Pop 15 ans ou plus Hommes Agriculteurs exploitants en 2016 (compl)	>26	26	<26	<26	<26	<26	<26	<26	<26	<26
C16_H15P_CS2	Pop 15 ans ou plus Hommes Artisans, Comm., Chefs entr. en 2016 (compl)	>23	23	17	15	13	<13	<13	<13	<13	<13
C16_H15P_CS3	Pop 15 ans ou plus Hommes Cadres, Prof. intel. sup. en 2016 (compl)	>23	23	16	14	12	10	9	8	6	<6
C16_H15P_CS4	Pop 15 ans ou plus Hommes Prof. intermédiaires en 2016 (compl)	>20	20	15	13	11	10	9	7	<7	<7
C16_H15P_CS5	Pop 15 ans ou plus Hommes Employés en 2016 (compl)	>22	22	16	13	12	10	9	<9	<9	<9
C16_H15P_CS6	Pop 15 ans ou plus Hommes Ouvriers en 2016 (compl)	>23	23	17	14	12	10	9	7	6	<6
C16_H15P_CS7	Pop 15 ans ou plus Hommes Retraités en 2016 (compl)	>20	20	15	12	11	9	8	7	6	<6
C16_H15P_CS8	Pop 15 ans ou plus Hommes Autres en 2016 (compl)	>23	23	17	14	13	11	10	8	7	<7
C16_F15P	Pop 15 ans ou plus Femmes en 2016 (compl)	>4	>4	>4	>4	>4	>4	>4	4	4	3
C16_F15P_CS1	Pop 15 ans ou plus Femmes Agriculteurs exploitants en 2016 (compl)	so	so	so	so	so	so	so	so	so	so
C16_F15P_CS2	Pop 15 ans ou plus Femmes Artisans, Comm., Chefs entr. en 2016 (compl)	>25	25	19	16	<16	<16	<16	<16	<16	<16
C16_F15P_CS3	Pop 15 ans ou plus Femmes Cadres, Prof. intel. sup. en 2016 (compl)	>23	23	17	14	12	10	9	8	6	<6
C16_F15P_CS4	Pop 15 ans ou plus Femmes Prof. intermédiaires en 2016 (compl)	>21	21	15	13	11	9	8	7	<7	<7
C16_F15P_CS5	Pop 15 ans ou plus Femmes Employés en 2016 (compl)	>16	>16	16	13	11	9	8	7	5	<5
C16_F15P_CS6	Pop 15 ans ou plus Femmes Ouvriers en 2016 (compl)	>23	23	16	14	12	10	9	<9	<9	<9
C16_F15P_CS7	Pop 15 ans ou plus Femmes Retraités en 2016 (compl)	>20	20	15	12	11	9	8	7	6	<6
C16_F15P_CS8	Pop 15 ans ou plus Femmes Autres en 2016 (compl)	>17	>17	17	14	12	10	9	8	6	<6
P16_POP_FR	Pop Français en 2016 (princ)	>5	>5	>5	>5	>5	>5	>5	>5	5	3
P16_POP_ETR	Pop Etrangers en 2016 (princ)	>30	30	22	19	17	14	13	11	9	<9
P16_POP_IMM	Pop Immigrés en 2016 (princ)	>28	28	21	17	15	13	11	9	8	<8
P16_PMEN	Pop ménages en 2016 (princ)	>5	>5	>5	>5	>5	>5	>5	>5	5	3
P16_PHORMEN	Pop hors ménages en 2016 (princ)	nd	nd	nd	nd	nd	nd	nd	nd	nd	nd
\.


-- Completed on 2020-11-06 10:52:56

--
-- PostgreSQL database dump complete
--

