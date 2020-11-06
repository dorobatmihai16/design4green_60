--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:57:22

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
-- TOC entry 203 (class 1259 OID 16579)
-- Name: quintiles; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.quintiles (
    insee_com numeric NOT NULL,
    insee_dep numeric NOT NULL,
    insee_reg numeric NOT NULL,
    population_legale numeric,
    acces_aux_interfaces_numeriques numeric NOT NULL,
    acces_a_l_information numeric NOT NULL,
    global_acces numeric NOT NULL,
    competences_administatives numeric NOT NULL,
    competences_numeriques_scolaires numeric NOT NULL,
    global_competences numeric NOT NULL,
    score_global numeric NOT NULL,
    id integer NOT NULL,
    nom_com character varying,
    nom_dep character varying,
    nom_reg character varying
);


ALTER TABLE public.quintiles OWNER TO bubu;

--
-- TOC entry 205 (class 1259 OID 16591)
-- Name: quintiles_id_seq; Type: SEQUENCE; Schema: public; Owner: bubu
--

CREATE SEQUENCE public.quintiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quintiles_id_seq OWNER TO bubu;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 205
-- Name: quintiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bubu
--

ALTER SEQUENCE public.quintiles_id_seq OWNED BY public.quintiles.id;


--
-- TOC entry 3529 (class 2604 OID 16593)
-- Name: quintiles id; Type: DEFAULT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.quintiles ALTER COLUMN id SET DEFAULT nextval('public.quintiles_id_seq'::regclass);


--
-- TOC entry 3653 (class 0 OID 16579)
-- Dependencies: 203
-- Data for Name: quintiles; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.quintiles (insee_com, insee_dep, insee_reg, population_legale, acces_aux_interfaces_numeriques, acces_a_l_information, global_acces, competences_administatives, competences_numeriques_scolaires, global_competences, score_global, id, nom_com, nom_dep, nom_reg) FROM stdin;
31004	31	76	2641	5	5	5	2	1	1	5	2992	Ayguesvives	HAUTE-GARONNE	Occitanie
31025	31	76	875	3	5	5	2	1	1	4	2993	Aureville	HAUTE-GARONNE	Occitanie
31035	31	76	4161	3	5	5	5	1	5	5	2994	Auzeville-Tolosane	HAUTE-GARONNE	Occitanie
31036	31	76	1446	4	5	5	3	2	2	5	2995	Auzielle	HAUTE-GARONNE	Occitanie
31048	31	76	3338	4	4	5	2	5	3	4	2996	Baziège	HAUTE-GARONNE	Occitanie
31057	31	76	1502	5	3	4	3	3	2	3	2997	Belberaud	HAUTE-GARONNE	Occitanie
31058	31	76	121	4	5	5	2	3	1	4	2998	Belbèze-de-Lauragais	HAUTE-GARONNE	Occitanie
31113	31	76	12963	4	5	5	3	3	3	5	2999	Castanet-Tolosan	HAUTE-GARONNE	Occitanie
31148	31	76	512	4	5	5	4	4	4	5	3000	Clermont-le-Fort	HAUTE-GARONNE	Occitanie
31151	31	76	800	4	5	5	2	1	1	5	3001	Corronsac	HAUTE-GARONNE	Occitanie
31161	31	76	1119	5	5	5	3	1	1	5	3002	Deyme	HAUTE-GARONNE	Occitanie
31162	31	76	1020	5	5	5	2	3	2	5	3003	Donneville	HAUTE-GARONNE	Occitanie
31169	31	76	6557	3	5	5	3	3	3	5	3004	Escalquens	HAUTE-GARONNE	Occitanie
31171	31	76	322	4	5	5	3	2	2	5	3005	Espanès	HAUTE-GARONNE	Occitanie
31192	31	76	757	5	5	5	2	4	3	5	3006	Fourquevaux	HAUTE-GARONNE	Occitanie
31227	31	76	846	2	5	5	2	1	1	4	3007	Goyrans	HAUTE-GARONNE	Occitanie
31240	31	76	593	5	5	5	2	1	1	5	3008	Issus	HAUTE-GARONNE	Occitanie
31249	31	76	1278	5	5	5	2	3	2	5	3009	Labastide-Beauvoir	HAUTE-GARONNE	Occitanie
31254	31	76	4117	4	3	4	5	3	5	5	3010	Labège	HAUTE-GARONNE	Occitanie
31259	31	76	2048	4	5	5	3	4	3	5	3011	Lacroix-Falgarde	HAUTE-GARONNE	Occitanie
31284	31	76	1565	4	5	5	3	1	1	4	3012	Lauzerville	HAUTE-GARONNE	Occitanie
31340	31	76	266	2	5	5	2	3	1	4	3013	Mervilla	HAUTE-GARONNE	Occitanie
31366	31	76	590	4	5	5	2	1	1	5	3014	Montbrun-Lauragais	HAUTE-GARONNE	Occitanie
31381	31	76	2323	5	4	4	2	4	2	3	3015	Montgiscard	HAUTE-GARONNE	Occitanie
31384	31	76	1447	5	5	5	2	2	2	5	3016	Montlaur	HAUTE-GARONNE	Occitanie
31401	31	76	404	5	5	5	3	1	2	5	3017	Noueilles	HAUTE-GARONNE	Occitanie
31402	31	76	855	4	5	5	2	4	2	5	3018	Odars	HAUTE-GARONNE	Occitanie
31409	31	76	2151	4	5	5	3	1	1	5	3019	Péchabou	HAUTE-GARONNE	Occitanie
31411	31	76	863	2	5	5	2	1	1	4	3020	Pechbusque	HAUTE-GARONNE	Occitanie
31429	31	76	2256	5	5	5	3	1	2	5	3021	Pompertuzat	HAUTE-GARONNE	Occitanie
31437	31	76	89	5	5	5	1	5	1	4	3022	Pouze	HAUTE-GARONNE	Occitanie
31446	31	76	14145	5	5	5	5	3	5	5	3023	Ramonville-Saint-Agne	HAUTE-GARONNE	Occitanie
31448	31	76	488	4	5	5	2	3	2	5	3024	Rebigue	HAUTE-GARONNE	Occitanie
31568	31	76	268	5	5	5	2	2	1	5	3025	Varennes	HAUTE-GARONNE	Occitanie
31575	31	76	1160	1	5	5	2	4	2	4	3026	Vieille-Toulouse	HAUTE-GARONNE	Occitanie
31578	31	76	891	1	5	5	3	5	4	5	3027	Vigoulet-Auzil	HAUTE-GARONNE	Occitanie
\.


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 205
-- Name: quintiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bubu
--

SELECT pg_catalog.setval('public.quintiles_id_seq', 3027, true);


--
-- TOC entry 3531 (class 2606 OID 16595)
-- Name: quintiles quintiles_pkey; Type: CONSTRAINT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.quintiles
    ADD CONSTRAINT quintiles_pkey PRIMARY KEY (id);


-- Completed on 2020-11-06 10:57:27

--
-- PostgreSQL database dump complete
--

