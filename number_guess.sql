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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    best_game integer,
    games_played integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (168, 'user_1678599902938', NULL, NULL);
INSERT INTO public.users VALUES (170, 'user_1678599902937', NULL, NULL);
INSERT INTO public.users VALUES (172, 'user_1678599971756', 0, 1);
INSERT INTO public.users VALUES (173, 'user_1678599971755', 0, 1);
INSERT INTO public.users VALUES (175, 'user_1678600196471', 0, 1);
INSERT INTO public.users VALUES (176, 'user_1678600196470', 0, 1);
INSERT INTO public.users VALUES (177, 'user_1678600414450', 0, 1);
INSERT INTO public.users VALUES (178, 'user_1678600414449', 0, 1);
INSERT INTO public.users VALUES (179, 'user_1678600437225', 0, 1);
INSERT INTO public.users VALUES (180, 'user_1678600437224', 0, 1);
INSERT INTO public.users VALUES (181, 'user_1678600472201', 0, 1);
INSERT INTO public.users VALUES (182, 'user_1678600472200', 0, 1);
INSERT INTO public.users VALUES (184, 'user_1678600607833', 0, 2);
INSERT INTO public.users VALUES (183, 'user_1678600607834', 0, 5);
INSERT INTO public.users VALUES (186, 'user_1678600661423', 0, 2);
INSERT INTO public.users VALUES (242, 'user_1678602126525', 26, 2);
INSERT INTO public.users VALUES (185, 'user_1678600661424', 0, 5);
INSERT INTO public.users VALUES (204, 'user_1678601382561', 631, 2);
INSERT INTO public.users VALUES (188, 'user_1678600702944', 0, 2);
INSERT INTO public.users VALUES (258, 'user_1678602978181', 284, 2);
INSERT INTO public.users VALUES (187, 'user_1678600702945', 0, 5);
INSERT INTO public.users VALUES (203, 'user_1678601382562', 16, 5);
INSERT INTO public.users VALUES (218, 'user_1678601652210', 643, 2);
INSERT INTO public.users VALUES (232, 'user_1678601751698', 80, 2);
INSERT INTO public.users VALUES (190, 'user_1678600754765', 684, 2);
INSERT INTO public.users VALUES (249, 'user_1678602390418', 141, 5);
INSERT INTO public.users VALUES (241, 'user_1678602126526', 24, 5);
INSERT INTO public.users VALUES (189, 'user_1678600754766', 10, 5);
INSERT INTO public.users VALUES (206, 'user_1678601458558', 60, 2);
INSERT INTO public.users VALUES (192, 'user_1678600783544', 0, 2);
INSERT INTO public.users VALUES (231, 'user_1678601751699', 77, 5);
INSERT INTO public.users VALUES (191, 'user_1678600783545', 0, 5);
INSERT INTO public.users VALUES (217, 'user_1678601652211', 116, 5);
INSERT INTO public.users VALUES (194, 'user_1678600854852', 0, 2);
INSERT INTO public.users VALUES (205, 'user_1678601458559', 472, 5);
INSERT INTO public.users VALUES (193, 'user_1678600854853', 0, 5);
INSERT INTO public.users VALUES (196, 'user_1678601012514', 830, 2);
INSERT INTO public.users VALUES (208, 'user_1678601468223', 20, 2);
INSERT INTO public.users VALUES (195, 'user_1678601012515', 122, 5);
INSERT INTO public.users VALUES (174, '1', 0, 3);
INSERT INTO public.users VALUES (220, 'user_1678601659152', 168, 2);
INSERT INTO public.users VALUES (198, 'user_1678601247463', 480, 2);
INSERT INTO public.users VALUES (207, 'user_1678601468224', 81, 5);
INSERT INTO public.users VALUES (197, 'user_1678601247464', 98, 5);
INSERT INTO public.users VALUES (219, 'user_1678601659153', 178, 5);
INSERT INTO public.users VALUES (200, 'user_1678601324840', 746, 2);
INSERT INTO public.users VALUES (234, 'user_1678601772838', 390, 2);
INSERT INTO public.users VALUES (210, 'user_1678601478132', 232, 2);
INSERT INTO public.users VALUES (199, 'user_1678601324841', 77, 5);
INSERT INTO public.users VALUES (257, 'user_1678602978182', 81, 5);
INSERT INTO public.users VALUES (244, 'user_1678602141625', 313, 2);
INSERT INTO public.users VALUES (209, 'user_1678601478133', 12, 5);
INSERT INTO public.users VALUES (202, 'user_1678601339711', 156, 2);
INSERT INTO public.users VALUES (222, 'user_1678601667662', 108, 2);
INSERT INTO public.users VALUES (201, 'user_1678601339712', 83, 5);
INSERT INTO public.users VALUES (233, 'user_1678601772839', 316, 5);
INSERT INTO public.users VALUES (221, 'user_1678601667663', 187, 5);
INSERT INTO public.users VALUES (212, 'user_1678601484879', 170, 2);
INSERT INTO public.users VALUES (252, 'user_1678602394286', 409, 2);
INSERT INTO public.users VALUES (211, 'user_1678601484880', 130, 5);
INSERT INTO public.users VALUES (224, 'user_1678601673052', 802, 2);
INSERT INTO public.users VALUES (236, 'user_1678602052913', 420, 2);
INSERT INTO public.users VALUES (214, 'user_1678601493697', 68, 2);
INSERT INTO public.users VALUES (223, 'user_1678601673053', 360, 5);
INSERT INTO public.users VALUES (243, 'user_1678602141626', 281, 5);
INSERT INTO public.users VALUES (213, 'user_1678601493698', 224, 5);
INSERT INTO public.users VALUES (251, 'user_1678602394287', 180, 5);
INSERT INTO public.users VALUES (235, 'user_1678602052914', 274, 5);
INSERT INTO public.users VALUES (226, 'user_1678601678527', 578, 2);
INSERT INTO public.users VALUES (216, 'user_1678601504289', 663, 2);
INSERT INTO public.users VALUES (225, 'user_1678601678528', 146, 5);
INSERT INTO public.users VALUES (215, 'user_1678601504290', 514, 5);
INSERT INTO public.users VALUES (228, 'user_1678601684725', 106, 2);
INSERT INTO public.users VALUES (238, 'user_1678602069733', 781, 2);
INSERT INTO public.users VALUES (227, 'user_1678601684726', 15, 5);
INSERT INTO public.users VALUES (246, 'user_1678602166838', 414, 2);
INSERT INTO public.users VALUES (237, 'user_1678602069734', 12, 5);
INSERT INTO public.users VALUES (230, 'user_1678601693568', 339, 2);
INSERT INTO public.users VALUES (245, 'user_1678602166839', 6, 5);
INSERT INTO public.users VALUES (229, 'user_1678601693569', 65, 5);
INSERT INTO public.users VALUES (254, 'user_1678602862836', 674, 2);
INSERT INTO public.users VALUES (240, 'user_1678602073124', 444, 2);
INSERT INTO public.users VALUES (239, 'user_1678602073125', 143, 5);
INSERT INTO public.users VALUES (253, 'user_1678602862837', 12, 5);
INSERT INTO public.users VALUES (248, 'user_1678602358121', 349, 2);
INSERT INTO public.users VALUES (247, 'user_1678602358122', 327, 5);
INSERT INTO public.users VALUES (256, 'user_1678602906697', 77, 2);
INSERT INTO public.users VALUES (250, 'user_1678602390417', 227, 2);
INSERT INTO public.users VALUES (255, 'user_1678602906698', 30, 5);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 258, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
