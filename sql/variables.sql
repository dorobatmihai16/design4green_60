--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 11:01:03

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
-- TOC entry 207 (class 1259 OID 16622)
-- Name: variables; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.variables (
    var_id character varying NOT NULL,
    var_lib character varying NOT NULL,
    var_lib_long character varying NOT NULL
);


ALTER TABLE public.variables OWNER TO bubu;

--
-- TOC entry 3652 (class 0 OID 16622)
-- Dependencies: 207
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.variables (var_id, var_lib, var_lib_long) FROM stdin;
IRIS	IRIS	Code du département suivi du numéro de commune ou du numéro d'arrondissement municipal suivi du numéro d'IRIS
REG	Région	Code de la région
DEP	Département	Code du département
UU2010	Unité urbaine	Code du département ou "00" pour les unités urbaines qui s'étendent sur plusieurs départements voire au-delà de la frontière suivi d'un code sur une position indiquant la taille de la population puis d'un numéro d'ordre à l'intérieur de la taille
COM	Commune ou ARM	Code du département suivi du numéro de commune ou du numéro d'arrondissement municipal pour Paris Lyon et Marseille
LIBCOM	Libellé commune ou ARM	Libellé de la commune ou de l'arrondissement municipal pour Paris Lyon et Marseille
TRIRIS	TRIRIS	Code du département suivi d'un numéro d'ordre à l'intérieur du département sur trois positions puis d'un indicateur de TRIRIS
GRD_QUART	Grand quartier	Code du département suivi du numéro de commune ou du numéro d'arrondissement municipal pour Paris Lyon et Marseille suivi du numéro de grand quartier
LIBIRIS	Libellé de l'IRIS	Libellé de l'IRIS à l'intérieur de la commune ou de l'arrondissement municipal pour Paris Lyon et Marseille
TYP_IRIS	Type d'IRIS	Type d'IRIS : habitat (H), activité (A), divers (D), Autre (Z)
MODIF_IRIS	Modification de l'IRIS	Type de modification de l'IRIS
LAB_IRIS	Label de l'IRIS	Label de qualité de l'IRIS
P16_POP	Population en 2016 (princ)	Population
P16_POP0002	Pop 0-2 ans en 2016 (princ)	Nombre de personnes de 0 à 2 ans
P16_POP0305	Pop 3-5 ans en 2016 (princ)	Nombre de personnes de 3 à 5 ans
P16_POP0610	Pop 6-10 ans en 2016 (princ)	Nombre de personnes de 6 à 10 ans
P16_POP1117	Pop 11-17 ans en 2016 (princ)	Nombre de personnes de 11 à 17 ans
P16_POP1824	Pop 18-24 ans en 2016 (princ)	Nombre de personnes de 18 à 24 ans
P16_POP2539	Pop 25-39 ans en 2016 (princ)	Nombre de personnes de 25 à 39 ans
P16_POP4054	Pop 40-54 ans en 2016 (princ)	Nombre de personnes de 40 à 54 ans
P16_POP5564	Pop 55-64 ans en 2016 (princ)	Nombre de personnes de 55 à 64 ans
P16_POP6579	Pop 65-79 ans en 2016 (princ)	Nombre de personnes de 65 à 79 ans
P16_POP80P	Pop 80 ans ou plus en 2016 (princ)	Nombre de personnes de 80 ans ou plus
P16_POP0014	Pop 0-14 ans en 2016 (princ)	Nombre de personnes de 0 à 14 ans
P16_POP1529	Pop 15-29 ans en 2016 (princ)	Nombre de personnes de 15 à 29 ans
P16_POP3044	Pop 30-44 ans en 2016 (princ)	Nombre de personnes de 30 à 44 ans
P16_POP4559	Pop 45-59 ans en 2016 (princ)	Nombre de personnes de 45 à 59 ans
P16_POP6074	Pop 60-74 ans en 2016 (princ)	Nombre de personnes de 60 à 74 ans
P16_POP75P	Pop 75 ans ou plus en 2016 (princ)	Nombre de personnes de 75 ans ou plus
P16_POP0019	Pop 0-19 ans en 2016 (princ)	Nombre de personnes de 0 à 19 ans
P16_POP2064	Pop 20-64 ans en 2016 (princ)	Nombre de personnes de 20 à 64 ans
P16_POP65P	Pop 65 ans ou plus en 2016 (princ)	Nombre de personnes de 65 ans ou plus
P16_POPH	Pop Hommes en 2016 (princ)	Nombre d'hommes
P16_H0014	Pop Hommes 0-14 ans en 2016 (princ)	Nombre d'hommes de 0 à 14 ans
P16_H1529	Pop Hommes 15-29 ans en 2016 (princ)	Nombre d'hommes de 15 à 29 ans
P16_H3044	Pop Hommes 30-44 ans en 2016 (princ)	Nombre d'hommes de 30 à 44 ans
P16_H4559	Pop Hommes 45-59 ans en 2016 (princ)	Nombre d'hommes de 45 à 59 ans
P16_H6074	Pop Hommes 60-74 ans en 2016 (princ)	Nombre d'hommes de 60 à 74 ans
P16_H75P	Pop Hommes 75 ans ou plus en 2016 (princ)	Nombre d'hommes de 75 ans ou plus
P16_H0019	Pop Hommes 0-19 ans en 2016 (princ)	Nombre d'hommes de 0 à 19 ans
P16_H2064	Pop Hommes 20-64 ans en 2016 (princ)	Nombre d'hommes de 20 à 64 ans
P16_H65P	Pop Hommes 65 ans ou plus en 2016 (princ)	Nombre d'hommes de 65 ans ou plus
P16_POPF	Pop Femmes en 2016 (princ)	Nombre de femmes
P16_F0014	Pop Femmes 0-14 ans en 2016 (princ)	Nombre de femmes de 0 à 14 ans
P16_F1529	Pop Femmes 15-29 ans en 2016 (princ)	Nombre de femmes de 15 à 29 ans
P16_F3044	Pop Femmes 30-44 ans en 2016 (princ)	Nombre de femmes de 30 à 44 ans
P16_F4559	Pop Femmes 45-59 ans en 2016 (princ)	Nombre de femmes de 45 à 59 ans
P16_F6074	Pop Femmes 60-74 ans en 2016 (princ)	Nombre de femmes de 60 à 74 ans
P16_F75P	Pop Femmes 75 ans ou plus en 2016 (princ)	Nombre de femmes de 75 ans ou plus
P16_F0019	Pop Femmes 0-19 ans en 2016 (princ)	Nombre de femmes de 0 à 19 ans
P16_F2064	Pop Femmes 20-64 ans en 2016 (princ)	Nombre de femmes de 20 à 64 ans
P16_F65P	Pop Femmes 65 ans ou plus en 2016 (princ)	Nombre de femmes de 65 ans ou plus
C16_POP15P	Pop 15 ans ou plus en 2016 (compl)	Nombre de personnes de 15 ans ou plus
C16_POP15P_CS1	Pop 15 ans ou plus Agriculteurs exploitants en 2016 (compl)	Nombre de personnes de 15 ans ou plus Agriculteurs exploitants
C16_POP15P_CS2	Pop 15 ans ou plus Artisans, Comm., Chefs entr. en 2016 (compl)	Nombre de personnes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
C16_POP15P_CS3	Pop 15 ans ou plus Cadres, Prof. intel. sup. en 2016 (compl)	Nombre de personnes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
C16_POP15P_CS4	Pop 15 ans ou plus Prof. intermédiaires en 2016 (compl)	Nombre de personnes de 15 ans ou plus Professions intermédiaires
C16_POP15P_CS5	Pop 15 ans ou plus Employés en 2016 (compl)	Nombre de personnes de 15 ans ou plus Employés
C16_POP15P_CS6	Pop 15 ans ou plus Ouvriers en 2016 (compl)	Nombre de personnes de 15 ans ou plus Ouvriers
C16_POP15P_CS7	Pop 15 ans ou plus Retraités en 2016 (compl)	Nombre de personnes de 15 ans ou plus Retraités
C16_POP15P_CS8	Pop 15 ans ou plus Autres en 2016 (compl)	Nombre de personnes de 15 ans ou plus Autres sans activité professionnelle
C16_H15P	Pop 15 ans ou plus Hommes en 2016 (compl)	Nombre d'hommes de 15 ans ou plus
C16_H15P_CS1	Pop 15 ans ou plus Hommes Agriculteurs exploitants en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Agriculteurs exploitants
C16_H15P_CS2	Pop 15 ans ou plus Hommes Artisans, Comm., Chefs entr. en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
C16_H15P_CS3	Pop 15 ans ou plus Hommes Cadres, Prof. intel. sup. en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
C16_H15P_CS4	Pop 15 ans ou plus Hommes Prof. intermédiaires en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Professions intermédiaires
C16_H15P_CS5	Pop 15 ans ou plus Hommes Employés en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Employés
C16_H15P_CS6	Pop 15 ans ou plus Hommes Ouvriers en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Ouvriers
C16_H15P_CS7	Pop 15 ans ou plus Hommes Retraités en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Retraités
C16_H15P_CS8	Pop 15 ans ou plus Hommes Autres en 2016 (compl)	Nombre d'hommes de 15 ans ou plus Autres sans activité professionnelle
C16_F15P	Pop 15 ans ou plus Femmes en 2016 (compl)	Nombre de femmes de 15 ans ou plus
C16_F15P_CS1	Pop 15 ans ou plus Femmes Agriculteurs exploitants en 2016 (compl)	Nombre de femmes de 15 ans ou plus Agriculteurs exploitants
C16_F15P_CS2	Pop 15 ans ou plus Femmes Artisans, Comm., Chefs entr. en 2016 (compl)	Nombre de femmes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
C16_F15P_CS3	Pop 15 ans ou plus Femmes Cadres, Prof. intel. sup. en 2016 (compl)	Nombre de femmes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
C16_F15P_CS4	Pop 15 ans ou plus Femmes Prof. intermédiaires en 2016 (compl)	Nombre de femmes de 15 ans ou plus Professions intermédiaires
C16_F15P_CS5	Pop 15 ans ou plus Femmes Employés en 2016 (compl)	Nombre de femmes de 15 ans ou plus Employés
C16_F15P_CS6	Pop 15 ans ou plus Femmes Ouvriers en 2016 (compl)	Nombre de femmes de 15 ans ou plus Ouvriers
C16_F15P_CS7	Pop 15 ans ou plus Femmes Retraités en 2016 (compl)	Nombre de femmes de 15 ans ou plus Retraités
C16_F15P_CS8	Pop 15 ans ou plus Femmes Autres en 2016 (compl)	Nombre de femmes de 15 ans ou plus Autres sans activité professionnelle
P16_POP_FR	Pop Français en 2016 (princ)	Nombre de personnes de nationalité française
P16_POP_ETR	Pop Etrangers en 2016 (princ)	Nombre de personnes étrangères
P16_POP_IMM	Pop Immigrés en 2016 (princ)	Nombres de personnes immigrées
P16_PMEN	Pop ménages en 2016 (princ)	Population des ménages
P16_PHORMEN	Pop hors ménages en 2016 (princ)	Population hors ménages
CODGEO	Code géographique	Code géographique
LIBGEO	Libellé géographique	Libellé géographique
NBMENFISC16	Nombre de ménages fiscaux	Nombre de ménages fiscaux
NBPERSMENFISC16	Nombre de personnes dans les ménages fiscaux	Nombre de personnes dans les ménages fiscaux
MED16	Médiane du niveau vie (€)	Médiane du niveau de vie (€)
PIMP16	Part des ménages fiscaux imposés (%)	Part des ménages fiscaux imposés (%)
TP6016	Taux de pauvreté-Ensemble (%)	Taux de pauvreté-Ensemble (%)
TP60AGE116	Taux de pauvreté-moins de 30 ans (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a moins de 30 ans (%)
TP60AGE216	Taux de pauvreté-30 à 39 ans  (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a de 30 à 39 ans (%)
TP60AGE316	Taux de pauvreté-40 à 49 ans (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a de 40 à 49 ans (%)
TP60AGE416	Taux de pauvreté-50 à 59 ans (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a de 50 à 59 ans (%)
TP60AGE516	Taux de pauvreté-60 à 74 ans (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a de 60 à 74 ans (%)
TP60AGE616	Taux de pauvreté-75 ans ou plus (%)	Taux de pauvreté des personnes dans les ménages dont le référent fiscal a 75 ans ou plus (%)
TP60TOL116	Taux de pauvreté-propriétaires (%)	Taux de pauvreté des personnes dans les ménages propriétaires de leur logement (%)
TP60TOL216	Taux de pauvreté-locataires (%)	Taux de pauvreté des personnes dans les ménages locataires de leur logement (%)
PACT16	Part des revenus d'activité (%)	Part des revenus d'activité (%)
PTSA16	dont part des salaires et traitements (%)	dont part des salaires et traitements (%)
PCHO16	dont part des indemnités de chômage (%)	dont part des indemnités de chômage (%)
PBEN16	dont part des revenus des activités non salariées (%)	dont part des revenus des activités non salariées (%)
PPEN16	Part des pensions, retraites et rentes (%)	Part des pensions, retraites et rentes (%)
PPAT16	Part des revenus du patrimoine et autres revenus (%)	Part des revenus du patrimoine et des autres revenus (%)
PPSOC16	Part de l'ensemble des prestations sociales (%)	Part de l'ensemble des prestations sociales (%)
PPFAM16	dont part des prestations familiales (%)	dont part des prestations familiales (%)
PPMINI16	dont part des minima sociaux (%)	dont part des minima sociaux (%)
PPLOGT16	dont part des prestations logement (%)	dont part des prestations logement (%)
PIMPOT16	Part des impôts (%)	Part des impôts (%)
D116	1er décile du niveau de vie (€)	1er décile du niveau de vie (€)
D916	9e décile du niveau de vie (€)	9e décile du niveau de vie (€)
RD16	Rapport interdécile 9e décile/1er décile	Rapport interdécile 9e décile/1er décile
\.


--
-- TOC entry 3530 (class 2606 OID 16757)
-- Name: variables variables_pkey; Type: CONSTRAINT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.variables
    ADD CONSTRAINT variables_pkey PRIMARY KEY (var_id);


-- Completed on 2020-11-06 11:01:07

--
-- PostgreSQL database dump complete
--

