--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:26:54

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
-- TOC entry 211 (class 1259 OID 16655)
-- Name: iris_families_mer; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.iris_families_mer (
    iris numeric NOT NULL,
    dep numeric NOT NULL,
    com numeric NOT NULL,
    libcom character varying NOT NULL,
    triris character varying NOT NULL,
    grd_quart numeric NOT NULL,
    libiris character varying NOT NULL,
    lab_iris numeric NOT NULL,
    c16_men numeric NOT NULL,
    c16_menpseul numeric NOT NULL,
    c16_menhseul numeric NOT NULL,
    c16_menfseul numeric NOT NULL,
    c16_mensfam numeric NOT NULL,
    c16_menfam numeric NOT NULL,
    c16_mencoupsenf numeric NOT NULL,
    c16_mencoupaenf numeric NOT NULL,
    c16_menfammono numeric NOT NULL,
    c16_pmen numeric NOT NULL,
    c16_pmen_menpseul numeric NOT NULL,
    c16_pmen_menhseul numeric NOT NULL,
    c16_pmen_menfseul numeric NOT NULL,
    c16_pmen_mensfam numeric NOT NULL,
    c16_pmen_menfam numeric NOT NULL,
    c16_pmen_mencoupsenf numeric NOT NULL,
    c16_pmen_mencoupaenf numeric NOT NULL,
    c16_pmen_menfammono numeric NOT NULL,
    p16_pop15p numeric NOT NULL,
    p16_pop1524 numeric NOT NULL,
    p16_pop2554 numeric NOT NULL,
    p16_pop5579 numeric NOT NULL,
    p16_pop80p numeric NOT NULL,
    p16_popmen15p numeric NOT NULL,
    p16_popmen1524 numeric NOT NULL,
    p16_popmen2554 numeric NOT NULL,
    p16_popmen5579 numeric NOT NULL,
    p16_popmen80p numeric NOT NULL,
    p16_pop15p_pseul numeric NOT NULL,
    p16_pop1524_pseul numeric NOT NULL,
    p16_pop2554_pseul numeric NOT NULL,
    p16_pop5579_pseul numeric NOT NULL,
    p16_pop80p_pseul numeric NOT NULL,
    p16_pop15p_mariee numeric NOT NULL,
    p16_pop15p_nonmariee numeric NOT NULL,
    c16_men_cs1 numeric NOT NULL,
    c16_men_cs2 numeric NOT NULL,
    c16_men_cs3 numeric NOT NULL,
    c16_men_cs4 numeric NOT NULL,
    c16_men_cs5 numeric NOT NULL,
    c16_men_cs6 numeric NOT NULL,
    c16_men_cs7 numeric NOT NULL,
    c16_men_cs8 numeric NOT NULL,
    c16_pmen_cs1 numeric NOT NULL,
    c16_pmen_cs2 numeric NOT NULL,
    c16_pmen_cs3 numeric NOT NULL,
    c16_pmen_cs4 numeric NOT NULL,
    c16_pmen_cs5 numeric NOT NULL,
    c16_pmen_cs6 numeric NOT NULL,
    c16_pmen_cs7 numeric NOT NULL,
    c16_pmen_cs8 numeric NOT NULL,
    c16_fam numeric NOT NULL,
    c16_coupaenf numeric NOT NULL,
    c16_fammono numeric NOT NULL,
    c16_coupsenf numeric NOT NULL,
    c16_ne24f0 numeric NOT NULL,
    c16_ne24f1 numeric NOT NULL,
    c16_ne24f2 numeric NOT NULL,
    c16_ne24f3 numeric NOT NULL,
    c16_ne24f4p numeric NOT NULL
);


ALTER TABLE public.iris_families_mer OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16655)
-- Dependencies: 211
-- Data for Name: iris_families_mer; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.iris_families_mer (iris, dep, com, libcom, triris, grd_quart, libiris, lab_iris, c16_men, c16_menpseul, c16_menhseul, c16_menfseul, c16_mensfam, c16_menfam, c16_mencoupsenf, c16_mencoupaenf, c16_menfammono, c16_pmen, c16_pmen_menpseul, c16_pmen_menhseul, c16_pmen_menfseul, c16_pmen_mensfam, c16_pmen_menfam, c16_pmen_mencoupsenf, c16_pmen_mencoupaenf, c16_pmen_menfammono, p16_pop15p, p16_pop1524, p16_pop2554, p16_pop5579, p16_pop80p, p16_popmen15p, p16_popmen1524, p16_popmen2554, p16_popmen5579, p16_popmen80p, p16_pop15p_pseul, p16_pop1524_pseul, p16_pop2554_pseul, p16_pop5579_pseul, p16_pop80p_pseul, p16_pop15p_mariee, p16_pop15p_nonmariee, c16_men_cs1, c16_men_cs2, c16_men_cs3, c16_men_cs4, c16_men_cs5, c16_men_cs6, c16_men_cs7, c16_men_cs8, c16_pmen_cs1, c16_pmen_cs2, c16_pmen_cs3, c16_pmen_cs4, c16_pmen_cs5, c16_pmen_cs6, c16_pmen_cs7, c16_pmen_cs8, c16_fam, c16_coupaenf, c16_fammono, c16_coupsenf, c16_ne24f0, c16_ne24f1, c16_ne24f2, c16_ne24f3, c16_ne24f4p) FROM stdin;
975010000	975	97501	Miquelon-Langlade	ZZZZZZ	9750100	Miquelon-Langlade	5	266	71	31	40	4	191	91	80	20	596	71	31	40	9	516	182	285	49	499	55	253	162	29	499	55	253	162	29	71	3	20	34	14	234	265	4	10	8	32	69	64	73	6	10	21	16	91	177	151	117	13	192	80	20	92	99	54	31	7	1
975020101	975	97502	Saint-Pierre	ZZZZZZ	9750201	Saint-Pierre - IRIS 0101	4	1294	515	194	321	37	742	326	297	119	2661	515	194	321	87	2059	669	1114	276	2296	239	1087	769	201	2215	238	1075	741	161	515	13	181	227	94	883	1413	0	63	162	200	280	166	396	27	0	159	405	475	615	393	578	36	747	297	122	328	383	177	142	38	7
975020102	975	97502	Saint-Pierre	ZZZZZZ	9750201	Saint-Pierre - IRIS 0102	4	1060	225	118	107	17	818	330	406	82	2667	225	118	107	50	2392	683	1499	210	2117	245	1246	601	25	2114	245	1244	600	25	225	8	96	107	14	958	1159	2	73	136	194	260	192	191	12	4	206	383	523	682	544	310	15	832	408	89	335	374	227	181	42	8
977010101	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Sous le vent	4	1289	271	162	108	118	900	457	354	89	3143	271	162	108	334	2538	1038	1284	216	2720	363	1712	576	69	2720	363	1712	576	69	278	15	167	69	28	1051	1669	5	290	64	187	251	310	157	25	10	733	138	462	610	831	295	64	935	369	98	467	497	261	157	20	0
977010102	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Centre	4	1102	285	138	148	118	699	369	300	30	2602	285	138	148	330	1987	856	1067	64	2409	270	1481	583	76	2255	258	1396	538	63	281	11	156	89	26	822	1588	5	246	89	187	241	162	123	49	20	654	202	443	576	384	202	123	723	315	34	374	398	192	128	5	0
977010103	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Au vent	4	1535	364	216	148	207	964	418	433	113	3772	364	216	148	575	2833	984	1579	271	3177	354	2084	677	62	3174	354	2082	676	62	365	12	193	132	29	1117	2060	20	354	143	231	315	271	148	54	39	959	393	590	733	738	241	79	974	433	118	423	467	295	197	15	0
978010101	978	97801	Saint-Martin	978221	9780101	Terres Basses-Baie Nettle-Sandy Ground	1	1800	554	307	247	55	1190	339	411	440	4541	554	307	247	138	3849	750	1714	1384	3406	588	1827	946	45	3364	587	1797	935	45	554	28	252	250	25	1086	2320	10	152	79	146	491	343	217	362	20	372	163	337	1368	941	349	991	1253	414	493	347	430	373	264	121	65
978010102	978	97801	Saint-Martin	978221	9780101	Marigot Est et Nord	2	770	301	160	141	20	449	133	106	210	1696	301	160	141	45	1350	289	419	642	1516	278	749	438	51	1380	277	685	383	35	301	20	143	130	8	360	1157	0	70	60	85	204	154	88	109	0	158	106	173	514	329	136	279	469	106	230	133	189	129	91	53	8
978010103	978	97801	Saint-Martin	978221	9780101	Marigot Centre et Sud	2	802	372	187	184	38	393	106	96	191	1603	372	187	184	98	1134	235	367	532	1254	162	718	346	28	1254	162	718	346	28	372	23	189	149	10	318	936	5	85	36	109	239	154	101	74	15	192	63	155	538	357	147	137	411	96	209	106	152	141	85	20	12
978010104	978	97801	Saint-Martin	978221	9780101	Saint-James-Diamant-Bellevue	1	762	222	129	94	40	500	109	198	193	2010	222	129	94	117	1671	261	799	611	1431	205	811	387	28	1431	205	811	387	28	222	2	111	94	15	404	1026	0	87	16	52	222	174	86	126	0	245	39	147	590	478	152	360	536	201	226	109	142	191	137	45	20
978010105	978	97801	Saint-Martin	978231	9780101	Spring-Concordia	1	2179	593	276	317	70	1516	246	624	646	5636	593	276	317	195	4848	536	2470	1841	3984	718	2534	709	24	3982	718	2534	708	23	593	10	351	227	5	1250	2735	3	173	145	276	793	429	143	216	3	509	328	605	2147	1208	203	632	1558	624	688	246	329	592	424	161	53
978010106	978	97801	Saint-Martin	978231	9780101	Galisbay-Agrement	1	812	208	107	102	35	568	125	211	232	2147	208	107	102	86	1852	274	888	690	1593	275	842	448	28	1593	275	842	448	28	208	3	101	97	8	481	1112	3	54	18	59	282	205	95	97	3	166	46	151	749	612	189	232	609	214	270	125	195	217	117	53	28
978010107	978	97801	Saint-Martin	978231	9780101	C. Gate-St Louis-Rambaud-Colomb.-Pic P.	1	1347	362	198	164	50	935	219	409	307	3518	362	198	164	140	3016	470	1616	930	2681	422	1589	605	66	2681	422	1589	605	66	362	5	188	156	12	868	1813	8	272	68	231	313	195	141	121	15	735	174	594	875	572	245	308	973	411	340	221	325	303	234	81	30
978010108	978	97801	Saint-Martin	978241	9780101	La Savane-Gd Case-Anse Marcel-Cul de Sac	1	3097	985	541	443	133	1979	589	848	542	7393	985	541	443	324	6084	1247	3301	1535	5604	760	3521	1262	61	5604	760	3521	1262	61	988	24	576	373	15	1874	3729	2	467	258	548	791	391	360	280	7	1215	579	1272	2060	1005	614	640	2058	856	608	595	708	692	480	140	38
978010109	978	97801	Saint-Martin	978241	9780101	Quartier d'Orleans-Gloire-Griselle	1	1447	268	175	93	50	1128	130	455	544	4462	268	175	93	123	4072	317	1935	1820	3121	689	1796	608	28	3121	689	1796	608	28	268	2	136	119	10	909	2212	5	182	33	61	400	314	109	344	20	557	106	182	1370	972	242	1014	1196	455	611	130	241	400	326	138	91
978010110	978	97801	Saint-Martin	978241	9780101	Grand Fond-Belle Plaine-Oyster Pond	1	835	156	75	80	43	636	116	247	274	2532	156	75	80	148	2228	256	1049	923	1714	334	1022	353	5	1714	334	1022	353	5	156	3	88	63	3	480	1234	0	156	38	65	215	124	73	165	0	448	86	174	738	408	148	531	672	247	307	118	169	182	191	86	43
\.


-- Completed on 2020-11-06 10:27:08

--
-- PostgreSQL database dump complete
--

