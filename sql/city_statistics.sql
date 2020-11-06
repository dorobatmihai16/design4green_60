--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 11:07:53

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
-- TOC entry 199 (class 1259 OID 16491)
-- Name: city_statistics; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.city_statistics (
    city_id bigint NOT NULL,
    insee_com integer,
    nom_com character varying(255),
    insee_dep integer,
    nom_dep character varying(255),
    part_des_chomeurs double precision,
    part_des_familles_monoparentale double precision,
    part_des_menages double precision,
    part_des_menages_une_persone double precision,
    part_des_non_ou_peut_diplomes double precision,
    part_des_personnes_age_15_29 double precision,
    population integer,
    insee_reg integer,
    nom_reg character varying(255),
    revenus_median_disponible double precision,
    services_publics_individu double precision,
    services_publics double precision,
    taux_de_couverture_hd_thd double precision,
    taux_de_couverture_mobile double precision,
    taux_de_pauvrete double precision
);


ALTER TABLE public.city_statistics OWNER TO bubu;

--
-- TOC entry 198 (class 1259 OID 16489)
-- Name: city_statistics_city_id_seq; Type: SEQUENCE; Schema: public; Owner: bubu
--

CREATE SEQUENCE public.city_statistics_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_statistics_city_id_seq OWNER TO bubu;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 198
-- Name: city_statistics_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bubu
--

ALTER SEQUENCE public.city_statistics_city_id_seq OWNED BY public.city_statistics.city_id;


--
-- TOC entry 3529 (class 2604 OID 16494)
-- Name: city_statistics city_id; Type: DEFAULT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.city_statistics ALTER COLUMN city_id SET DEFAULT nextval('public.city_statistics_city_id_seq'::regclass);


--
-- TOC entry 3654 (class 0 OID 16491)
-- Dependencies: 199
-- Data for Name: city_statistics; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.city_statistics (city_id, insee_com, nom_com, insee_dep, nom_dep, part_des_chomeurs, part_des_familles_monoparentale, part_des_menages, part_des_menages_une_persone, part_des_non_ou_peut_diplomes, part_des_personnes_age_15_29, population, insee_reg, nom_reg, revenus_median_disponible, services_publics_individu, services_publics, taux_de_couverture_hd_thd, taux_de_couverture_mobile, taux_de_pauvrete) FROM stdin;
\.


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 198
-- Name: city_statistics_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bubu
--

SELECT pg_catalog.setval('public.city_statistics_city_id_seq', 1, false);


--
-- TOC entry 3531 (class 2606 OID 16499)
-- Name: city_statistics city_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.city_statistics
    ADD CONSTRAINT city_statistics_pkey PRIMARY KEY (city_id);


-- Completed on 2020-11-06 11:07:57

--
-- PostgreSQL database dump complete
--

