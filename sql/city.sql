--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 11:07:20

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
-- TOC entry 201 (class 1259 OID 16562)
-- Name: city; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.city (
    city_id bigint DEFAULT nextval('public.city_city_id_seq'::regclass) NOT NULL,
    insee_com integer,
    nom_com character varying(255),
    insee_dep integer,
    nom_dep character varying(255),
    population integer,
    insee_reg integer,
    nom_reg character varying(255)
);


ALTER TABLE public.city OWNER TO bubu;

--
-- TOC entry 3653 (class 0 OID 16562)
-- Dependencies: 201
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.city (city_id, insee_com, nom_com, insee_dep, nom_dep, population, insee_reg, nom_reg) FROM stdin;
3027	31004	Ayguesvives	31	HAUTE-GARONNE	2641	76	Occitanie
3028	31025	Aureville	31	HAUTE-GARONNE	875	76	Occitanie
3029	31035	Auzeville-Tolosane	31	HAUTE-GARONNE	4161	76	Occitanie
3030	31036	Auzielle	31	HAUTE-GARONNE	1446	76	Occitanie
3031	31048	Baziège	31	HAUTE-GARONNE	3338	76	Occitanie
3032	31057	Belberaud	31	HAUTE-GARONNE	1502	76	Occitanie
3033	31058	Belbèze-de-Lauragais	31	HAUTE-GARONNE	121	76	Occitanie
3034	31113	Castanet-Tolosan	31	HAUTE-GARONNE	12963	76	Occitanie
3035	31148	Clermont-le-Fort	31	HAUTE-GARONNE	512	76	Occitanie
3036	31151	Corronsac	31	HAUTE-GARONNE	800	76	Occitanie
3037	31161	Deyme	31	HAUTE-GARONNE	1119	76	Occitanie
3038	31162	Donneville	31	HAUTE-GARONNE	1020	76	Occitanie
3039	31169	Escalquens	31	HAUTE-GARONNE	6557	76	Occitanie
3040	31171	Espanès	31	HAUTE-GARONNE	322	76	Occitanie
3041	31192	Fourquevaux	31	HAUTE-GARONNE	757	76	Occitanie
3042	31227	Goyrans	31	HAUTE-GARONNE	846	76	Occitanie
3043	31240	Issus	31	HAUTE-GARONNE	593	76	Occitanie
3044	31249	Labastide-Beauvoir	31	HAUTE-GARONNE	1278	76	Occitanie
3045	31254	Labège	31	HAUTE-GARONNE	4117	76	Occitanie
3046	31259	Lacroix-Falgarde	31	HAUTE-GARONNE	2048	76	Occitanie
3047	31284	Lauzerville	31	HAUTE-GARONNE	1565	76	Occitanie
3048	31340	Mervilla	31	HAUTE-GARONNE	266	76	Occitanie
3049	31366	Montbrun-Lauragais	31	HAUTE-GARONNE	590	76	Occitanie
3050	31381	Montgiscard	31	HAUTE-GARONNE	2323	76	Occitanie
3051	31384	Montlaur	31	HAUTE-GARONNE	1447	76	Occitanie
3052	31401	Noueilles	31	HAUTE-GARONNE	404	76	Occitanie
3053	31402	Odars	31	HAUTE-GARONNE	855	76	Occitanie
3054	31409	Péchabou	31	HAUTE-GARONNE	2151	76	Occitanie
3055	31411	Pechbusque	31	HAUTE-GARONNE	863	76	Occitanie
3056	31429	Pompertuzat	31	HAUTE-GARONNE	2256	76	Occitanie
3057	31437	Pouze	31	HAUTE-GARONNE	89	76	Occitanie
3058	31446	Ramonville-Saint-Agne	31	HAUTE-GARONNE	14145	76	Occitanie
3059	31448	Rebigue	31	HAUTE-GARONNE	488	76	Occitanie
3060	31568	Varennes	31	HAUTE-GARONNE	268	76	Occitanie
3061	31575	Vieille-Toulouse	31	HAUTE-GARONNE	1160	76	Occitanie
3062	31578	Vigoulet-Auzil	31	HAUTE-GARONNE	891	76	Occitanie
\.


--
-- TOC entry 3531 (class 2606 OID 16570)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


-- Completed on 2020-11-06 11:07:26

--
-- PostgreSQL database dump complete
--

