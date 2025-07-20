--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Ubuntu 17.5-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.5 (Ubuntu 17.5-1.pgdg24.04+1)

-- Started on 2025-07-20 22:05:17 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16987)
-- Name: Specialities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Specialities" (
    title character varying(20) NOT NULL,
    subtitle character varying(300) NOT NULL,
    text character varying(1000) NOT NULL,
    image_url character varying(2000) NOT NULL,
    id integer NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 17071)
-- Name: Specialities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Specialities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 232
-- Name: Specialities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Specialities_id_seq" OWNED BY public."Specialities".id;


--
-- TOC entry 217 (class 1259 OID 16954)
-- Name: Users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Users" (
    name character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    phone numeric(15,0) NOT NULL,
    id integer NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 17019)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 225
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- TOC entry 219 (class 1259 OID 16974)
-- Name: book_a_table; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_a_table (
    name character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    phone numeric(15,0) NOT NULL,
    people numeric(3,0) NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    id integer NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 17026)
-- Name: book_a_table_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.book_a_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 226
-- Name: book_a_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.book_a_table_id_seq OWNED BY public.book_a_table.id;


--
-- TOC entry 239 (class 1259 OID 17128)
-- Name: cache; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 17135)
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 17053)
-- Name: contact; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact (
    id integer NOT NULL,
    name character varying(10) NOT NULL,
    email character varying(15) NOT NULL,
    phone numeric(15,0) NOT NULL,
    message character varying(100) NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 17056)
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 231
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- TOC entry 222 (class 1259 OID 16995)
-- Name: delicious_menu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.delicious_menu (
    title character varying(50) NOT NULL,
    subtitle character varying(100) NOT NULL,
    price money NOT NULL,
    id integer NOT NULL,
    food_type_id integer
);


--
-- TOC entry 227 (class 1259 OID 17033)
-- Name: delicious_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.delicious_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 227
-- Name: delicious_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.delicious_menu_id_seq OWNED BY public.delicious_menu.id;


--
-- TOC entry 245 (class 1259 OID 17160)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- TOC entry 244 (class 1259 OID 17159)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 244
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 224 (class 1259 OID 17006)
-- Name: food_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.food_type (
    id integer NOT NULL,
    name character varying(10) NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 17005)
-- Name: food_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.food_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 223
-- Name: food_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.food_type_id_seq OWNED BY public.food_type.id;


--
-- TOC entry 243 (class 1259 OID 17152)
-- Name: job_batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


--
-- TOC entry 242 (class 1259 OID 17143)
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 17142)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 241
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 234 (class 1259 OID 17095)
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 17094)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 233
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 237 (class 1259 OID 17112)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


--
-- TOC entry 228 (class 1259 OID 17041)
-- Name: private_events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.private_events (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    subtitle character varying(100),
    text character varying(1000),
    image_url character varying(2000) NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 17044)
-- Name: private_events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.private_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 229
-- Name: private_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.private_events_id_seq OWNED BY public.private_events.id;


--
-- TOC entry 238 (class 1259 OID 17119)
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16963)
-- Name: static; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.static (
    title character varying(15) NOT NULL,
    subtitle character varying(300) NOT NULL,
    text character varying(1000) NOT NULL,
    id integer NOT NULL,
    image_url character varying(2000)
);


--
-- TOC entry 220 (class 1259 OID 16980)
-- Name: static_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.static_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 220
-- Name: static_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.static_id_seq OWNED BY public.static.id;


--
-- TOC entry 236 (class 1259 OID 17102)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- TOC entry 235 (class 1259 OID 17101)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3336 (class 2604 OID 17072)
-- Name: Specialities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Specialities" ALTER COLUMN id SET DEFAULT nextval('public."Specialities_id_seq"'::regclass);


--
-- TOC entry 3333 (class 2604 OID 17020)
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 3335 (class 2604 OID 17027)
-- Name: book_a_table id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_a_table ALTER COLUMN id SET DEFAULT nextval('public.book_a_table_id_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 17057)
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- TOC entry 3337 (class 2604 OID 17034)
-- Name: delicious_menu id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delicious_menu ALTER COLUMN id SET DEFAULT nextval('public.delicious_menu_id_seq'::regclass);


--
-- TOC entry 3344 (class 2604 OID 17163)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 17009)
-- Name: food_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.food_type ALTER COLUMN id SET DEFAULT nextval('public.food_type_id_seq'::regclass);


--
-- TOC entry 3343 (class 2604 OID 17146)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3341 (class 2604 OID 17098)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3339 (class 2604 OID 17045)
-- Name: private_events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.private_events ALTER COLUMN id SET DEFAULT nextval('public.private_events_id_seq'::regclass);


--
-- TOC entry 3334 (class 2604 OID 16981)
-- Name: static id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.static ALTER COLUMN id SET DEFAULT nextval('public.static_id_seq'::regclass);


--
-- TOC entry 3342 (class 2604 OID 17105)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3536 (class 0 OID 16987)
-- Dependencies: 221
-- Data for Name: Specialities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Specialities" (title, subtitle, text, image_url, id) FROM stdin;
chocolate pancakes	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.	Integer ullamcorper neque eu purus euismod, ac faucibus mauris posuere. Morbi non ultrices ligula. Sed dictum, enim sed ullamcorper feugiat, dui odio vehicula eros, a sollicitudin lorem quam nec sem. Mauris tincidunt feugiat diam convallis pharetra. Nulla facilisis semper laoreet.	/img/Pancakes.png	1
deserts	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.	Integer ullamcorper neque eu purus euismod, ac faucibus mauris posuere. Morbi non ultrices ligula. Sed dictum, enim sed ullamcorper feugiat, dui odio vehicula eros, a sollicitudin lorem quam nec sem. Mauris tincidunt feugiat diam convallis pharetra. Nulla facilisis semper laoreet.	/img/Повар.png	2
grilled dishes	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.	Integer ullamcorper neque eu purus euismod, ac faucibus mauris posuere. Morbi non ultrices ligula. Sed dictum, enim sed ullamcorper feugiat, dui odio vehicula eros, a sollicitudin lorem quam nec sem. Mauris tincidunt feugiat diam convallis pharetra. Nulla facilisis semper laoreet.	/img/Уголь.png	3
\.


--
-- TOC entry 3532 (class 0 OID 16954)
-- Dependencies: 217
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Users" (name, email, password, phone, id) FROM stdin;
\.


--
-- TOC entry 3534 (class 0 OID 16974)
-- Dependencies: 219
-- Data for Name: book_a_table; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.book_a_table (name, email, phone, people, date, "time", id) FROM stdin;
Марк	frizenmarkv@gmail.com	9105813042	1	2025-07-25	15:00:00	1
\.


--
-- TOC entry 3554 (class 0 OID 17128)
-- Dependencies: 239
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- TOC entry 3555 (class 0 OID 17135)
-- Dependencies: 240
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- TOC entry 3545 (class 0 OID 17053)
-- Dependencies: 230
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact (id, name, email, phone, message) FROM stdin;
\.


--
-- TOC entry 3537 (class 0 OID 16995)
-- Dependencies: 222
-- Data for Name: delicious_menu; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.delicious_menu (title, subtitle, price, id, food_type_id) FROM stdin;
PIZZA MARGHERITA	Integer ullamcorper neque eu purus euismod	45,50 ₽	1	1
PIZZA MARINARA	Integer ullamcorper neque eu purus euismod	46,25 ₽	2	1
PIZZA QUATRO FORMAGGI	Integer ullamcorper neque eu purus euismod	47,80 ₽	3	1
PIZZA CAPRICCIOSA	Integer ullamcorper neque eu purus euismod	48,15 ₽	4	1
PIZZA DIAVOLA	Integer ullamcorper neque eu purus euismod	49,90 ₽	5	1
PIZZA PROSCIUTTO CRUDO	Integer ullamcorper neque eu purus euismod	50,20 ₽	6	1
PIZZA FUNGHI	Integer ullamcorper neque eu purus euismod	51,75 ₽	7	1
PIZZA BOSCAIOLA	Integer ullamcorper neque eu purus euismod	52,30 ₽	8	1
PIZZA PROSCIUTTO E FUNGHI	Integer ullamcorper neque eu purus euismod	53,45 ₽	9	1
PIZZA QUATRO STAGIONI	Integer ullamcorper neque eu purus euismod	54,60 ₽	10	1
PIZZA ROMANA	Integer ullamcorper neque eu purus euismod	55,10 ₽	11	1
PIZZA NAPOLETANA	Integer ullamcorper neque eu purus euismod	56,25 ₽	12	1
PIZZA FRUTTI DI MARE	Integer ullamcorper neque eu purus euismod	57,40 ₽	13	1
PIZZA CALZONE	Integer ullamcorper neque eu purus euismod	58,55 ₽	14	1
PIZZA RUSTICA	Integer ullamcorper neque eu purus euismod	59,70 ₽	15	1
PIZZA PUGLIESE	Integer ullamcorper neque eu purus euismod	45,75 ₽	16	1
PIZZA CONTADINA	Integer ullamcorper neque eu purus euismod	46,90 ₽	17	1
PIZZA PATATE	Integer ullamcorper neque eu purus euismod	47,05 ₽	18	1
PIZZA TONNO	Integer ullamcorper neque eu purus euismod	48,20 ₽	19	1
PIZZA VEGETARIANA	Integer ullamcorper neque eu purus euismod	49,35 ₽	20	1
PIZZA BIANCA	Integer ullamcorper neque eu purus euismod	50,50 ₽	21	1
PIZZA GORGONZOLA	Integer ullamcorper neque eu purus euismod	51,65 ₽	22	1
PIZZA PORCINI	Integer ullamcorper neque eu purus euismod	52,80 ₽	23	1
PIZZA CARCIOFI	Integer ullamcorper neque eu purus euismod	53,95 ₽	24	1
PIZZA MELANZANE	Integer ullamcorper neque eu purus euismod	54,10 ₽	25	1
PIZZA ZUCCHINE	Integer ullamcorper neque eu purus euismod	55,25 ₽	26	1
PIZZA PESTO	Integer ullamcorper neque eu purus euismod	56,40 ₽	27	1
PIZZA BRESAOLA	Integer ullamcorper neque eu purus euismod	57,55 ₽	28	1
PIZZA RUCOLA	Integer ullamcorper neque eu purus euismod	58,70 ₽	29	1
PIZZA PARMIGIANA	Integer ullamcorper neque eu purus euismod	59,85 ₽	30	1
MINESTRONE	Integer ullamcorper neque eu purus euismod	30,50 ₽	31	0
ZUPPA DI PESCE	Integer ullamcorper neque eu purus euismod	31,25 ₽	32	0
ZUPPA DI LENTICCHIE	Integer ullamcorper neque eu purus euismod	32,80 ₽	33	0
ZUPPA DI POLLO	Integer ullamcorper neque eu purus euismod	33,15 ₽	34	0
ZUPPA DI VERDURE	Integer ullamcorper neque eu purus euismod	34,90 ₽	35	0
CREMA DI POMODORO	Integer ullamcorper neque eu purus euismod	35,20 ₽	36	0
ZUPPA DI COZZE	Integer ullamcorper neque eu purus euismod	36,75 ₽	37	0
ZUPPA DI CIPOLLA	Integer ullamcorper neque eu purus euismod	37,30 ₽	38	0
ZUPPA DI FAGIOLI	Integer ullamcorper neque eu purus euismod	38,45 ₽	39	0
ZUPPA DI PATATE	Integer ullamcorper neque eu purus euismod	39,60 ₽	40	0
ZUPPA DI FARRO	Integer ullamcorper neque eu purus euismod	40,10 ₽	41	0
ZUPPA DI FUNGHI	Integer ullamcorper neque eu purus euismod	41,25 ₽	42	0
ZUPPA DI ASPARAGI	Integer ullamcorper neque eu purus euismod	42,40 ₽	43	0
ZUPPA DI ZUCCA	Integer ullamcorper neque eu purus euismod	43,55 ₽	44	0
ZUPPA DI PISELLI	Integer ullamcorper neque eu purus euismod	44,70 ₽	45	0
CREMA DI ZUCCHINE	Integer ullamcorper neque eu purus euismod	45,75 ₽	46	0
ZUPPA DI RISO	Integer ullamcorper neque eu purus euismod	46,90 ₽	47	0
ZUPPA DI ORZO	Integer ullamcorper neque eu purus euismod	47,05 ₽	48	0
ZUPPA DI VONGOLE	Integer ullamcorper neque eu purus euismod	48,20 ₽	49	0
ZUPPA DI CECI	Integer ullamcorper neque eu purus euismod	49,35 ₽	50	0
ZUPPA DI CAVOLFIORE	Integer ullamcorper neque eu purus euismod	30,85 ₽	51	0
ZUPPA DI SPINACI	Integer ullamcorper neque eu purus euismod	31,95 ₽	52	0
ZUPPA DI CAROTE	Integer ullamcorper neque eu purus euismod	32,45 ₽	53	0
ZUPPA DI POMODORO E BASILICO	Integer ullamcorper neque eu purus euismod	33,65 ₽	54	0
ZUPPA DI MELANZANE	Integer ullamcorper neque eu purus euismod	34,25 ₽	55	0
ZUPPA DI PORRI	Integer ullamcorper neque eu purus euismod	35,80 ₽	56	0
ZUPPA DI RAPE	Integer ullamcorper neque eu purus euismod	36,15 ₽	57	0
ZUPPA DI SCAMPI	Integer ullamcorper neque eu purus euismod	37,50 ₽	58	0
ZUPPA DI FAVE	Integer ullamcorper neque eu purus euismod	38,75 ₽	59	0
ZUPPA DI AGNOLOTTI	Integer ullamcorper neque eu purus euismod	39,95 ₽	60	0
SPAGHETTI CARBONARA	Integer ullamcorper neque eu purus euismod	40,50 ₽	61	2
PENNE ALL'ARRABBIATA	Integer ullamcorper neque eu purus euismod	41,25 ₽	62	2
FETTUCCINE ALFREDO	Integer ullamcorper neque eu purus euismod	42,80 ₽	63	2
LINGUINE ALLE VONGOLE	Integer ullamcorper neque eu purus euismod	43,15 ₽	64	2
FARFALLE AL PESTO	Integer ullamcorper neque eu purus euismod	44,90 ₽	65	2
RIGATONI ALLA CARBONARA	Integer ullamcorper neque eu purus euismod	45,20 ₽	66	2
TAGLIATELLE AL RAGÙ	Integer ullamcorper neque eu purus euismod	46,75 ₽	67	2
PAPPARDELLE AL CINGHIALE	Integer ullamcorper neque eu purus euismod	47,30 ₽	68	2
ORECCHIETTE ALLE CIME DI RAPA	Integer ullamcorper neque eu purus euismod	48,45 ₽	69	2
GNOCCHI AL POMODORO	Integer ullamcorper neque eu purus euismod	49,60 ₽	70	2
LASAGNA AL FORNO	Integer ullamcorper neque eu purus euismod	50,10 ₽	71	2
CANNELLONI RICOTTA E SPINACI	Integer ullamcorper neque eu purus euismod	51,25 ₽	72	2
TORTELLINI IN BRODO	Integer ullamcorper neque eu purus euismod	52,40 ₽	73	2
RAVIOLI DI MAGRO	Integer ullamcorper neque eu purus euismod	53,55 ₽	74	2
TAGLIOLINI AL TARTUFO	Integer ullamcorper neque eu purus euismod	54,70 ₽	75	2
BUCATINI ALL'AMATRICIANA	Integer ullamcorper neque eu purus euismod	55,75 ₽	76	2
PICI ALL'AGLIONE	Integer ullamcorper neque eu purus euismod	56,90 ₽	77	2
TROFIE AL PESTO GENOVESE	Integer ullamcorper neque eu purus euismod	57,05 ₽	78	2
STRANGOLAPRETI AL BURRO	Integer ullamcorper neque eu purus euismod	58,20 ₽	79	2
CAVATELLI ALLA NORMA	Integer ullamcorper neque eu purus euismod	59,35 ₽	80	2
SPAGHETTI ALLO SCOGLIO	Integer ullamcorper neque eu purus euismod	41,85 ₽	81	2
MEZZE MANICHE ALLA VODKA	Integer ullamcorper neque eu purus euismod	42,95 ₽	82	2
FUSILLI ALLA SORRENTINA	Integer ullamcorper neque eu purus euismod	43,45 ₽	83	2
PACCHERI ALLA GRICIA	Integer ullamcorper neque eu purus euismod	44,65 ₽	84	2
MALTAGLIATI CON PISELLI	Integer ullamcorper neque eu purus euismod	45,25 ₽	85	2
GARGANELLI AL RAGÙ BIANCO	Integer ullamcorper neque eu purus euismod	46,80 ₽	86	2
CALAMARATA ALLA NAPOLETANA	Integer ullamcorper neque eu purus euismod	47,15 ₽	87	2
BIGOLI IN SALSA	Integer ullamcorper neque eu purus euismod	48,50 ₽	88	2
CENCIONI AL POMODORO	Integer ullamcorper neque eu purus euismod	49,75 ₽	89	2
STROZZAPRETI AL RAGÙ	Integer ullamcorper neque eu purus euismod	50,95 ₽	90	2
TIRAMISÙ	Integer ullamcorper neque eu purus euismod	20,50 ₽	91	3
CANNOLLI SICILIANI	Integer ullamcorper neque eu purus euismod	21,75 ₽	92	3
PANNA COTTA	Integer ullamcorper neque eu purus euismod	22,90 ₽	93	3
PASTIERA NAPOLETANA	Integer ullamcorper neque eu purus euismod	23,25 ₽	94	3
CASSATA SICILIANA	Integer ullamcorper neque eu purus euismod	24,80 ₽	95	3
ZABAGLIONE	Integer ullamcorper neque eu purus euismod	25,40 ₽	96	3
TORTA CAPRESE	Integer ullamcorper neque eu purus euismod	26,15 ₽	97	3
BISCOTTI DI PRATO	Integer ullamcorper neque eu purus euismod	27,60 ₽	98	3
BUDINO DI RISO	Integer ullamcorper neque eu purus euismod	28,30 ₽	99	3
CROSTATA DI FRUTTA	Integer ullamcorper neque eu purus euismod	29,45 ₽	100	3
SEMPIFREDDO	Integer ullamcorper neque eu purus euismod	30,20 ₽	101	3
TORTA DELLA NONNA	Integer ullamcorper neque eu purus euismod	31,85 ₽	102	3
BOMBOLONI	Integer ullamcorper neque eu purus euismod	32,50 ₽	103	3
PANFORTE	Integer ullamcorper neque eu purus euismod	33,75 ₽	104	3
TORRONCINO	Integer ullamcorper neque eu purus euismod	34,90 ₽	105	3
STRUFFOLI	Integer ullamcorper neque eu purus euismod	35,25 ₽	106	3
ZEPPOLE DI SAN GIUSEPPE	Integer ullamcorper neque eu purus euismod	36,80 ₽	107	3
CANTUCCI CON VIN SANTO	Integer ullamcorper neque eu purus euismod	37,40 ₽	108	3
SFRATTO	Integer ullamcorper neque eu purus euismod	38,15 ₽	109	3
CASTAGNACCIO	Integer ullamcorper neque eu purus euismod	39,60 ₽	110	3
PAN DORO	Integer ullamcorper neque eu purus euismod	40,30 ₽	111	3
TORTELLI DOLCI	Integer ullamcorper neque eu purus euismod	41,45 ₽	112	3
CIAMBELLA	Integer ullamcorper neque eu purus euismod	42,20 ₽	113	3
BAICHE	Integer ullamcorper neque eu purus euismod	43,85 ₽	114	3
MOSTACCIOLI	Integer ullamcorper neque eu purus euismod	44,50 ₽	115	3
RICCIARELLI	Integer ullamcorper neque eu purus euismod	45,75 ₽	116	3
AMARETTI	Integer ullamcorper neque eu purus euismod	46,90 ₽	117	3
TORTA PARADISO	Integer ullamcorper neque eu purus euismod	47,25 ₽	118	3
SUSUMELLE	Integer ullamcorper neque eu purus euismod	48,80 ₽	119	3
TORTA DI RICOTTA	Integer ullamcorper neque eu purus euismod	49,40 ₽	120	3
BAROLO DOCG	Integer ullamcorper neque eu purus euismod	80,50 ₽	121	4
BRUNELLO DI MONTALCINO	Integer ullamcorper neque eu purus euismod	85,75 ₽	122	4
AMARONE DELLA VALPOLICELLA	Integer ullamcorper neque eu purus euismod	92,90 ₽	123	4
TIGNANELLO	Integer ullamcorper neque eu purus euismod	98,25 ₽	124	4
SASSICAIA	Integer ullamcorper neque eu purus euismod	104,80 ₽	125	4
MASSETO	Integer ullamcorper neque eu purus euismod	112,40 ₽	126	4
SOLAIA	Integer ullamcorper neque eu purus euismod	120,15 ₽	127	4
GAJA BARBARESCO	Integer ullamcorper neque eu purus euismod	126,60 ₽	128	4
ORNELLAIA	Integer ullamcorper neque eu purus euismod	132,30 ₽	129	4
TOSCANA IGT	Integer ullamcorper neque eu purus euismod	138,45 ₽	130	4
CHIANTI CLASSICO	Integer ullamcorper neque eu purus euismod	142,20 ₽	131	4
BOLGHERI SUPERIORE	Integer ullamcorper neque eu purus euismod	148,85 ₽	132	4
BARBARESCO DOCG	Integer ullamcorper neque eu purus euismod	154,50 ₽	133	4
MONTEPULCIANO D'ABRUZZO	Integer ullamcorper neque eu purus euismod	160,75 ₽	134	4
FRANCIACORTA	Integer ullamcorper neque eu purus euismod	166,90 ₽	135	4
LANGHE NEBBIOLO	Integer ullamcorper neque eu purus euismod	172,25 ₽	136	4
SUPER TUSCAN	Integer ullamcorper neque eu purus euismod	178,80 ₽	137	4
VALPOLICELLA RIPASSO	Integer ullamcorper neque eu purus euismod	184,40 ₽	138	4
CANNONAU DI SARDEGNA	Integer ullamcorper neque eu purus euismod	190,15 ₽	139	4
VERMENTINO DI GALLURA	Integer ullamcorper neque eu purus euismod	196,60 ₽	140	4
DOLCETTO D'ALBA	Integer ullamcorper neque eu purus euismod	88,30 ₽	141	4
NERO D'AVOLA	Integer ullamcorper neque eu purus euismod	94,15 ₽	142	4
LAMBRUSCO	Integer ullamcorper neque eu purus euismod	100,45 ₽	143	4
MONTEFALCO SAGRANTINO	Integer ullamcorper neque eu purus euismod	108,75 ₽	144	4
FIANO DI AVELLINO	Integer ullamcorper neque eu purus euismod	114,20 ₽	145	4
GRECO DI TUFO	Integer ullamcorper neque eu purus euismod	122,85 ₽	146	4
GAVI DI GAVI	Integer ullamcorper neque eu purus euismod	128,50 ₽	147	4
PROSECCO SUPERIORE	Integer ullamcorper neque eu purus euismod	134,75 ₽	148	4
MOSCATO D'ASTI	Integer ullamcorper neque eu purus euismod	140,90 ₽	149	4
BARBERA D'ASTI	Integer ullamcorper neque eu purus euismod	146,25 ₽	150	4
PERONI NASTRO AZZURRO	Integer ullamcorper neque eu purus euismod	50,50 ₽	151	5
MORETTI LA ROSSA	Integer ullamcorper neque eu purus euismod	52,75 ₽	152	5
BIRRA DEL BORGO	Integer ullamcorper neque eu purus euismod	54,90 ₽	153	5
BALADIN NAZIONALE	Integer ullamcorper neque eu purus euismod	56,25 ₽	154	5
ICHNUSA NON FILTRATA	Integer ullamcorper neque eu purus euismod	58,80 ₽	155	5
MENABREA BIANCA	Integer ullamcorper neque eu purus euismod	60,40 ₽	156	5
PERONI GRAN RISERVA	Integer ullamcorper neque eu purus euismod	62,15 ₽	157	5
BIRRIFICIO ITALIANO TIPOPILS	Integer ullamcorper neque eu purus euismod	64,60 ₽	158	5
BIRRA TOCALMATTO	Integer ullamcorper neque eu purus euismod	66,30 ₽	159	5
BIRRA PORELLI	Integer ullamcorper neque eu purus euismod	68,45 ₽	160	5
BIRRA LOVERBEER	Integer ullamcorper neque eu purus euismod	70,20 ₽	161	5
BIRRA LETIZIA	Integer ullamcorper neque eu purus euismod	72,85 ₽	162	5
BIRRA CEREALMENTE	Integer ullamcorper neque eu purus euismod	74,50 ₽	163	5
BIRRA DEL DUCA	Integer ullamcorper neque eu purus euismod	76,75 ₽	164	5
BIRRA TENUTA COLLEMORINO	Integer ullamcorper neque eu purus euismod	78,90 ₽	165	5
BIRRA ARTIGIANALE MONTEBARRO	Integer ullamcorper neque eu purus euismod	80,25 ₽	166	5
BIRRA VECCHIO BIRRAIO	Integer ullamcorper neque eu purus euismod	82,80 ₽	167	5
BIRRA PUNTO E VIRGOLA	Integer ullamcorper neque eu purus euismod	84,40 ₽	168	5
BIRRA BRAMA	Integer ullamcorper neque eu purus euismod	86,15 ₽	169	5
BIRRA CRAK	Integer ullamcorper neque eu purus euismod	88,60 ₽	170	5
BIRRA ITALA	Integer ullamcorper neque eu purus euismod	90,30 ₽	171	5
BIRRA MONGIOIA	Integer ullamcorper neque eu purus euismod	92,45 ₽	172	5
BIRRA LUPOMARZO	Integer ullamcorper neque eu purus euismod	94,20 ₽	173	5
BIRRA ELAV	Integer ullamcorper neque eu purus euismod	96,85 ₽	174	5
BIRRA MIRABILIA	Integer ullamcorper neque eu purus euismod	98,50 ₽	175	5
BIRRA OPPPIDUM	Integer ullamcorper neque eu purus euismod	55,75 ₽	176	5
BIRRA BIRRANOVA	Integer ullamcorper neque eu purus euismod	57,90 ₽	177	5
BIRRA MALTUS FABER	Integer ullamcorper neque eu purus euismod	59,25 ₽	178	5
BIRRA BIRRIFICIO SORRENTO	Integer ullamcorper neque eu purus euismod	61,80 ₽	179	5
BIRRA BIRRIFICIO DEL BORGO	Integer ullamcorper neque eu purus euismod	63,40 ₽	180	5
ACQUA NATURALE	Integer ullamcorper neque eu purus euismod	10,50 ₽	181	6
ACQUA FRIZZANTE	Integer ullamcorper neque eu purus euismod	11,25 ₽	182	6
SPREMUTA D'ARANCIA	Integer ullamcorper neque eu purus euismod	12,80 ₽	183	6
LIMONATA	Integer ullamcorper neque eu purus euismod	13,15 ₽	184	6
ARANCIATA	Integer ullamcorper neque eu purus euismod	14,90 ₽	185	6
CHINOTTO	Integer ullamcorper neque eu purus euismod	15,20 ₽	186	6
CEDRATA	Integer ullamcorper neque eu purus euismod	16,75 ₽	187	6
SPREMUTA DI POMPELMO	Integer ullamcorper neque eu purus euismod	17,30 ₽	188	6
TÈ AL LIMONE	Integer ullamcorper neque eu purus euismod	18,45 ₽	189	6
TÈ ALLA PESCA	Integer ullamcorper neque eu purus euismod	19,60 ₽	190	6
SPREMUTA DI CAROTA	Integer ullamcorper neque eu purus euismod	20,10 ₽	191	6
SUCCO DI MELAGRANA	Integer ullamcorper neque eu purus euismod	21,25 ₽	192	6
SPREMUTA DI ANANAS	Integer ullamcorper neque eu purus euismod	22,40 ₽	193	6
SMOOTHIE DI FRUTTI DI BOSCO	Integer ullamcorper neque eu purus euismod	23,55 ₽	194	6
LATTE DI MANDORLA	Integer ullamcorper neque eu purus euismod	24,70 ₽	195	6
CIOCCOLATA CALDA	Integer ullamcorper neque eu purus euismod	25,75 ₽	196	6
CAFFÈ SHAKERATO	Integer ullamcorper neque eu purus euismod	26,90 ₽	197	6
GRANITA AL CAFFÈ	Integer ullamcorper neque eu purus euismod	27,05 ₽	198	6
GRANITA ALLA MANDORLA	Integer ullamcorper neque eu purus euismod	28,20 ₽	199	6
SPREMUTA DI MELONE	Integer ullamcorper neque eu purus euismod	29,35 ₽	200	6
SUCCO DI POMODORO	Integer ullamcorper neque eu purus euismod	30,50 ₽	201	6
ACQUA DI COCCO	Integer ullamcorper neque eu purus euismod	31,65 ₽	202	6
TÈ VERDE	Integer ullamcorper neque eu purus euismod	32,80 ₽	203	6
INFUSO ALLA MENTA	Integer ullamcorper neque eu purus euismod	33,95 ₽	204	6
SPREMUTA DI SEDANO	Integer ullamcorper neque eu purus euismod	34,10 ₽	205	6
SUCCO DI BARBABIETOLA	Integer ullamcorper neque eu purus euismod	35,25 ₽	206	6
SMOOTHIE DI MANGO	Integer ullamcorper neque eu purus euismod	36,40 ₽	207	6
SELTZ AL LIMONE	Integer ullamcorper neque eu purus euismod	37,55 ₽	208	6
SPRITZ ANALCOLICO	Integer ullamcorper neque eu purus euismod	38,70 ₽	209	6
TONICA ALLA CHINA	Integer ullamcorper neque eu purus euismod	39,85 ₽	210	6
\.


--
-- TOC entry 3560 (class 0 OID 17160)
-- Dependencies: 245
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3539 (class 0 OID 17006)
-- Dependencies: 224
-- Data for Name: food_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.food_type (id, name) FROM stdin;
0	soupe
1	pizza
2	pasta
3	desert
4	wine
5	beer
6	drinks
\.


--
-- TOC entry 3558 (class 0 OID 17152)
-- Dependencies: 243
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- TOC entry 3557 (class 0 OID 17143)
-- Dependencies: 242
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- TOC entry 3549 (class 0 OID 17095)
-- Dependencies: 234
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
\.


--
-- TOC entry 3552 (class 0 OID 17112)
-- Dependencies: 237
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3543 (class 0 OID 17041)
-- Dependencies: 228
-- Data for Name: private_events; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.private_events (id, title, subtitle, text, image_url) FROM stdin;
1	weddings	\N	\N	/img/Кольца.png
2	corporate parties	\N	\N	/img/Бокалы.png
\.


--
-- TOC entry 3553 (class 0 OID 17119)
-- Dependencies: 238
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
rT7AK22gU0d1GnhsRz7kkbPAijs5jzJyWi45xUKp	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 YaBrowser/25.4.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0YxRk92ZWx2TUtETE0xQk12a2NJN0lKTFhKRnlhNEVLZXVtN1c5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dHVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1752942434
\.


--
-- TOC entry 3533 (class 0 OID 16963)
-- Dependencies: 218
-- Data for Name: static; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.static (title, subtitle, text, id, image_url) FROM stdin;
MASTER CHEF	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.	Integer ullamcorper neque eu purus euismod, ac faucibus mauris posuere. Morbi non ultrices ligula. Sed dictum, enim sed ullamcorper feugiat, dui odio vehicula eros, a sollicitudin lorem quam nec sem. Mauris tincidunt feugiat diam convallis pharetra. Nulla facilisis semper laoreet.	2	/img/Повар.png
about us	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.	Integer ullamcorper neque eu purus euismod, ac faucibus mauris posuere. Morbi non ultrices ligula. Sed dictum, enim sed ullamcorper feugiat, dui odio vehicula eros, a sollicitudin lorem quam nec sem. Mauris tincidunt feugiat diam convallis pharetra. Nulla facilisis semper laoreet.	1	/img/Уголь.png
\.


--
-- TOC entry 3551 (class 0 OID 17102)
-- Dependencies: 236
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 232
-- Name: Specialities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Specialities_id_seq"', 3, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 225
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 226
-- Name: book_a_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.book_a_table_id_seq', 1, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 231
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contact_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 227
-- Name: delicious_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.delicious_menu_id_seq', 210, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 244
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 223
-- Name: food_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.food_type_id_seq', 7, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 241
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 233
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 229
-- Name: private_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.private_events_id_seq', 2, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 220
-- Name: static_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.static_id_seq', 2, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3353 (class 2606 OID 17079)
-- Name: Specialities Specialities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Specialities"
    ADD CONSTRAINT "Specialities_pkey" PRIMARY KEY (id);


--
-- TOC entry 3347 (class 2606 OID 17025)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 17032)
-- Name: book_a_table book_a_table_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_a_table
    ADD CONSTRAINT book_a_table_pkey PRIMARY KEY (id);


--
-- TOC entry 3377 (class 2606 OID 17141)
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- TOC entry 3375 (class 2606 OID 17134)
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- TOC entry 3361 (class 2606 OID 17062)
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 17039)
-- Name: delicious_menu delicious_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delicious_menu
    ADD CONSTRAINT delicious_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 17168)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3386 (class 2606 OID 17170)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 3357 (class 2606 OID 17011)
-- Name: food_type food_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.food_type
    ADD CONSTRAINT food_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 17158)
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 17150)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3363 (class 2606 OID 17100)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3369 (class 2606 OID 17118)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 3359 (class 2606 OID 17052)
-- Name: private_events private_events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.private_events
    ADD CONSTRAINT private_events_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 17125)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 17064)
-- Name: static static_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.static
    ADD CONSTRAINT static_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 17111)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3367 (class 2606 OID 17109)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3380 (class 1259 OID 17151)
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- TOC entry 3370 (class 1259 OID 17127)
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- TOC entry 3373 (class 1259 OID 17126)
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


-- Completed on 2025-07-20 22:05:17 MSK

--
-- PostgreSQL database dump complete
--

