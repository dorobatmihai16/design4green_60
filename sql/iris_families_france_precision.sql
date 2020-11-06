--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:51:03

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
-- TOC entry 210 (class 1259 OID 16649)
-- Name: iris_families_france_precision; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.iris_families_france_precision (
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


ALTER TABLE public.iris_families_france_precision OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16649)
-- Dependencies: 210
-- Data for Name: iris_families_france_precision; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.iris_families_france_precision (var_id, var_lib, cvdiff_moins25, cvdiff_25_49, cvdiff_50_74, cvdiff_75_99, cvdiff_100_149, cvdiff_150_199, cvdiff_200_299, cvdiff_300_499, cvdiff_500_1499, cvdiff_1500p) FROM stdin;
C16_MEN	Ménages en 2016 (compl)	>2	>2	>2	>2	>2	>2	>2	2	1	1
C16_MENPSEUL	Ménages 1 personne en 2016 (compl)	>14	>14	14	11	10	8	7	6	5	3
C16_MENHSEUL	Ménages Hommes seuls en 2016 (compl)	>20	20	15	12	11	9	8	7	6	<6
C16_MENFSEUL	Ménages Femmes seules en 2016 (compl)	>20	20	14	12	10	9	8	6	5	<5
C16_MENSFAM	Ménages Autres sans famille en 2016 (compl)	>22	22	17	14	12	11	10	<10	<10	<10
C16_MENFAM	Ménages avec famille(s) en 2016 (compl)	>7	>7	>7	>7	>7	>7	7	6	4	2
C16_MENCOUPSENF	Mén fam princ Couple sans enfant en 2016 (compl)	>16	16	12	10	9	8	7	7	6	<6
C16_MENCOUPAENF	Mén fam princ Couple avec enfant(s) en 2016 (compl)	>18	>18	18	14	12	10	8	7	5	<5
C16_MENFAMMONO	Mén fam princ Famille mono en 2016 (compl)	>23	23	16	14	12	10	8	7	<7	<7
C16_PMEN	Pop Ménages en 2016 (compl)	>5	>5	>5	>5	>5	>5	>5	>5	5	3
C16_PMEN_MENPSEUL	Pop mén Personnes seules en 2016 (compl)	>14	>14	14	11	10	8	7	6	5	3
C16_PMEN_MENHSEUL	Pop mén Hommes seuls en 2016 (compl)	>20	20	15	12	11	9	8	7	6	<6
C16_PMEN_MENFSEUL	Pop mén Femmes seules en 2016 (compl)	>20	20	14	12	10	9	8	6	5	<5
C16_PMEN_MENSFAM	Pop mén Autres sans famille en 2016 (compl)	>33	33	25	21	19	16	15	13	11	<11
C16_PMEN_MENFAM	Pop mén avec famille(s) en 2016 (compl)	>9	>9	>9	>9	>9	>9	>9	>9	9	5
C16_PMEN_MENCOUPSENF	Pop mén fam princ Couple sans enfant en 2016 (compl)	>12	>12	>12	>12	12	11	9	8	7	<7
C16_PMEN_MENCOUPAENF	Pop mén fam princ Couple avec enfant(s) en 2016 (compl)	>18	>18	>18	>18	>18	>18	18	14	11	6
C16_PMEN_MENFAMMONO	Pop mén fam princ Famille mono en 2016 (compl)	>26	>26	26	22	19	16	14	12	9	<9
P16_POP15P	Pop 15 ans ou plus en 2016 (princ)	>4	>4	>4	>4	>4	>4	>4	>4	4	3
P16_POP1524	Pop 15-24 ans en 2016 (princ)	>18	>18	18	15	13	11	10	8	7	<7
P16_POP2554	Pop 25-54 ans en 2016 (princ)	>7	>7	>7	>7	>7	>7	>7	7	5	3
P16_POP5579	Pop 55-79 ans en 2016 (princ)	>10	>10	>10	>10	>10	10	9	7	6	4
P16_POP80P	Pop 80 ans ou plus en 2016 (princ)	>23	23	18	15	14	12	11	10	<10	<10
P16_POPMEN15P	Pop mén 15 ans ou plus en 2016 (princ)	>4	>4	>4	>4	>4	>4	>4	>4	4	3
P16_POPMEN1524	Pop mén 15-24 ans en 2016 (princ)	>18	>18	18	15	13	11	10	8	7	<7
P16_POPMEN2554	Pop mén 25-54 ans en 2016 (princ)	>7	>7	>7	>7	>7	>7	>7	7	5	3
P16_POPMEN5579	Pop mén 55-79 ans en 2016 (princ)	>10	>10	>10	>10	>10	10	9	7	6	4
P16_POPMEN80P	Pop mén 80 ans ou plus en 2016 (princ)	>23	23	18	15	14	12	11	10	<10	<10
P16_POP15P_PSEUL	Pop 15 ans ou plus ans vivant seule en 2016 (princ)	>14	>14	14	11	10	8	7	6	5	3
P16_POP1524_PSEUL	Pop 15-24 ans vivant seule en 2016 (princ)	>23	23	18	17	15	14	13	12	11	<11
P16_POP2554_PSEUL	Pop 25-54 ans vivant seule en 2016 (princ)	>21	21	15	13	11	9	8	7	6	<6
P16_POP5579_PSEUL	Pop 55-79 ans vivant seule en 2016 (princ)	>21	21	15	13	11	9	8	7	6	<6
P16_POP80P_PSEUL	Pop 80 ans ou plus vivant seule en 2016 (princ)	>23	23	17	15	13	11	10	<10	<10	<10
P16_POP15P_MARIEE	Pop 15 ans ou plus Mariée en 2016 (princ)	>11	>11	>11	>11	>11	>11	11	9	7	4
P16_POP15P_NONMARIEE	Pop 15 ans ou plus Non mariée en 2016 (princ)	>6	>6	>6	>6	>6	>6	>6	6	5	3
C16_MEN_CS1	Ménages Pers Réf Agri. expl. en 2016 (compl)	>26	26	<26	<26	<26	<26	<26	<26	<26	<26
C16_MEN_CS2	Ménages Pers Réf Art. Comm. Chef entr. en 2016 (compl)	>22	22	17	15	13	<13	<13	<13	<13	<13
C16_MEN_CS3	Ménages Pers Réf Cadre Prof int sup en 2016 (compl)	>22	22	16	13	12	10	9	7	6	<6
C16_MEN_CS4	Ménages Pers Réf Prof intermédiaire en 2016 (compl)	>20	20	14	12	11	9	8	7	6	<6
C16_MEN_CS5	Ménages Pers Réf Employé en 2016 (compl)	>21	21	15	12	11	9	8	7	5	<5
C16_MEN_CS6	Ménages Pers Réf Ouvrier en 2016 (compl)	>22	22	16	13	11	9	8	7	5	<5
C16_MEN_CS7	Ménages Pers Réf Retraité en 2016 (compl)	>14	>14	14	12	10	9	8	7	6	<6
C16_MEN_CS8	Ménages Pers Réf Autre en 2016 (compl)	>22	22	16	13	12	10	9	8	7	<7
C16_PMEN_CS1	Pop mén Pers Réf Agri. expl. en 2016 (compl)	>48	48	36	<36	<36	<36	<36	<36	<36	<36
C16_PMEN_CS2	Pop mén Pers Réf Art Com Chef entr. en 2016 (compl)	>36	36	27	24	21	19	17	15	<15	<15
C16_PMEN_CS3	Pop mén Pers Réf Cadre Prof int sup en 2016 (compl)	>36	36	27	22	20	17	15	13	10	7
C16_PMEN_CS4	Pop mén Pers Réf Prof intermédiaire en 2016 (compl)	>24	>24	24	20	17	15	13	11	9	<9
C16_PMEN_CS5	Pop mén Pers Réf Employé en 2016 (compl)	>25	>25	25	21	18	15	13	11	9	<9
C16_PMEN_CS6	Pop mén Pers Réf Ouvrier en 2016 (compl)	>36	36	26	22	19	16	14	12	10	<10
C16_PMEN_CS7	Pop mén Pers Réf Retraité en 2016 (compl)	>16	>16	>16	>16	16	13	11	9	7	4
C16_PMEN_CS8	Pop mén Pers Réf Autre en 2016 (compl)	>34	34	25	21	18	15	14	12	10	<10
C16_FAM	Familles en 2016 (compl)	>7	>7	>7	>7	>7	>7	7	6	4	2
C16_COUPAENF	Fam Couple avec enfant(s) en 2016 (compl)	>18	>18	18	14	12	10	8	7	5	<5
C16_FAMMONO	Fam Monoparentales en 2016 (compl)	>23	23	17	14	12	10	9	7	<7	<7
C16_COUPSENF	Fam Couple sans enfant en 2016 (compl)	>17	17	12	11	10	8	7	7	6	<6
C16_NE24F0	Fam 0 enfant moins 25 ans en 2016 (compl)	>12	>12	12	10	9	8	7	6	5	<5
C16_NE24F1	Fam 1 enfant moins 25 ans en 2016 (compl)	>21	21	15	13	11	9	8	7	<7	<7
C16_NE24F2	Fam 2 enfants moins 25 ans en 2016 (compl)	>23	23	16	14	12	10	8	7	<7	<7
C16_NE24F3	Fam 3 enfants moins 25 ans en 2016 (compl)	>24	24	17	14	12	9	<9	<9	<9	<9
C16_NE24F4P	Fam 4 enfants ou plus moins 25 ans en 2016 (compl)	>24	24	16	13	11	<11	<11	<11	<11	<11
\.


-- Completed on 2020-11-06 10:51:07

--
-- PostgreSQL database dump complete
--

