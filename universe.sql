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
-- Name: dumy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dumy (
    dumy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.dumy OWNER TO freecodecamp;

--
-- Name: dumy_dumy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dumy_dumy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dumy_dumy_id_seq OWNER TO freecodecamp;

--
-- Name: dumy_dumy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dumy_dumy_id_seq OWNED BY public.dumy.dumy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_types character varying(20) NOT NULL,
    age integer,
    description text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean NOT NULL,
    planet_id integer
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
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean NOT NULL,
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
    name character varying(20) NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    age integer,
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
-- Name: dumy dumy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dumy ALTER COLUMN dumy_id SET DEFAULT nextval('public.dumy_dumy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: dumy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dumy VALUES (1, 'Wéx̲es', 1560, true, 1);
INSERT INTO public.dumy VALUES (2, 'Ngíngene7', 5685, false, 3);
INSERT INTO public.dumy VALUES (3, 'Pex̲síseng', 7851, true, 4);
INSERT INTO public.dumy VALUES (4, 'Sx̲wán7elh', 9814, false, 2);
INSERT INTO public.dumy VALUES (5, 'Penáx̲weng', 6525, false, 6);
INSERT INTO public.dumy VALUES (6, 'Chenelíle7', 2625, true, 5);
INSERT INTO public.dumy VALUES (7, 'Chenséqi7', 1560, true, 1);
INSERT INTO public.dumy VALUES (8, 'Phobos', 5685, false, 3);
INSERT INTO public.dumy VALUES (9, 'Deimos', 7851, true, 4);
INSERT INTO public.dumy VALUES (10, 'Amalthea-7b', 9814, false, 2);
INSERT INTO public.dumy VALUES (11, 'Europa', 6525, false, 6);
INSERT INTO public.dumy VALUES (12, 'Ganymede', 2625, true, 5);
INSERT INTO public.dumy VALUES (13, 'Atlas', 6525, false, 6);
INSERT INTO public.dumy VALUES (14, 'Pandora', 2625, true, 5);
INSERT INTO public.dumy VALUES (15, 'Epimetheus', 1560, true, 1);
INSERT INTO public.dumy VALUES (16, 'Tethys', 5685, false, 3);
INSERT INTO public.dumy VALUES (17, 'Dione', 7851, true, 4);
INSERT INTO public.dumy VALUES (18, 'Rhea-7b', 9814, false, 2);
INSERT INTO public.dumy VALUES (19, 'Puck-452b', 6525, false, 6);
INSERT INTO public.dumy VALUES (20, 'Oberon', 2625, true, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkway', 'spiral', 50, 'Mew Mew');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'irregular', 60, 'RRRR');
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'peculiar', 70, 'FFX');
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', 'elliptical', 50, 'GAE');
INSERT INTO public.galaxy VALUES (5, 'Virgo A', 'spiral', 69, 'LED');
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 'peculiar', 70, 'ttt');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Wéx̲es', 1560, true, 1);
INSERT INTO public.moon VALUES (2, 'Ngíngene7', 5685, false, 3);
INSERT INTO public.moon VALUES (3, 'Pex̲síseng', 7851, true, 4);
INSERT INTO public.moon VALUES (4, 'Sx̲wán7elh', 9814, false, 2);
INSERT INTO public.moon VALUES (5, 'Penáx̲weng', 6525, false, 6);
INSERT INTO public.moon VALUES (6, 'Chenelíle7', 2625, true, 5);
INSERT INTO public.moon VALUES (7, 'Chenséqi7', 1560, true, 1);
INSERT INTO public.moon VALUES (8, 'Phobos', 5685, false, 3);
INSERT INTO public.moon VALUES (9, 'Deimos', 7851, true, 4);
INSERT INTO public.moon VALUES (10, 'Amalthea-7b', 9814, false, 2);
INSERT INTO public.moon VALUES (11, 'Europa', 6525, false, 6);
INSERT INTO public.moon VALUES (12, 'Ganymede', 2625, true, 5);
INSERT INTO public.moon VALUES (13, 'Atlas', 6525, false, 6);
INSERT INTO public.moon VALUES (14, 'Pandora', 2625, true, 5);
INSERT INTO public.moon VALUES (15, 'Epimetheus', 1560, true, 1);
INSERT INTO public.moon VALUES (16, 'Tethys', 5685, false, 3);
INSERT INTO public.moon VALUES (17, 'Dione', 7851, true, 4);
INSERT INTO public.moon VALUES (18, 'Rhea-7b', 9814, false, 2);
INSERT INTO public.moon VALUES (19, 'Puck-452b', 6525, false, 6);
INSERT INTO public.moon VALUES (20, 'Oberon', 2625, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1560, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 5685, false, 3);
INSERT INTO public.planet VALUES (3, 'Earth', 7851, true, 4);
INSERT INTO public.planet VALUES (4, 'Mars', 9814, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6525, false, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 2625, true, 5);
INSERT INTO public.planet VALUES (7, 'Neptune', 1560, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 5685, false, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 7851, true, 4);
INSERT INTO public.planet VALUES (10, 'CoRoT-7b', 9814, false, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 6525, false, 6);
INSERT INTO public.planet VALUES (12, 'HD 209458b', 2625, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 1560.00, 10, 1);
INSERT INTO public.star VALUES (2, 'Arcturus', 5685.00, 20, 3);
INSERT INTO public.star VALUES (3, 'Canopus', 7851.00, 75, 4);
INSERT INTO public.star VALUES (4, 'Capellas', 9814.00, 80, 2);
INSERT INTO public.star VALUES (5, 'Procyon', 6525.00, 69, 6);
INSERT INTO public.star VALUES (6, 'Regulus', 2625.00, 93, 5);


--
-- Name: dumy_dumy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dumy_dumy_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dumy dumy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dumy
    ADD CONSTRAINT dumy_name_key UNIQUE (name);


--
-- Name: dumy dumy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dumy
    ADD CONSTRAINT dumy_pkey PRIMARY KEY (dumy_id);


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
-- Name: dumy dumy_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dumy
    ADD CONSTRAINT dumy_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

