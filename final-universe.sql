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
-- Name: exotic; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exotic (
    name character varying(50) NOT NULL,
    type character varying(50),
    description text,
    galaxy_id integer,
    exotic_id integer NOT NULL
);


ALTER TABLE public.exotic OWNER TO freecodecamp;

--
-- Name: exotic_exotic_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exotic_exotic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exotic_exotic_id_seq OWNER TO freecodecamp;

--
-- Name: exotic_exotic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exotic_exotic_id_seq OWNED BY public.exotic.exotic_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    billions_of_stars numeric,
    shape character varying(50),
    diameter_lightyrs integer
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    has_atmosphere boolean,
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
    name character varying(50) NOT NULL,
    moons integer,
    is_terrestrial boolean,
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
    name character varying(50) NOT NULL,
    temp_k integer,
    constellation character varying(50),
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
-- Name: exotic exotic_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exotic ALTER COLUMN exotic_id SET DEFAULT nextval('public.exotic_exotic_id_seq'::regclass);


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
-- Data for Name: exotic; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exotic VALUES ('Messier 33 center', 'black hole', 'The Triangulum Galaxy is theorized to have a black hole of intermediate mass at its center. This galactic center is the most luminous X-ray source in the Local Group.', 4, 1);
INSERT INTO public.exotic VALUES ('Einstein Cross', 'quasar', 'The Einstein Cross is a gravitationally lensed quasar that sits directly behind the centre of the galaxy ZW 2237+030, called Huchra’s Lens. Four images of the same distant quasar (plus one in the centre, too dim to see) appear in the middle of the foreground galaxy due to strong gravitational lensing. This system was discovered by John Huchra and coworkers in 1985, although at the time they only detected that there was a quasar behind a galaxy based on differing redshifts and did not resolve the four separate images of the quasar.', 1, 2);
INSERT INTO public.exotic VALUES ('Sagitarius A*', 'black hole', 'Sagittarius A* is the supermassive black hole at the Galactic Center of the Milky Way. Viewed from Earth, it is located near the border of the constellations Sagittarius and Scorpius, about 5.6° south of the ecliptic, visually close to the Butterfly Cluster (M6) and Lambda Scorpii.
The object is a bright and very compact astronomical radio source. The name Sagittarius A* distinguishes the compact source from the larger (and much brighter) Sagittarius A (Sgr A) region in which it is embedded. Sgr A* was discovered in 1974 by Bruce Balick and Robert L. Brown, and the asterisk * was assigned in 1982 by Brown, who understood that the strongest radio emission from the center of the galaxy appeared to be due to a compact non-thermal radio object.', 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, 'barred spiral', 87400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, 'barred spiral', 152000);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 20, 'magellanic spiral', 32200);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 40, 'spiral', 61120);
INSERT INTO public.galaxy VALUES (5, 'Messier 64', 100, 'spiral', 53800);
INSERT INTO public.galaxy VALUES (6, 'Messier 74', 100, 'spiral', 95000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, true, 5);
INSERT INTO public.moon VALUES (8, 'Metis', false, false, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', false, false, 5);
INSERT INTO public.moon VALUES (10, 'Titan', true, true, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', true, true, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', true, true, 6);
INSERT INTO public.moon VALUES (13, 'Epimetheus', false, false, 6);
INSERT INTO public.moon VALUES (14, 'Prometheus', false, false, 6);
INSERT INTO public.moon VALUES (15, 'Mimas', true, false, 6);
INSERT INTO public.moon VALUES (16, 'Janus', false, false, 6);
INSERT INTO public.moon VALUES (17, 'Titania', true, false, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', true, false, 7);
INSERT INTO public.moon VALUES (19, 'Triton', true, true, 8);
INSERT INTO public.moon VALUES (20, 'Naiad', false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 95, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 146, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 28, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 16, false, 1);
INSERT INTO public.planet VALUES (9, 'Teegarden’s Star b', 0, true, 3);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 0, false, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', 0, false, 2);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri d', 0, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5772, 'none', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2992, 'Centaurus', 1);
INSERT INTO public.star VALUES (3, 'Teegarden’s Star', 3034, 'Aries', 1);
INSERT INTO public.star VALUES (4, 'S Doradus', 8500, 'Dorado', 3);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3600, 'Orion', 1);
INSERT INTO public.star VALUES (6, 'Antares', 18500, 'Scorpius', 1);


--
-- Name: exotic_exotic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exotic_exotic_id_seq', 3, true);


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
-- Name: exotic exotic_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exotic
    ADD CONSTRAINT exotic_name_key UNIQUE (name);


--
-- Name: exotic exotic_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exotic
    ADD CONSTRAINT exotic_pkey PRIMARY KEY (exotic_id);


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
-- Name: exotic exotic_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exotic
    ADD CONSTRAINT exotic_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

