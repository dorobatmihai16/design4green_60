--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:50:24

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
-- TOC entry 214 (class 1259 OID 16675)
-- Name: iris_diplome_mer; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.iris_diplome_mer (
    iris numeric NOT NULL,
    dep numeric NOT NULL,
    com numeric NOT NULL,
    libcom character varying NOT NULL,
    triris character varying NOT NULL,
    grd_quart numeric NOT NULL,
    libiris character varying NOT NULL,
    lab_iris numeric NOT NULL,
    p16_pop0205 numeric NOT NULL,
    p16_pop0610 numeric NOT NULL,
    p16_pop1114 numeric NOT NULL,
    p16_pop1517 numeric NOT NULL,
    p16_pop1824 numeric NOT NULL,
    p16_pop2529 numeric NOT NULL,
    p16_pop30p numeric NOT NULL,
    p16_scol0205 numeric NOT NULL,
    p16_scol0610 numeric NOT NULL,
    p16_scol1114 numeric NOT NULL,
    p16_scol1517 numeric NOT NULL,
    p16_scol1824 numeric NOT NULL,
    p16_scol2529 numeric NOT NULL,
    p16_scol30p numeric NOT NULL,
    p16_nscol15p numeric NOT NULL,
    p16_nscol15p_diplmin numeric NOT NULL,
    p16_nscol15p_capbep numeric NOT NULL,
    p16_nscol15p_bac numeric NOT NULL,
    p16_nscol15p_sup numeric NOT NULL,
    p16_hnscol15p numeric NOT NULL,
    p16_hnscol15p_diplmin numeric NOT NULL,
    p16_hnscol15p_capbep numeric NOT NULL,
    p16_hnscol15p_bac numeric NOT NULL,
    p16_hnscol15p_sup numeric NOT NULL,
    p16_fnscol15p numeric NOT NULL,
    p16_fnscol15p_diplmin numeric NOT NULL,
    p16_fnscol15p_capbep numeric NOT NULL,
    p16_fnscol15p_bac numeric NOT NULL,
    p16_fnscol15p_sup numeric NOT NULL
);


ALTER TABLE public.iris_diplome_mer OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16675)
-- Dependencies: 214
-- Data for Name: iris_diplome_mer; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.iris_diplome_mer (iris, dep, com, libcom, triris, grd_quart, libiris, lab_iris, p16_pop0205, p16_pop0610, p16_pop1114, p16_pop1517, p16_pop1824, p16_pop2529, p16_pop30p, p16_scol0205, p16_scol0610, p16_scol1114, p16_scol1517, p16_scol1824, p16_scol2529, p16_scol30p, p16_nscol15p, p16_nscol15p_diplmin, p16_nscol15p_capbep, p16_nscol15p_bac, p16_nscol15p_sup, p16_hnscol15p, p16_hnscol15p_diplmin, p16_hnscol15p_capbep, p16_hnscol15p_bac, p16_hnscol15p_sup, p16_fnscol15p, p16_fnscol15p_diplmin, p16_fnscol15p_capbep, p16_fnscol15p_bac, p16_fnscol15p_sup) FROM stdin;
975010000	975	97501	Miquelon-Langlade	ZZZZZZ	9750100	Miquelon-Langlade	5	21	38	24	26	29	26	418	16	38	24	25	6	0	5	463	223	151	58	31	229	107	85	28	9	234	116	66	30	22
975020101	975	97502	Saint-Pierre	ZZZZZZ	9750201	Saint-Pierre - IRIS 0101	4	94	174	126	108	131	136	1921	76	172	123	105	27	2	8	2154	773	542	359	480	1006	304	277	184	241	1148	469	265	175	239
975020102	975	97502	Saint-Pierre	ZZZZZZ	9750201	Saint-Pierre - IRIS 0102	4	137	204	154	120	125	109	1763	120	196	151	119	39	2	13	1944	542	657	347	398	984	273	358	166	187	960	269	299	181	211
977010101	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Sous le vent	4	149	151	121	82	281	325	2032	108	150	120	74	39	5	13	2589	794	560	540	695	1375	409	380	273	313	1214	385	180	267	383
977010102	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Centre	4	92	136	105	58	212	280	1859	64	134	103	55	54	4	4	2292	518	572	516	686	1232	264	391	246	330	1061	253	181	270	356
977010103	977	97701	Saint-Barthélemy	ZZZZZZ	9770101	Au vent	4	170	220	150	102	252	339	2484	127	217	148	90	30	4	14	3039	842	662	642	893	1644	500	425	318	401	1396	342	237	325	492
978010101	978	97801	Saint-Martin	978221	9780101	Terres Basses-Baie Nettle-Sandy Ground	1	316	402	309	200	388	287	2531	239	397	309	181	55	5	20	3144	1457	766	508	413	1473	655	407	202	209	1671	802	359	306	204
978010102	978	97801	Saint-Martin	978221	9780101	Marigot Est et Nord	2	83	104	113	111	167	97	1141	68	104	111	108	43	0	2	1363	676	228	242	217	598	270	136	103	89	766	406	92	139	128
978010103	978	97801	Saint-Martin	978221	9780101	Marigot Centre et Sud	2	119	108	88	45	116	172	921	93	108	88	33	25	5	0	1191	593	205	232	161	545	267	111	91	75	646	326	93	141	86
978010104	978	97801	Saint-Martin	978221	9780101	Saint-James-Diamant-Bellevue	1	162	180	192	81	124	120	1106	114	180	192	78	35	2	3	1312	818	241	141	111	586	364	136	59	26	726	454	105	82	85
978010105	978	97801	Saint-Martin	978231	9780101	Spring-Concordia	1	360	607	506	383	336	363	2903	281	603	506	363	85	13	21	3503	1380	726	726	671	1457	517	365	316	259	2045	863	360	410	412
978010106	978	97801	Saint-Martin	978231	9780101	Galisbay-Agrement	1	159	185	150	104	171	109	1209	129	185	148	102	23	0	8	1461	917	276	173	94	648	390	130	82	46	813	527	146	92	48
978010107	978	97801	Saint-Martin	978231	9780101	C. Gate-St Louis-Rambaud-Colomb.-Pic P.	1	209	305	237	197	225	192	2068	177	302	234	182	63	5	10	2422	896	599	503	423	1159	404	362	227	166	1263	492	237	277	257
978010108	978	97801	Saint-Martin	978241	9780101	La Savane-Gd Case-Anse Marcel-Cul de Sac	1	469	585	537	353	407	518	4326	389	582	532	325	68	0	16	5194	1813	1054	1131	1196	2466	807	560	579	520	2729	1006	494	552	676
978010109	978	97801	Saint-Martin	978241	9780101	Quartier d'Orleans-Gloire-Griselle	1	336	453	401	318	371	268	2165	258	453	401	308	90	3	5	2715	1780	583	253	99	1204	750	299	112	44	1511	1030	284	142	56
978010110	978	97801	Saint-Martin	978241	9780101	Grand Fond-Belle Plaine-Oyster Pond	1	222	306	189	132	202	124	1257	162	298	182	129	51	5	15	1514	834	338	211	131	628	338	149	88	53	886	496	189	123	78
\.


-- Completed on 2020-11-06 10:50:28

--
-- PostgreSQL database dump complete
--

