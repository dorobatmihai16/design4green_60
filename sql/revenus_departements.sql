--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9 (Debian 11.9-0+deb10u1)
-- Dumped by pg_dump version 11.9

-- Started on 2020-11-06 10:59:16

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
-- TOC entry 215 (class 1259 OID 16681)
-- Name: revenus_departements; Type: TABLE; Schema: public; Owner: bubu
--

CREATE TABLE public.revenus_departements (
    codgeo character varying NOT NULL,
    libgeo character varying NOT NULL,
    nbmenfisc16 numeric NOT NULL,
    nbpersmenfisc16 numeric NOT NULL,
    med16 numeric NOT NULL,
    pimp16 numeric NOT NULL,
    tp6016 numeric NOT NULL,
    tp60age116 numeric NOT NULL,
    tp60age216 numeric NOT NULL,
    tp60age316 numeric NOT NULL,
    tp60age416 numeric NOT NULL,
    tp60age516 numeric NOT NULL,
    tp60age616 numeric NOT NULL,
    tp60tol116 numeric NOT NULL,
    tp60tol216 numeric NOT NULL,
    pact16 numeric NOT NULL,
    ptsa16 numeric NOT NULL,
    pcho16 numeric NOT NULL,
    pben16 numeric NOT NULL,
    ppen16 numeric NOT NULL,
    ppat16 numeric NOT NULL,
    ppsoc16 numeric NOT NULL,
    ppfam16 numeric NOT NULL,
    ppmini16 numeric NOT NULL,
    pplogt16 numeric NOT NULL,
    pimpot16 numeric NOT NULL,
    d116 numeric NOT NULL,
    d916 numeric NOT NULL,
    rd16 numeric NOT NULL
);


ALTER TABLE public.revenus_departements OWNER TO bubu;

--
-- TOC entry 3650 (class 0 OID 16681)
-- Dependencies: 215
-- Data for Name: revenus_departements; Type: TABLE DATA; Schema: public; Owner: bubu
--

COPY public.revenus_departements (codgeo, libgeo, nbmenfisc16, nbpersmenfisc16, med16, pimp16, tp6016, tp60age116, tp60age216, tp60age316, tp60age416, tp60age516, tp60age616, tp60tol116, tp60tol216, pact16, ptsa16, pcho16, pben16, ppen16, ppat16, ppsoc16, ppfam16, ppmini16, pplogt16, pimpot16, d116, d916, rd16) FROM stdin;
01	Ain	253423	613887	22272	53.8	10.7	15.5	12.2	12.2	10.4	7.4	6.8	5.3	21.9	78.1	71.2	2.9	4.0	25.0	9.0	3.9	2.0	1.0	0.9	-16.0	12207	42482	3.5
02	Aisne	222105	522106	18818	44.1	18.9	30.6	23.7	22.7	18.8	10.6	8.5	9.1	36.2	68.0	58.8	3.4	5.8	30.5	8.4	7.6	2.8	2.8	1.9	-14.5	10177	31799	3.1
03	Allier	157848	329842	19476	44.4	15.5	26.0	19.7	19.6	16.0	9.3	9.5	8.6	30.5	60.4	51.8	2.8	5.8	37.5	10.6	6.2	1.9	2.7	1.6	-14.7	10826	32497	3.0
04	Alpes-de-Haute-Provence	73994	159107	19719	46.3	16.4	24.8	20.9	20.7	16.5	10.9	10.8	9.1	28.0	61.7	51.5	3.5	6.7	36.0	11.7	5.6	1.9	2.1	1.5	-15.0	10562	34291	3.2
05	Hautes-Alpes	63333	135534	19949	48.1	14.3	21.1	17.2	17.5	14.9	9.0	9.9	7.9	24.8	64.0	52.8	3.6	7.6	35.0	11.1	5.0	1.9	1.7	1.3	-15.1	11148	33850	3.0
06	Alpes-Maritimes	516937	1108212	21246	55.1	15.7	21.7	18.3	18.1	16.3	12.3	10.6	8.1	25.4	71.1	61.3	3.4	6.5	30.0	13.8	4.6	1.5	1.8	1.2	-19.5	10541	40110	3.8
07	Ardèche	140993	315961	19878	45.5	14.4	21.9	18.2	17.5	14.6	9.1	9.3	8.3	29.0	64.2	55.1	3.4	5.6	34.0	10.9	5.5	2.2	1.9	1.4	-14.6	11105	33045	3.0
08	Ardennes	117561	267926	18772	42.5	19.4	32.5	23.7	23.2	18.4	12.2	10.6	9.7	36.3	66.4	57.4	3.3	5.8	31.1	9.1	7.5	2.6	2.9	2.0	-14.1	10080	31759	3.2
09	Ariège	67798	145045	18934	41.7	18.5	29.3	23.1	22.0	20.0	12.1	12.8	11.7	33.5	60.6	51.3	3.3	6.0	37.2	9.4	6.7	2.0	2.9	1.8	-13.9	10079	31908	3.2
10	Aube	130928	292310	19614	47.7	16.2	27.9	20.5	19.3	15.7	9.7	6.8	6.9	31.9	68.1	56.5	3.4	8.2	30.7	10.5	6.6	2.4	2.4	1.8	-15.9	10685	34170	3.2
11	Aude	163377	353840	18339	39.9	21.1	32.9	26.5	25.3	22.2	13.3	14.4	12.2	36.8	59.9	49.4	3.7	6.8	37.2	9.6	7.7	2.2	3.3	2.1	-14.4	9661	31804	3.3
12	Aveyron	123284	267103	19875	44.9	13.7	20.5	15.7	15.6	14.0	9.2	12.6	8.8	26.9	63.3	52.0	2.4	9.0	34.6	11.7	4.9	1.9	1.8	1.2	-14.5	11365	33125	2.9
13	Bouches-du-Rhône	854468	1978363	20524	51.6	18.5	26.5	21.2	21.8	19.2	12.8	11.0	6.7	31.8	73.2	63.6	3.5	6.1	28.0	10.5	6.5	2.1	2.5	1.8	-18.2	9916	38096	3.8
14	Calvados	293732	663171	20556	49.9	12.6	21.6	14.7	15.3	13.2	7.2	6.8	5.6	24.5	69.1	60.4	3.1	5.7	31.8	9.3	5.4	2.2	1.8	1.5	-15.6	11647	34910	3.0
15	Cantal	66592	139532	19574	42.8	13.4	18.2	13.7	15.3	14.0	9.5	13.9	9.2	24.9	62.4	50.9	2.3	9.3	35.4	11.6	4.9	1.7	1.9	1.2	-14.3	11510	32356	2.8
16	Charente	155563	338437	19816	45.5	14.9	24.9	17.9	17.6	14.8	9.4	11.2	8.6	30.1	65.6	55.9	3.1	6.7	34.1	9.3	5.9	1.9	2.4	1.6	-14.9	10934	33452	3.1
17	Charente-Maritime	294546	634163	20270	48.3	13.4	22.1	15.8	16.8	14.6	8.0	9.1	7.8	25.9	61.0	50.4	3.3	7.3	38.6	11.0	5.1	1.8	1.9	1.3	-15.7	11416	35227	3.1
18	Cher	138431	297896	19933	47.7	14.9	24.8	18.9	18.1	15.2	9.2	8.5	7.8	31.1	64.4	56.1	2.7	5.5	35.7	9.1	5.9	2.0	2.4	1.5	-15.1	10969	33183	3.0
19	Corrèze	108808	230053	20082	47.2	13.2	21.5	15.6	15.2	12.9	8.6	11.7	8.0	25.8	63.3	54.3	2.7	6.3	37.2	9.6	4.7	1.8	1.7	1.2	-14.8	11498	33534	2.9
21	Côte-d'Or	226226	499412	21394	54.7	11.6	19.7	13.5	13.9	11.3	7.0	6.9	5.5	24.2	71.7	62.8	2.7	6.2	30.9	9.8	4.6	1.9	1.5	1.2	-17.0	11920	36649	3.1
22	Côtes-d'Armor	267435	590832	20279	47.2	12.1	19.6	14.0	14.4	12.7	7.1	9.6	7.3	26.6	63.6	53.6	2.9	7.0	36.9	9.3	5.1	2.2	1.7	1.2	-14.9	11808	33556	2.8
23	Creuse	55441	112039	18587	40.5	18.4	24.6	23.0	21.5	19.5	12.3	17.0	13.3	33.2	57.6	47.1	2.5	7.9	41.0	9.0	5.8	1.8	2.6	1.4	-13.4	10199	31083	3.0
24	Dordogne	186364	396105	19280	42.8	16.5	25.5	19.5	20.1	17.7	10.9	12.9	10.8	30.3	59.1	49.8	3.1	6.1	39.7	10.0	5.4	1.8	2.1	1.4	-14.2	10545	32513	3.1
25	Doubs	228242	520068	21662	54.4	12.2	20.2	14.5	14.0	11.3	7.7	6.9	5.0	26.3	76.9	68.8	3.3	4.8	26.8	7.6	5.2	2.1	1.7	1.3	-16.5	11760	39643	3.4
26	Drôme	218174	502064	20103	47.6	15.2	21.1	18.5	18.7	15.2	9.7	8.4	7.8	29.4	67.8	58.4	3.5	5.8	30.8	11.1	5.8	2.4	1.9	1.6	-15.5	10939	34843	3.2
27	Eure	244050	590551	20783	51.7	13.0	21.0	15.6	15.3	12.8	7.6	6.6	6.0	27.6	72.6	64.8	3.4	4.5	29.1	7.8	5.7	2.5	1.9	1.3	-15.2	11488	34157	3.0
28	Eure-et-Loir	178710	426842	21133	54.1	12.2	18.0	14.4	15.0	12.1	7.9	6.0	5.7	26.7	72.6	64.9	3.1	4.7	29.8	8.4	5.0	2.4	1.4	1.1	-15.8	11720	34777	3.0
29	Finistère	406470	889022	20701	49.0	10.8	19.2	12.2	12.5	11.3	6.3	8.1	6.1	25.0	66.7	57.2	3.1	6.3	34.8	8.9	5.0	2.1	1.7	1.2	-15.4	12203	34205	2.8
2A	Corse-du-Sud	57525	124326	20367	51.4	17.2	21.5	18.9	19.1	17.1	14.7	15.9	10.0	26.5	69.5	58.8	3.0	7.7	32.0	11.4	5.0	1.4	2.3	1.3	-17.9	10247	37184	3.6
2B	Haute-Corse	66816	143147	18803	43.8	21.7	28.7	24.5	24.6	21.3	18.0	19.0	12.9	32.9	68.2	55.8	3.1	9.2	31.8	10.1	6.4	1.6	3.0	1.8	-16.5	9494	34724	3.7
30	Gard	319158	725528	19157	44.0	19.8	29.2	23.5	23.7	20.4	14.2	11.6	9.8	35.9	65.5	55.5	3.7	6.2	32.9	10.0	7.2	2.3	2.8	2.0	-15.6	9846	33967	3.4
31	Haute-Garonne	566992	1275910	22223	55.6	12.8	22.9	13.5	14.0	11.9	8.4	9.2	5.1	24.6	79.5	70.7	3.2	5.6	23.7	9.5	5.4	1.9	1.9	1.5	-18.1	11463	39539	3.4
32	Gers	84493	185449	19877	44.5	15.0	22.0	16.6	16.6	15.5	10.8	14.9	10.1	27.4	63.6	53.2	2.8	7.6	34.8	11.1	5.1	1.8	2.1	1.3	-14.6	10966	33891	3.1
33	Gironde	676324	1523917	21361	52.9	12.7	22.4	14.3	14.4	12.4	7.9	8.5	5.9	23.4	74.5	64.9	3.5	6.1	28.2	9.4	5.2	1.8	1.9	1.4	-17.3	11529	37533	3.3
34	Hérault	493150	1092213	19575	46.3	19.2	30.4	22.0	22.5	19.8	13.1	11.3	9.4	32.8	67.9	56.9	3.9	7.1	31.7	10.4	6.8	2.2	2.7	2.0	-16.8	9897	35793	3.6
35	Ille-et-Vilaine	433283	1005607	21184	51.1	10.6	20.8	12.0	11.4	9.7	6.0	7.2	5.0	23.8	75.3	66.9	2.9	5.5	26.7	9.1	5.3	2.3	1.6	1.4	-16.4	12254	35630	2.9
36	Indre	102055	213765	19386	44.0	14.8	25.6	18.3	17.9	15.1	9.2	10.5	8.7	29.3	61.3	53.1	2.9	5.3	38.1	9.0	5.7	1.9	2.3	1.5	-14.1	11118	31429	2.8
37	Indre-et-Loire	265133	590223	20843	51.2	12.8	23.2	15.3	14.5	12.5	7.6	7.2	5.2	26.7	70.6	62.7	3.0	4.9	31.3	9.0	5.3	2.1	1.8	1.4	-16.2	11549	35776	3.1
38	Isère	515144	1228363	21884	55.1	11.5	19.4	13.7	13.3	10.8	7.1	7.0	5.0	24.6	75.1	67.6	3.0	4.4	26.7	9.8	4.9	2.2	1.5	1.2	-16.5	11938	37354	3.1
39	Jura	114164	254641	20831	50.7	11.7	17.5	14.2	14.0	11.2	7.4	8.5	6.3	24.5	70.3	62.4	2.9	5.0	31.9	8.1	4.8	2.1	1.6	1.2	-15.1	11928	35634	3.0
40	Landes	180400	402831	20444	48.9	11.9	19.5	14.0	14.6	12.3	7.3	8.9	6.8	23.4	64.5	55.2	3.3	5.9	36.0	10.0	4.7	1.9	1.7	1.2	-15.2	11854	33870	2.9
41	Loir-et-Cher	145025	325228	20525	50.4	12.8	20.3	16.8	16.1	12.9	7.2	6.7	6.3	28.5	66.2	58.1	3.0	5.1	34.8	9.2	5.0	2.1	1.7	1.2	-15.2	11594	34000	2.9
42	Loire	322935	738073	19898	45.6	14.9	24.1	17.9	18.4	14.8	8.6	8.0	6.5	30.3	67.3	59.4	3.1	4.9	31.6	10.0	6.3	2.5	2.1	1.7	-15.2	11011	33391	3.0
43	Haute-Loire	99503	222808	19828	43.1	12.3	17.3	13.3	14.7	12.4	8.1	11.1	8.1	24.6	65.4	55.7	2.8	6.9	32.8	10.3	5.6	2.3	2.0	1.3	-14.1	11778	32107	2.7
44	Loire-Atlantique	584588	1352820	21548	52.8	10.2	17.4	11.0	11.5	10.1	6.0	6.6	5.0	23.1	75.0	66.9	3.2	4.9	27.3	9.1	5.2	2.2	1.6	1.3	-16.6	12418	36373	2.9
45	Loiret	282987	662960	21081	54.7	13.2	20.9	16.6	15.9	12.4	8.1	5.8	5.4	28.2	72.0	64.7	3.1	4.1	30.1	8.9	5.3	2.3	1.6	1.4	-16.3	11389	35696	3.1
46	Lot	78138	164628	19928	45.8	14.7	21.6	17.1	18.0	16.2	9.8	12.2	10.0	27.4	58.4	48.3	2.8	7.3	40.4	11.0	4.9	1.7	2.0	1.2	-14.7	11000	33925	3.1
47	Lot-et-Garonne	145974	321797	19079	42.5	17.2	24.8	20.8	20.3	17.3	12.0	13.6	10.6	31.0	62.8	52.7	3.5	6.6	35.2	10.4	6.2	2.2	2.4	1.7	-14.6	10496	32591	3.1
48	Lozère	32889	70760	19570	44.6	14.3	18.5	15.1	16.4	14.5	10.4	14.5	9.9	24.4	64.7	53.2	2.4	9.1	33.7	10.3	5.3	2.1	2.0	1.3	-14.0	11130	32248	2.9
49	Maine-et-Loire	331958	783180	20123	45.6	11.7	19.5	13.5	13.6	11.8	6.6	6.8	5.4	25.7	71.4	62.7	3.1	5.6	29.0	8.4	5.9	2.7	1.7	1.5	-14.7	11940	33045	2.8
50	Manche	220408	488459	20003	45.8	12.5	18.8	14.8	15.1	12.7	7.7	9.2	6.9	24.0	65.5	56.3	2.8	6.5	34.3	8.9	5.5	2.2	1.9	1.4	-14.2	11721	32900	2.8
51	Marne	238721	537772	20780	53.5	14.4	26.4	18.3	16.5	13.4	7.8	6.7	5.0	27.1	73.1	60.9	2.8	9.4	28.0	11.0	5.6	2.2	1.9	1.5	-17.7	11060	37413	3.4
52	Haute-Marne	78673	171601	19343	44.4	15.6	24.8	19.5	19.6	15.3	9.6	9.9	8.5	30.5	63.9	55.6	3.0	5.3	35.3	8.3	6.3	2.3	2.4	1.5	-13.8	10936	31435	2.9
53	Mayenne	127576	300330	19874	45.0	11.7	16.7	13.3	13.8	12.0	7.0	8.7	6.4	25.3	69.6	61.2	2.6	5.9	30.1	9.4	5.3	2.7	1.4	1.2	-14.4	11945	31676	2.7
54	Meurthe-et-Moselle	304882	682803	20697	47.6	14.5	26.4	17.4	17.3	13.4	8.6	7.7	6.2	29.9	66.6	58.7	2.9	4.9	29.1	13.9	5.7	2.0	2.1	1.6	-15.3	11008	35880	3.3
55	Meuse	79553	179676	19636	44.3	15.5	26.0	18.9	18.0	15.3	9.9	10.2	8.7	32.0	64.9	56.2	2.8	5.9	32.8	10.3	5.9	2.3	2.2	1.5	-13.9	10843	32122	3.0
56	Morbihan	332909	740023	20607	49.1	11.3	18.9	13.2	13.6	11.9	6.5	8.2	6.4	24.5	64.6	55.1	3.1	6.3	36.0	9.7	5.0	2.1	1.7	1.2	-15.3	12039	34343	2.9
57	Moselle	432737	994749	20753	44.8	14.6	23.6	18.9	17.8	12.9	9.1	8.5	6.9	28.3	61.2	53.9	3.2	4.1	27.7	19.6	5.2	1.8	2.0	1.4	-13.7	10992	37208	3.4
58	Nièvre	97449	198901	19542	45.9	15.8	26.7	20.6	20.5	17.4	9.7	8.5	9.2	31.5	58.4	50.0	2.6	5.8	41.2	9.0	6.0	1.8	2.7	1.5	-14.6	10678	32068	3.0
59	Nord	1040715	2502597	19203	45.6	19.2	30.1	21.9	22.2	18.8	11.7	10.1	8.0	35.3	73.3	64.8	3.5	5.0	26.3	7.8	8.1	2.9	3.1	2.1	-15.5	10160	34349	3.4
60	Oise	322268	805809	21210	54.8	13.1	20.2	15.8	15.1	12.3	8.4	7.2	5.5	27.1	77.2	69.5	3.2	4.4	26.3	7.5	5.6	2.5	1.8	1.3	-16.6	11445	36004	3.1
61	Orne	123691	272602	19265	43.7	16.0	24.9	20.2	20.9	16.5	9.3	8.3	8.6	31.5	62.5	53.7	2.9	5.9	36.0	9.3	6.0	2.3	2.1	1.6	-13.8	10649	31365	2.9
62	Pas-de-Calais	596716	1442565	18370	41.2	19.8	32.4	23.5	23.4	19.2	10.8	11.1	8.4	36.6	69.7	61.1	3.4	5.1	29.2	7.1	8.4	3.1	3.1	2.3	-14.4	10227	31236	3.1
63	Puy-de-Dôme	286363	621428	21006	51.2	12.9	23.0	14.7	14.8	12.5	8.3	9.1	6.6	26.6	70.2	62.1	2.8	5.3	31.1	9.9	5.0	1.9	1.8	1.3	-16.2	11484	36031	3.1
64	Pyrénées-Atlantiques	300714	654547	20978	50.9	12.1	21.0	13.5	14.4	12.6	7.7	8.8	6.6	22.8	66.8	57.7	3.1	6.0	33.5	11.4	4.9	1.7	1.9	1.3	-16.6	11783	36850	3.1
65	Hautes-Pyrénées	104048	221375	19673	45.2	15.0	26.5	18.7	18.0	14.6	9.6	11.6	8.5	29.2	63.1	53.3	3.5	6.4	37.1	8.6	5.8	1.8	2.4	1.5	-14.6	10991	32506	3.0
66	Pyrénées-Orientales	212313	454744	18608	42.4	20.7	33.3	25.8	25.5	22.2	13.1	12.8	11.1	36.1	59.1	48.3	3.8	7.0	38.1	10.6	7.7	2.2	3.3	2.2	-15.5	9772	32886	3.4
67	Bas-Rhin	459242	1073756	21772	55.5	13.1	21.1	17.2	15.7	11.8	7.8	6.6	5.0	25.9	76.2	68.3	3.0	4.9	26.9	9.3	4.9	2.0	1.6	1.3	-17.3	11383	38053	3.3
68	Haut-Rhin	316329	739640	22283	56.6	13.1	21.2	17.3	16.1	11.7	7.9	6.1	5.1	27.0	77.7	70.5	3.3	3.9	27.2	8.1	4.5	1.8	1.5	1.2	-17.5	11407	42947	3.8
69	Rhône	755767	1754293	22025	57.2	13.9	20.6	15.6	16.6	13.6	8.8	6.9	5.0	25.1	77.7	69.6	3.2	4.9	24.8	10.8	5.3	2.2	1.7	1.4	-18.6	11179	40999	3.7
70	Haute-Saône	102268	232211	19747	45.3	14.0	21.3	17.0	16.7	13.8	8.9	9.6	8.2	29.2	67.3	59.3	3.0	5.0	33.0	7.7	5.7	2.4	2.0	1.4	-13.7	11314	31789	2.8
71	Saône-et-Loire	245411	537965	19973	47.5	13.0	19.9	16.1	16.0	13.3	8.3	8.7	7.0	26.0	65.8	56.7	2.9	6.1	35.1	8.7	5.4	2.2	1.9	1.4	-15.0	11558	33253	2.9
72	Sarthe	240984	551912	20169	48.0	13.4	22.5	16.1	16.3	13.5	7.3	6.4	5.8	30.3	68.6	61.0	2.9	4.7	32.4	8.0	5.8	2.5	1.8	1.5	-14.8	11388	32597	2.9
73	Savoie	186682	422026	22108	56.7	10.1	15.3	12.1	12.1	9.9	6.3	6.5	5.0	19.9	72.2	62.4	3.2	6.7	28.5	11.8	4.1	1.9	1.2	1.0	-16.6	12458	37646	3.0
74	Haute-Savoie	334998	782167	25440	57.7	9.2	12.3	10.1	10.4	8.7	7.0	6.7	5.0	17.4	82.9	75.3	3.0	4.6	20.5	10.4	2.6	1.2	0.7	0.6	-16.4	12841	55577	4.3
75	Paris	1027657	2074630	26808	68.9	15.8	16.8	12.9	17.4	19.5	15.4	9.6	5.7	21.1	87.3	75.6	3.0	8.8	20.2	17.5	2.8	0.8	1.1	0.9	-27.8	10145	64389	6.3
76	Seine-Maritime	528995	1209131	20324	50.0	14.7	24.6	17.5	17.5	14.2	8.8	7.0	5.0	28.3	71.4	63.3	3.3	4.8	30.0	7.5	6.6	2.4	2.5	1.8	-15.5	11033	34790	3.2
77	Seine-et-Marne	531099	1374495	22579	62.1	11.6	17.0	13.7	13.2	11.1	7.7	5.9	5.0	24.5	82.3	75.6	3.0	3.7	23.0	7.5	4.9	2.4	1.4	1.1	-17.7	11849	37871	3.2
78	Yvelines	563873	1443238	25824	69.8	9.7	15.0	11.3	11.1	9.2	6.9	5.0	5.0	20.0	85.0	78.7	2.7	3.7	23.9	10.0	3.3	1.7	0.8	0.8	-22.2	12638	49207	3.9
79	Deux-Sèvres	160626	366234	19898	45.8	12.4	20.6	13.5	14.2	12.0	7.8	10.7	7.1	27.3	69.5	60.9	2.8	5.8	31.2	8.7	5.5	2.3	1.9	1.3	-14.9	11743	32874	2.8
80	Somme	233447	541822	19415	46.6	17.1	29.4	20.5	20.3	17.0	9.6	9.0	7.9	33.6	70.0	60.5	3.2	6.2	29.9	8.7	6.9	2.4	2.7	1.7	-15.5	10523	33260	3.2
81	Tarn	168800	379683	19593	43.2	15.5	26.0	18.7	18.2	16.1	9.8	11.1	9.0	31.4	63.9	54.5	3.2	6.2	34.6	10.0	6.0	2.2	2.3	1.6	-14.5	10835	33277	3.1
82	Tarn-et-Garonne	107475	252947	19236	42.5	17.2	25.3	19.3	19.6	16.6	12.4	14.0	10.2	32.3	67.5	58.0	3.5	6.0	30.8	9.3	6.7	2.6	2.5	1.7	-14.3	10455	32353	3.1
83	Var	477965	1051253	20764	51.4	15.5	23.5	19.2	18.9	16.7	11.0	8.8	7.7	27.5	63.0	53.0	3.4	6.6	36.8	12.7	5.1	1.7	2.0	1.4	-17.6	10672	37083	3.5
84	Vaucluse	239486	556864	19204	45.5	19.7	26.7	23.3	23.3	19.5	15.5	11.2	9.3	33.4	66.9	56.6	3.9	6.4	30.8	11.5	6.7	2.4	2.4	1.9	-15.9	9868	34356	3.5
85	Vendée	292126	670365	20390	47.6	9.6	12.9	9.9	11.7	10.7	5.6	8.2	5.8	22.1	66.1	57.6	3.0	5.6	34.2	9.8	4.7	2.3	1.3	1.1	-14.8	12627	32421	2.6
86	Vienne	184316	407413	20077	47.6	14.1	25.7	16.4	15.9	13.5	8.2	10.5	7.1	30.1	68.9	60.7	3.0	5.2	31.8	8.9	5.8	2.2	2.0	1.6	-15.4	11154	33737	3.0
87	Haute-Vienne	166224	350800	20136	47.8	15.3	28.7	19.4	17.7	14.7	8.9	10.3	7.4	32.2	65.6	57.7	2.5	5.3	35.7	8.4	5.9	1.9	2.4	1.6	-15.6	10797	33996	3.1
88	Vosges	163615	359779	19383	43.4	15.7	26.5	19.9	19.8	16.1	9.0	8.0	8.1	32.1	65.8	57.5	3.3	5.0	33.9	8.6	6.1	2.3	2.3	1.6	-14.4	10787	32039	3.0
89	Yonne	148088	329952	19975	49.2	14.7	22.8	18.6	18.5	15.8	8.7	7.0	7.8	30.9	65.1	56.3	2.9	5.8	35.1	9.2	5.9	2.3	2.2	1.4	-15.3	11011	33096	3.0
90	Territoire de Belfort	59433	134142	20931	52.4	14.6	24.0	18.5	17.3	14.0	8.4	7.2	5.3	29.5	74.5	67.1	3.6	3.8	28.3	7.3	5.9	2.2	2.1	1.6	-16.0	11077	37002	3.3
91	Essonne	496678	1277598	23127	65.0	12.9	18.5	16.1	15.1	12.1	7.9	5.0	5.0	26.2	83.1	77.2	2.9	3.0	24.1	7.6	4.6	2.2	1.3	1.1	-19.4	11389	40693	3.6
92	Hauts-de-Seine	680319	1583682	26571	70.0	12.2	15.2	11.6	13.5	13.1	11.2	7.5	5.0	19.3	90.3	82.5	2.8	5.0	19.6	12.0	3.0	1.2	1.0	0.8	-24.9	11514	56767	4.9
93	Seine-Saint-Denis	582594	1586665	16996	47.8	28.6	30.8	30.0	33.5	29.6	22.6	13.7	13.1	38.7	80.8	73.5	4.4	2.8	19.8	5.9	9.6	3.7	3.3	2.7	-16.1	8464	32670	3.9
94	Val-de-Marne	550053	1345977	21958	62.3	16.7	22.1	18.2	19.6	17.2	12.3	7.9	5.6	26.4	84.8	77.1	3.1	4.5	22.1	8.7	5.0	2.0	1.6	1.3	-20.6	10214	42882	4.2
95	Val-d'Oise	452034	1226524	21259	59.9	16.8	20.2	18.8	20.0	16.6	11.8	7.9	7.3	29.8	83.3	76.4	3.4	3.5	22.3	6.8	5.7	2.8	1.6	1.4	-18.1	10334	38082	3.7
972	Martinique	148960	341866	17057	33.3	29.8	49.0	33.7	32.3	29.4	23.3	31.1	22.3	37.7	73.1	64.0	3.7	5.4	23.2	5.7	11.4	2.7	6.5	2.3	-13.4	8300	36240	4.4
974	La Réunion	307206	850081	14733	27.8	39.0	52.5	41.3	40.9	36.1	31.7	39.6	30.4	47.6	74.9	62.2	5.0	7.7	15.1	6.8	15.9	4.4	8.1	3.4	-12.7	7693	35035	4.6
\.


-- Completed on 2020-11-06 10:59:20

--
-- PostgreSQL database dump complete
--

