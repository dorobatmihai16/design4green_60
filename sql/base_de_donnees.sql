--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 11:06:49

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
-- TOC entry 204 (class 1259 OID 16585)
-- Name: base_de_donnees; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.base_de_donnees (
    nom_com character varying NOT NULL,
    insee_com numeric NOT NULL,
    insee_dep numeric NOT NULL,
    nom_dep character varying NOT NULL,
    insee_reg numeric NOT NULL,
    population_legale numeric NOT NULL,
    taux_de_couverture_hd_thd numeric NOT NULL,
    taux_de_pauvrete numeric NOT NULL,
    revenus_median_disponible numeric NOT NULL,
    part_des_familles_monoparentales numeric NOT NULL,
    part_des_menages_d_une_personne numeric NOT NULL,
    services_publics_individu numeric NOT NULL,
    services_publics numeric NOT NULL,
    part_des_chomeurs numeric NOT NULL,
    part_des_personnes_agees_de_15_29_ans numeric NOT NULL,
    part_des_personnes_agees_de_65_ans_plus numeric NOT NULL,
    part_des_non_ou_peu_diplomes_dans_la_population_non_scolarisee_ numeric NOT NULL,
    id integer NOT NULL,
    taux_de_couverture_mobile numeric
);


ALTER TABLE public.base_de_donnees OWNER TO bubu;

--
-- TOC entry 206 (class 1259 OID 16603)
-- Name: base_de_donnees_id_seq; Type: SEQUENCE; Schema: public; Owner: bubu
--

CREATE SEQUENCE public.base_de_donnees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_de_donnees_id_seq OWNER TO bubu;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 206
-- Name: base_de_donnees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bubu
--

ALTER SEQUENCE public.base_de_donnees_id_seq OWNED BY public.base_de_donnees.id;


--
-- TOC entry 3529 (class 2604 OID 16605)
-- Name: base_de_donnees id; Type: DEFAULT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.base_de_donnees ALTER COLUMN id SET DEFAULT nextval('public.base_de_donnees_id_seq'::regclass);


--
-- TOC entry 3653 (class 0 OID 16585)
-- Dependencies: 204
-- Data for Name: base_de_donnees; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.base_de_donnees (nom_com, insee_com, insee_dep, nom_dep, insee_reg, population_legale, taux_de_couverture_hd_thd, taux_de_pauvrete, revenus_median_disponible, part_des_familles_monoparentales, part_des_menages_d_une_personne, services_publics_individu, services_publics, part_des_chomeurs, part_des_personnes_agees_de_15_29_ans, part_des_personnes_agees_de_65_ans_plus, part_des_non_ou_peu_diplomes_dans_la_population_non_scolarisee_, id, taux_de_couverture_mobile) FROM stdin;
Ayguesvives	31004	31	HAUTE-GARONNE	76	2641	0.997	0.13	25277	0.119	0.191	0	0	0.071639586	0.126845892	0.117	0.162	1	1
Aureville	31025	31	HAUTE-GARONNE	76	875	1	0.13	31503	0.089	0.125	0	0	0.036363636	0.136818687	0.147	0.093	2	1
Auzeville-Tolosane	31035	31	HAUTE-GARONNE	76	4161	1	0.078	27424	0.164	0.501	0	0	0.093161288	0.336659375	0.156	0.103	3	1
Auzielle	31036	31	HAUTE-GARONNE	76	1446	1	0.13	27157	0.13	0.197	0	0	0.071604069	0.137153896	0.18	0.107	4	1
Baziège	31048	31	HAUTE-GARONNE	76	3338	1	0.068	22214	0.117	0.228	0.000599161	2	0.068984359	0.13241462	0.168	0.231	5	1
Belberaud	31057	31	HAUTE-GARONNE	76	1502	1	0.13	25880	0.077	0.161	0.000665779	1	0.072840395	0.156044273	0.163	0.169	6	1
Belbèze-de-Lauragais	31058	31	HAUTE-GARONNE	76	121	1	0.13	27119	0	0.104	0	0	0.034482759	0.135135135	0.153	0.183	7	1
Castanet-Tolosan	31113	31	HAUTE-GARONNE	76	12963	1	0.098	23484	0.154	0.389	0.000231428	3	0.094954128	0.172825171	0.159	0.166	8	1
Clermont-le-Fort	31148	31	HAUTE-GARONNE	76	512	1	0.13	27608	0.144	0.245	0	0	0.148148148	0.11557669	0.165	0.221	9	1
Corronsac	31151	31	HAUTE-GARONNE	76	800	1	0.13	27956	0.064	0.19	0	0	0.069135802	0.12875	0.128	0.109	10	1
Deyme	31161	31	HAUTE-GARONNE	76	1119	1	0.13	25921	0.122	0.26	0	0	0.073573574	0.135067114	0.122	0.134	11	1
Donneville	31162	31	HAUTE-GARONNE	76	1020	1	0.13	24647	0.083	0.21	0	0	0.070038911	0.133870631	0.148	0.182	12	1
Escalquens	31169	31	HAUTE-GARONNE	76	6557	1	0.061	25478	0.154	0.252	0.000152509	1	0.081449365	0.166387067	0.176	0.172	13	1
Espanès	31171	31	HAUTE-GARONNE	76	322	1	0.13	26964	0	0.208	0	0	0.086092715	0.151898734	0.146	0.135	14	1
Fourquevaux	31192	31	HAUTE-GARONNE	76	757	1	0.13	25402	0.115	0.172	0	0	0.069641091	0.135204082	0.208	0.164	15	1
Goyrans	31227	31	HAUTE-GARONNE	76	846	0.991	0.13	34492	0.04	0.179	0	0	0.072289157	0.125994113	0.17	0.096	16	1
Issus	31240	31	HAUTE-GARONNE	76	593	1	0.13	23461	0.118	0.163	0	0	0.064724919	0.10455312	0.078	0.158	17	1
Labastide-Beauvoir	31249	31	HAUTE-GARONNE	76	1278	1	0.13	23052	0.128	0.223	0	0	0.071290773	0.118479582	0.124	0.213	18	1
Labège	31254	31	HAUTE-GARONNE	76	4117	1	0.093	23214	0.16	0.551	0.001214477	5	0.112801738	0.322461919	0.164	0.173	19	1
Lacroix-Falgarde	31259	31	HAUTE-GARONNE	76	2048	1	0.13	28892	0.104	0.27	0	0	0.087768932	0.127668213	0.216	0.122	20	1
Lauzerville	31284	31	HAUTE-GARONNE	76	1565	1	0.13	29456	0.071	0.091	0	0	0.068509615	0.15302267	0.099	0.075	21	1
Mervilla	31340	31	HAUTE-GARONNE	76	266	1	0.13	34692	0	0.19	0	0	0.034782609	0.110294118	0.213	0.104	22	1
Montbrun-Lauragais	31366	31	HAUTE-GARONNE	76	590	1	0.13	28196	0.167	0.193	0	0	0.047180992	0.131644268	0.1	0.118	23	1
Montgiscard	31381	31	HAUTE-GARONNE	76	2323	1	0.13	24227	0.119	0.294	0.000860956	2	0.0739215	0.124605678	0.183	0.171	24	1
Montlaur	31384	31	HAUTE-GARONNE	76	1447	1	0.13	24476	0.095	0.181	0	0	0.056626506	0.145304569	0.126	0.163	25	1
Noueilles	31401	31	HAUTE-GARONNE	76	404	1	0.13	23726	0.08	0.138	0	0	0.076233184	0.159090909	0.083	0.178	26	1
Odars	31402	31	HAUTE-GARONNE	76	855	1	0.13	27124	0.162	0.2	0	0	0.06151993	0.133765421	0.162	0.211	27	1
Péchabou	31409	31	HAUTE-GARONNE	76	2151	1	0.13	28382	0.098	0.234	0	0	0.079406632	0.141099874	0.114	0.099	28	1
Pechbusque	31411	31	HAUTE-GARONNE	76	863	1	0.13	36077	0.089	0.164	0	0	0.06372549	0.112244898	0.198	0.058	29	1
Pompertuzat	31429	31	HAUTE-GARONNE	76	2256	1	0.13	25968	0.108	0.218	0	0	0.068651778	0.170847751	0.126	0.108	30	1
Pouze	31437	31	HAUTE-GARONNE	76	89	1	0.13	21989	0	0.25	0	0	0	0.079545455	0.182	0.225	31	1
Ramonville-Saint-Agne	31446	31	HAUTE-GARONNE	76	14145	1	0.144	23226	0.185	0.435	0.000353482	5	0.134017413	0.212615891	0.182	0.163	32	1
Rebigue	31448	31	HAUTE-GARONNE	76	488	1	0.13	30398	0.065	0.167	0	0	0.056523334	0.149892934	0.218	0.092	33	1
Varennes	31568	31	HAUTE-GARONNE	76	268	1	0.13	24831	0.059	0.19	0	0	0.065217391	0.100746269	0.138	0.163	34	1
Vieille-Toulouse	31575	31	HAUTE-GARONNE	76	1160	1	0.13	41491	0.042	0.191	0	0	0.071138211	0.121471343	0.269	0.084	35	1
Vigoulet-Auzil	31578	31	HAUTE-GARONNE	76	891	1	0.13	38724	0.09	0.149	0	0	0.122549546	0.128828306	0.307	0.094	36	1
\.


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 206
-- Name: base_de_donnees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bubu
--

SELECT pg_catalog.setval('public.base_de_donnees_id_seq', 36, true);


--
-- TOC entry 3531 (class 2606 OID 16607)
-- Name: base_de_donnees base_de_donnees_pkey; Type: CONSTRAINT; Schema: public; Owner: bubu
--

ALTER TABLE ONLY public.base_de_donnees
    ADD CONSTRAINT base_de_donnees_pkey PRIMARY KEY (id);


-- Completed on 2020-11-06 11:06:53

--
-- PostgreSQL database dump complete
--

