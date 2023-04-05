--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(50),
    description text,
    planet_id integer NOT NULL,
    aliens boolean,
    population_in_million numeric(7,2)
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    galaxy_type character varying(50),
    planet_count_in_billion numeric(5,2),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_planet numeric(5,2),
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    has_life boolean,
    description text,
    star_id integer NOT NULL,
    population_in_million numeric(7,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    color character varying(30),
    core_temperature_in_million_c numeric(5,2),
    galaxy_id integer NOT NULL,
    planet_count integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 'Humans', NULL, 1, NULL, NULL);
INSERT INTO public.civilization VALUES (4, 'Unknown Rogue AI', NULL, 3, NULL, NULL);
INSERT INTO public.civilization VALUES (5, 'Bloodseekers', NULL, 2, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pondzieg X-32', 3440, 'high-radiation', 41.50, 'Unbearable conditions aside, have quite amount of adamantium rich planets.');
INSERT INTO public.galaxy VALUES (2, 'Warcraft 3-222', 2120, 'warzone', 3.50, 'Galaxy that can be summed up as warzone theatre. Most of the planets are long wiped out.');
INSERT INTO public.galaxy VALUES (3, 'Koffee Und Milch DUO-69', 6969, 'icant', 69.00, 'Learning all these new languages could be taxing on mental well being, but thankfully, I have my daily coffee right here!.');
INSERT INTO public.galaxy VALUES (4, 'Rasta Far M-9000', 9200, 'distorted imagery', 11.50, 'The more you travel through here the more crazy everything starts to appear. Is this a dream?');
INSERT INTO public.galaxy VALUES (5, 'Xenosphere LOSS-47', 1866, 'hostile life forms', 0.04, 'Very few real planets, most of the mass here consists of planet likehives, appearing to be home for swarms of hostile life forms. Stay Away!');
INSERT INTO public.galaxy VALUES (6, 'The Milky Way', 13600, 'home', 100.00, 'The best place on the earth! I mean galaxy... I mean... universe...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'weqrq-234', NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'ewr-213', NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'erwrwgf-078', NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'kjhgk-349', NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'popoi', NULL, NULL, 9);
INSERT INTO public.moon VALUES (11, 'euit-0001', NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'ak-777', NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'wopper-9', NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'frau-4141', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'popoi-omega', NULL, NULL, 12);
INSERT INTO public.moon VALUES (16, 'k780', NULL, NULL, 11);
INSERT INTO public.moon VALUES (17, 'nastyenka232', NULL, NULL, 12);
INSERT INTO public.moon VALUES (18, 'lifeformac666', NULL, NULL, 12);
INSERT INTO public.moon VALUES (19, 'man-6969', NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'popoi-ULTRA-AA', NULL, NULL, 12);
INSERT INTO public.moon VALUES (21, 'kaspirowski', NULL, NULL, 5);
INSERT INTO public.moon VALUES (22, 'geran333', NULL, NULL, 5);
INSERT INTO public.moon VALUES (23, 'donbasik4145', NULL, NULL, 6);
INSERT INTO public.moon VALUES (24, 'DELAY-4-U-2', NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, true, 'The blue heaven inside cold embrace of galaxy', 1, 8000.00);
INSERT INTO public.planet VALUES (2, 'Amadeus FSX-3', 8030, true, 'Appears to be homeland to unknown hostile alien civilization', 4, 900.00);
INSERT INTO public.planet VALUES (3, 'Paranoid 20', 254, true, 'Rogue AI from far galaxies created this planet from meteor and populated it with intelligent machines. Fascinating!', 6, 20.00);
INSERT INTO public.planet VALUES (4, 'weqfsf-3234', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (5, 'elkl-213233', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (6, 'salalmia-08', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (7, 'kings-xxx', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (8, 'jsx-888', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (9, 'GER-1945', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, 'fatman-31', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (11, 'kings-triS', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, 'pornsforme', NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 'Yellow-Orange', 15.00, 6, 8);
INSERT INTO public.star VALUES (2, 'Faziel', 12500, 'Red', 7.00, 1, 3);
INSERT INTO public.star VALUES (3, 'Luminy-6', 2000, 'White-Yellow', 20.00, 1, 23);
INSERT INTO public.star VALUES (4, 'Devil Red', 9903, 'Red-Blue', 42.00, 5, 6);
INSERT INTO public.star VALUES (5, 'Mercy J-288', 5703, 'Blue-Yellow', 12.00, 6, 11);
INSERT INTO public.star VALUES (6, 'XramSDD-4TI', 800, 'Green-Purple', 14.00, 4, 7);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: civilization civilization_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_name_key UNIQUE (name);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: civilization civilization_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

