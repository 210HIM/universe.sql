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
-- Name: dis_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dis_from_earth (
    dis_from_earth_id integer NOT NULL,
    name character varying,
    life boolean NOT NULL,
    age integer
);


ALTER TABLE public.dis_from_earth OWNER TO freecodecamp;

--
-- Name: dis_from_earth_dis_from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dis_from_earth_dis_from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dis_from_earth_dis_from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: dis_from_earth_dis_from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dis_from_earth_dis_from_earth_id_seq OWNED BY public.dis_from_earth.dis_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    galaxy_type text,
    is_spiral boolean NOT NULL,
    dis_from_earth integer
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
    name character varying,
    life boolean NOT NULL,
    age numeric,
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
    name character varying,
    life boolean NOT NULL,
    star_id integer,
    age numeric
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
    name character varying,
    life boolean NOT NULL,
    galaxy_id integer,
    age numeric
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
-- Name: dis_from_earth dis_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dis_from_earth ALTER COLUMN dis_from_earth_id SET DEFAULT nextval('public.dis_from_earth_dis_from_earth_id_seq'::regclass);


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
-- Data for Name: dis_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dis_from_earth VALUES (1, 'abc', true, 123);
INSERT INTO public.dis_from_earth VALUES (2, 'xyz', true, 258);
INSERT INTO public.dis_from_earth VALUES (3, 'abxy', true, 7895);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'sphiral', true, 1234);
INSERT INTO public.galaxy VALUES (2, 'Cygnus A', 'elliptical', false, 4562);
INSERT INTO public.galaxy VALUES (3, 'Virgo A', 'peculiar', false, 7895);
INSERT INTO public.galaxy VALUES (4, 'Maffei I', 'spiral', true, 7412);
INSERT INTO public.galaxy VALUES (5, 'Maffei II', 'spiral', true, 8523);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 'spiral', false, 789654);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 'Moon', false, 123456, 1);
INSERT INTO public.moon VALUES (7, 'Xyz', false, 852369, 5);
INSERT INTO public.moon VALUES (8, 'njopl', false, 12346, 8);
INSERT INTO public.moon VALUES (9, 'njolk', false, 789456, 4);
INSERT INTO public.moon VALUES (10, 'asdf', false, 456987, 5);
INSERT INTO public.moon VALUES (11, 'Moomn', false, 123456, 6);
INSERT INTO public.moon VALUES (12, 'kXyz', false, 8523609, 8);
INSERT INTO public.moon VALUES (13, 'njofpl', false, 123406, 12);
INSERT INTO public.moon VALUES (14, 'njolfk', false, 7089456, 3);
INSERT INTO public.moon VALUES (15, 'asfdf', false, 4569087, 11);
INSERT INTO public.moon VALUES (20, 'Moomnn', false, 123456, 6);
INSERT INTO public.moon VALUES (21, 'kyz', false, 8523609, 8);
INSERT INTO public.moon VALUES (22, 'jofpl', false, 123406, 1);
INSERT INTO public.moon VALUES (23, 'jolnfk', false, 708956, 10);
INSERT INTO public.moon VALUES (24, 'amsfdf', false, 45690087, 13);
INSERT INTO public.moon VALUES (25, 'Moom_nn', false, 123456, 6);
INSERT INTO public.moon VALUES (26, 'ky_z', false, 8523609, 8);
INSERT INTO public.moon VALUES (27, 'j_ofpl', false, 123406, 1);
INSERT INTO public.moon VALUES (28, 'jol_nfk', false, 708956, 10);
INSERT INTO public.moon VALUES (29, 'amsff', false, 45690087, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 4, 123456);
INSERT INTO public.planet VALUES (3, 'Mars', false, 2, 123456);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 5, 78956);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 2, 852147);
INSERT INTO public.planet VALUES (6, 'Neptune', false, 6, 7894456);
INSERT INTO public.planet VALUES (7, 'Mars_2', false, 6, 123406);
INSERT INTO public.planet VALUES (8, 'klino', false, 2, 708956);
INSERT INTO public.planet VALUES (9, 'sunio', false, 2, 85214);
INSERT INTO public.planet VALUES (10, 'Ario', false, 3, 789445);
INSERT INTO public.planet VALUES (11, 'Mars_3', false, 5, 1023406);
INSERT INTO public.planet VALUES (12, 'klinno', false, 6, 7089056);
INSERT INTO public.planet VALUES (13, 'sunbio', false, 3, 852104);
INSERT INTO public.planet VALUES (14, 'Arino', false, 1, 7894450);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', false, 2, 1478);
INSERT INTO public.star VALUES (2, 'Canopus', false, 1, 78956);
INSERT INTO public.star VALUES (3, 'Vega', false, 3, 96325);
INSERT INTO public.star VALUES (4, 'Rigel', false, 5, 125689);
INSERT INTO public.star VALUES (5, 'Achernar', false, 4, 753159);
INSERT INTO public.star VALUES (6, 'Procyon', false, 6, 89567);


--
-- Name: dis_from_earth_dis_from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dis_from_earth_dis_from_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dis_from_earth dis_from_earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dis_from_earth
    ADD CONSTRAINT dis_from_earth_name_key UNIQUE (name);


--
-- Name: dis_from_earth dis_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dis_from_earth
    ADD CONSTRAINT dis_from_earth_pkey PRIMARY KEY (dis_from_earth_id);


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

