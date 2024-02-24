--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    number_of_stars_in_billions numeric(12,5),
    diameter_in_thousands_of_ly integer,
    has_supermassive_bh boolean
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
    name character varying(30) NOT NULL,
    has_life boolean,
    type text,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    type text,
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
    name character varying(30) NOT NULL,
    weight_in_solar_mass integer,
    has_planets boolean,
    type text,
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
-- Name: supermasive_blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supermasive_blackhole (
    supermasive_blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_rotating boolean,
    galaxy_id integer
);


ALTER TABLE public.supermasive_blackhole OWNER TO freecodecamp;

--
-- Name: supermasive_blackhole_smbh_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supermasive_blackhole_smbh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supermasive_blackhole_smbh_id_seq OWNER TO freecodecamp;

--
-- Name: supermasive_blackhole_smbh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supermasive_blackhole_smbh_id_seq OWNED BY public.supermasive_blackhole.supermasive_blackhole_id;


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
-- Name: supermasive_blackhole supermasive_blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supermasive_blackhole ALTER COLUMN supermasive_blackhole_id SET DEFAULT nextval('public.supermasive_blackhole_smbh_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 30.00000, 40, true);
INSERT INTO public.galaxy VALUES (2, 'B', 33.00000, 57, true);
INSERT INTO public.galaxy VALUES (3, 'C', 202.00000, 90, true);
INSERT INTO public.galaxy VALUES (4, 'D', 200.00000, 80, false);
INSERT INTO public.galaxy VALUES (5, 'E', 100.00000, 40, true);
INSERT INTO public.galaxy VALUES (6, 'F', 300.00000, 50, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', true, 'Gas Giant', 5);
INSERT INTO public.moon VALUES (2, 'Moon 2', false, 'Gas Giant', 6);
INSERT INTO public.moon VALUES (3, 'Moon 3', false, 'Rocky', 7);
INSERT INTO public.moon VALUES (4, 'Moon 4', false, 'Ice Giant', 8);
INSERT INTO public.moon VALUES (5, 'Moon 5', false, 'Rocky', 9);
INSERT INTO public.moon VALUES (6, 'Moon 6', false, 'Gas Giant', 10);
INSERT INTO public.moon VALUES (7, 'Moon 7', false, 'Rocky', 11);
INSERT INTO public.moon VALUES (8, 'Moon 8', false, 'Rocky', 12);
INSERT INTO public.moon VALUES (9, 'Moon 9', true, 'Ice Giant', 13);
INSERT INTO public.moon VALUES (10, 'Moon 10', true, 'Rocky', 14);
INSERT INTO public.moon VALUES (11, 'Moon 11', true, 'Rocky', 15);
INSERT INTO public.moon VALUES (12, 'Moon 12', true, 'Rocky', 16);
INSERT INTO public.moon VALUES (13, 'Moon 13', false, 'Rocky', 17);
INSERT INTO public.moon VALUES (14, 'Moon 14', true, 'Gas Giant', 5);
INSERT INTO public.moon VALUES (15, 'Moon 15', true, 'Gas Giant', 6);
INSERT INTO public.moon VALUES (16, 'Moon 16', true, 'Rocky', 7);
INSERT INTO public.moon VALUES (17, 'Moon 17', true, 'Gas Giant', 8);
INSERT INTO public.moon VALUES (18, 'Moon 18', true, 'Rocky', 9);
INSERT INTO public.moon VALUES (19, 'Moon 19', true, 'Rocky', 10);
INSERT INTO public.moon VALUES (20, 'Moon 20', false, 'Rocky', 11);
INSERT INTO public.moon VALUES (21, 'Moon 21', false, 'Ice Giant', 12);
INSERT INTO public.moon VALUES (22, 'Moon 22', false, 'Rocky', 13);
INSERT INTO public.moon VALUES (23, 'Moon 23', true, 'Ice Giant', 14);
INSERT INTO public.moon VALUES (24, 'Moon 24', true, 'Gas Giant', 15);
INSERT INTO public.moon VALUES (25, 'Moon 25', false, 'Ice Giant', 16);
INSERT INTO public.moon VALUES (26, 'Moon 26', false, 'Gas Giant', 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'A-1-1', true, 'Rocky', 7);
INSERT INTO public.planet VALUES (6, 'A-1-2', false, 'Rocky', 7);
INSERT INTO public.planet VALUES (7, 'A-1-3', false, 'Gas Giant', 7);
INSERT INTO public.planet VALUES (8, 'A-1-4', false, 'Gas Giant', 7);
INSERT INTO public.planet VALUES (9, 'A-1-5', false, 'Ice Giant', 7);
INSERT INTO public.planet VALUES (10, 'D-1-1', true, 'Rocky', 10);
INSERT INTO public.planet VALUES (11, 'D-1-2', false, 'Rocky', 10);
INSERT INTO public.planet VALUES (12, 'D-1-3', false, 'Gas Giant', 10);
INSERT INTO public.planet VALUES (13, 'D-1-4', false, 'Gas Giant', 10);
INSERT INTO public.planet VALUES (14, 'D-1-5', false, 'Ice Giant', 10);
INSERT INTO public.planet VALUES (15, 'B-1-1', true, 'Rocky', 8);
INSERT INTO public.planet VALUES (16, 'B-1-2', false, 'Ice Giant', 8);
INSERT INTO public.planet VALUES (17, 'B-1-3', false, 'Ice Giant', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'A-1', 1, true, 'Main Sequence', 1);
INSERT INTO public.star VALUES (8, 'B-1', 1, true, 'Red Dwarf', 2);
INSERT INTO public.star VALUES (9, 'C-1', 1, false, 'White dwarf', 3);
INSERT INTO public.star VALUES (11, 'E-1', 7, false, 'White dwarf', 5);
INSERT INTO public.star VALUES (12, 'F-1', 4, false, 'Neutron', 6);
INSERT INTO public.star VALUES (10, 'D-1', 2, true, 'Main Sequence', 4);


--
-- Data for Name: supermasive_blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supermasive_blackhole VALUES (1, 'A''s SMBH', true, 1);
INSERT INTO public.supermasive_blackhole VALUES (2, 'B''s SMBH', true, 1);
INSERT INTO public.supermasive_blackhole VALUES (3, 'C''s SMBH', true, 1);
INSERT INTO public.supermasive_blackhole VALUES (4, 'E''s SMBH', true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: supermasive_blackhole_smbh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supermasive_blackhole_smbh_id_seq', 4, true);


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
-- Name: supermasive_blackhole supermasive_blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supermasive_blackhole
    ADD CONSTRAINT supermasive_blackhole_name_key UNIQUE (name);


--
-- Name: supermasive_blackhole supermasive_blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supermasive_blackhole
    ADD CONSTRAINT supermasive_blackhole_pkey PRIMARY KEY (supermasive_blackhole_id);


--
-- Name: supermasive_blackhole fk_galaxy_smbh; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supermasive_blackhole
    ADD CONSTRAINT fk_galaxy_smbh FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

