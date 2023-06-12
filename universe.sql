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
    name character varying(30) NOT NULL,
    no_of_stars integer,
    mass integer NOT NULL,
    radius numeric(20,2),
    has_black_hole boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
    has_life_id integer NOT NULL,
    ye boolean NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    sure text
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.has_life_has_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.has_life_has_life_id_seq OWNER TO freecodecamp;

--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.has_life_has_life_id_seq OWNED BY public.has_life.has_life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    dist_planet integer,
    mass integer,
    radius numeric(5,2),
    is_alone boolean,
    has_water boolean,
    name character varying(30) NOT NULL,
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
    no_of_moon integer NOT NULL,
    earth_day_for_one_rev integer,
    radius numeric(5,2),
    has_moon boolean,
    has_life boolean,
    name character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    mass integer NOT NULL,
    luminosity integer,
    radius numeric(5,2),
    in_milky_wy boolean,
    is_young boolean,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: has_life has_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life ALTER COLUMN has_life_id SET DEFAULT nextval('public.has_life_has_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100000, 1230, 110000.12, true, false);
INSERT INTO public.galaxy VALUES (2, 'Trangulum', 4000, 50, 30000.11, false, false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 100, 160, 30000.11, true, false);
INSERT INTO public.galaxy VALUES (4, 'Pinwheell', 1, 1000, 85000.11, false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 100, 1, 25000.11, true, false);
INSERT INTO public.galaxy VALUES (6, 'Bode', 250, 5, 45000.11, true, false);


--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.has_life VALUES (1, true, 1, '23423EM2', 'its a good planet');
INSERT INTO public.has_life VALUES (2, true, 2, 'ExmPET32MI', 'its a good planemt');
INSERT INTO public.has_life VALUES (3, false, 1, 'Lfosf', 'its a good planet');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 150, 10, 140.21, false, false, 'megma', 1);
INSERT INTO public.moon VALUES (2, 150, 10, 140.21, false, false, 'gigma', 2);
INSERT INTO public.moon VALUES (3, 151, 100, 12.02, true, true, 'ligma', 3);
INSERT INTO public.moon VALUES (4, 120, 100, 250.21, true, true, 'titan', 1);
INSERT INTO public.moon VALUES (5, 1432, 1, 120.22, true, false, 'lolma', 1);
INSERT INTO public.moon VALUES (6, 150, 10, 140.21, false, false, 'megma3', 1);
INSERT INTO public.moon VALUES (7, 150, 10, 140.21, false, false, 'gigm1a', 2);
INSERT INTO public.moon VALUES (8, 151, 100, 12.02, true, true, 'ligma3', 3);
INSERT INTO public.moon VALUES (9, 120, 100, 250.21, true, true, 'titan2', 1);
INSERT INTO public.moon VALUES (10, 1432, 1, 120.22, true, false, 'lolma1', 1);
INSERT INTO public.moon VALUES (11, 150, 10, 140.21, false, false, 'megma33', 1);
INSERT INTO public.moon VALUES (12, 150, 10, 140.21, false, false, 'gigm13a', 2);
INSERT INTO public.moon VALUES (13, 151, 100, 12.02, true, true, 'ligma33', 3);
INSERT INTO public.moon VALUES (14, 120, 100, 250.21, true, true, 'titan23', 1);
INSERT INTO public.moon VALUES (15, 1432, 1, 120.22, true, false, 'lolma13', 1);
INSERT INTO public.moon VALUES (16, 150, 10, 140.21, false, false, 'megma433', 1);
INSERT INTO public.moon VALUES (17, 150, 10, 140.21, false, false, 'gigm413a', 2);
INSERT INTO public.moon VALUES (18, 151, 100, 12.02, true, true, 'ligma433', 3);
INSERT INTO public.moon VALUES (19, 120, 100, 250.21, true, true, 'titan423', 1);
INSERT INTO public.moon VALUES (20, 1432, 1, 120.22, true, false, 'lolma413', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, 88, 243.78, false, false, 'Mercury', 1);
INSERT INTO public.planet VALUES (2, 0, 50, 10.01, false, false, 'Venus', 1);
INSERT INTO public.planet VALUES (3, 1, 365, 360.01, true, true, 'Earth', 1);
INSERT INTO public.planet VALUES (4, 2, 250, 200.01, true, false, 'Mars', 1);
INSERT INTO public.planet VALUES (5, 64, 20, 100.01, true, false, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, 0, 88, 243.78, false, false, 'Mercury5', 1);
INSERT INTO public.planet VALUES (7, 0, 50, 10.01, false, false, 'Venus4', 1);
INSERT INTO public.planet VALUES (8, 1, 365, 360.01, true, true, 'Earth3', 1);
INSERT INTO public.planet VALUES (9, 2, 250, 200.01, true, false, 'Mars2', 1);
INSERT INTO public.planet VALUES (10, 64, 20, 100.01, true, false, 'Jupiter1', 1);
INSERT INTO public.planet VALUES (11, 0, 88, 243.78, false, false, 'Mercury95', 1);
INSERT INTO public.planet VALUES (12, 0, 50, 10.01, false, false, 'Venus44', 1);
INSERT INTO public.planet VALUES (13, 1, 365, 360.01, true, true, 'Earth33', 1);
INSERT INTO public.planet VALUES (14, 2, 250, 200.01, true, false, 'Mars5', 1);
INSERT INTO public.planet VALUES (15, 64, 20, 100.01, true, false, 'Jupiter9', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4, 200, 1.65, false, false, 'alpha', 1);
INSERT INTO public.star VALUES (2, 3, 1995, 69.57, false, false, 'beta', 1);
INSERT INTO public.star VALUES (3, 10, 3, 1.48, false, false, 'upsilon', 1);
INSERT INTO public.star VALUES (4, 1, 68, 13.60, false, false, 'delta', 1);
INSERT INTO public.star VALUES (5, 2, 7959, 2.40, false, false, 'Mu', 1);
INSERT INTO public.star VALUES (6, 1, 23, 50.29, false, false, 'Omicron', 1);
INSERT INTO public.star VALUES (7, 3, 638, 4.60, false, false, 'Iota', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.has_life_has_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 43, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: has_life has_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_name_key UNIQUE (name);


--
-- Name: has_life has_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_pkey PRIMARY KEY (has_life_id);


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
-- Name: has_life has_life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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