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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean,
    age_in_bya numeric,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_universe_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_universe_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    planet_id integer NOT NULL,
    big boolean,
    moon_type character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_universe_id_seq OWNER TO freecodecamp;

--
-- Name: moons_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_universe_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean,
    age_in_mya numeric,
    planet_type character varying(50),
    este_lives_here boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_universe_id_seq OWNER TO freecodecamp;

--
-- Name: planet_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_universe_id_seq OWNED BY public.planet.planet_id;


--
-- Name: quasar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.quasar (
    quasar_id integer NOT NULL,
    name character varying(50) NOT NULL,
    facts character varying(200),
    location character varying(70),
    discovered integer
);


ALTER TABLE public.quasar OWNER TO freecodecamp;

--
-- Name: quasars_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.quasars_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quasars_universe_id_seq OWNER TO freecodecamp;

--
-- Name: quasars_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.quasars_universe_id_seq OWNED BY public.quasar.quasar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    big boolean,
    age_in_mya integer,
    num_planets integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_universe_id_seq OWNER TO freecodecamp;

--
-- Name: star_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_universe_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_universe_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_universe_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_universe_id_seq'::regclass);


--
-- Name: quasar quasar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar ALTER COLUMN quasar_id SET DEFAULT nextval('public.quasars_universe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Messier 49', false, 10000000000, 'elliptical galaxy');
INSERT INTO public.galaxy VALUES (2, 'NGC 3923', false, 13700000000, 'shell galaxy');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', true, 13610000000, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', false, 1320000000, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Messier 81', false, 1331000000, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Andromeda', false, 10010000000, 'Barred Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'none', 2, true, NULL);
INSERT INTO public.moon VALUES (3, 'Moon', 3, true, NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', 4, true, NULL);
INSERT INTO public.moon VALUES (5, 'Deimos', 4, true, NULL);
INSERT INTO public.moon VALUES (6, 'Lo', 5, true, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 5, true, NULL);
INSERT INTO public.moon VALUES (8, 'Ganymede', 5, true, NULL);
INSERT INTO public.moon VALUES (9, 'Callisto', 5, true, NULL);
INSERT INTO public.moon VALUES (10, 'Ymir', 6, true, NULL);
INSERT INTO public.moon VALUES (12, 'Hippocamp', 8, true, NULL);
INSERT INTO public.moon VALUES (13, 'Puck', 7, true, NULL);
INSERT INTO public.moon VALUES (14, 'Prometheus', 6, true, NULL);
INSERT INTO public.moon VALUES (15, 'Tarvos', 6, true, NULL);
INSERT INTO public.moon VALUES (16, 'Narvi', 6, true, NULL);
INSERT INTO public.moon VALUES (17, 'Fenrir', 6, true, NULL);
INSERT INTO public.moon VALUES (18, 'Gunnlod', 6, true, NULL);
INSERT INTO public.moon VALUES (19, 'Beli', 6, true, NULL);
INSERT INTO public.moon VALUES (20, 'Calypso', 6, true, NULL);
INSERT INTO public.moon VALUES (21, 'Sao', 8, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 4500000000, 'Terrestrial', false);
INSERT INTO public.planet VALUES (2, 'Venus', false, 4500000000, 'Rocky', false);
INSERT INTO public.planet VALUES (3, 'Earth', true, 4530000000, 'terrestrial', true);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4600000000, 'terrestrial', false);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4603000000, 'gas giant', false);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 4500000000, 'gas giant', false);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4503000000, 'ice giant', false);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4503000000, 'ice giant', false);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 4500000000, 'Dwarf', false);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 4573000000, 'Dwarf', false);
INSERT INTO public.planet VALUES (11, 'Makeake', false, 4500000000, 'Dwarf', false);
INSERT INTO public.planet VALUES (12, 'Eris', false, 4500000000, 'Dwarf', false);


--
-- Data for Name: quasar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.quasar VALUES (1, '3C 273', 'Brightest quasar to earth', 'Virgo constellationi', 1959);
INSERT INTO public.quasar VALUES (2, 'ULAS', 'Second most distant quasar', 'Bootes Constellation', 2017);
INSERT INTO public.quasar VALUES (3, 'Einstein Cross', 'Gravitationally lensed quasar', 'Pegasus', 1985);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 4, 8, 'Sun');
INSERT INTO public.star VALUES (2, true, 10, 0, 'Betelgeuse');
INSERT INTO public.star VALUES (3, true, 230, 0, 'Sirius');
INSERT INTO public.star VALUES (4, true, 11, 1, 'Antares');
INSERT INTO public.star VALUES (5, true, 9, 14, 'RIGEL');
INSERT INTO public.star VALUES (6, true, 455300000, 0, 'Vega');


--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_universe_id_seq', 1, false);


--
-- Name: moons_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_universe_id_seq', 22, true);


--
-- Name: planet_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_universe_id_seq', 1, false);


--
-- Name: quasars_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.quasars_universe_id_seq', 1, false);


--
-- Name: star_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_universe_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: quasar quasar_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_id PRIMARY KEY (quasar_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy UNIQUE (galaxy_type);


--
-- Name: moon uq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon UNIQUE (moon_type);


--
-- Name: planet uq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet UNIQUE (name);


--
-- Name: quasar uq_quasars; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT uq_quasars UNIQUE (name);


--
-- Name: star uq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star UNIQUE (name);


--
-- Name: moon moons_planet_pkey_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_planet_pkey_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--
