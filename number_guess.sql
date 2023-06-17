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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 2);
INSERT INTO public.games VALUES (2, 16, 420);
INSERT INTO public.games VALUES (3, 18, 358);
INSERT INTO public.games VALUES (4, 15, 5);
INSERT INTO public.games VALUES (5, 22, 9);
INSERT INTO public.games VALUES (6, 22, 413);
INSERT INTO public.games VALUES (7, 23, 252);
INSERT INTO public.games VALUES (8, 23, 529);
INSERT INTO public.games VALUES (9, 22, 125);
INSERT INTO public.games VALUES (10, 22, 1);
INSERT INTO public.games VALUES (11, 22, 564);
INSERT INTO public.games VALUES (12, 25, 1);
INSERT INTO public.games VALUES (13, 12, 1);
INSERT INTO public.games VALUES (14, 12, 1);
INSERT INTO public.games VALUES (15, 26, 371);
INSERT INTO public.games VALUES (16, 26, 508);
INSERT INTO public.games VALUES (17, 27, 255);
INSERT INTO public.games VALUES (18, 27, 460);
INSERT INTO public.games VALUES (19, 26, 563);
INSERT INTO public.games VALUES (20, 26, 555);
INSERT INTO public.games VALUES (21, 26, 90);
INSERT INTO public.games VALUES (22, 12, 11);
INSERT INTO public.games VALUES (23, 28, 163);
INSERT INTO public.games VALUES (24, 28, 534);
INSERT INTO public.games VALUES (25, 29, 613);
INSERT INTO public.games VALUES (26, 29, 438);
INSERT INTO public.games VALUES (27, 28, 558);
INSERT INTO public.games VALUES (28, 28, 584);
INSERT INTO public.games VALUES (29, 28, 574);
INSERT INTO public.games VALUES (30, 12, 9);
INSERT INTO public.games VALUES (31, 30, 449);
INSERT INTO public.games VALUES (32, 30, 431);
INSERT INTO public.games VALUES (33, 31, 392);
INSERT INTO public.games VALUES (34, 31, 891);
INSERT INTO public.games VALUES (35, 30, 444);
INSERT INTO public.games VALUES (36, 30, 177);
INSERT INTO public.games VALUES (37, 30, 900);
INSERT INTO public.games VALUES (38, 32, 673);
INSERT INTO public.games VALUES (39, 32, 966);
INSERT INTO public.games VALUES (40, 33, 986);
INSERT INTO public.games VALUES (41, 33, 647);
INSERT INTO public.games VALUES (42, 32, 211);
INSERT INTO public.games VALUES (43, 32, 689);
INSERT INTO public.games VALUES (44, 32, 469);
INSERT INTO public.games VALUES (45, 34, 788);
INSERT INTO public.games VALUES (46, 34, 685);
INSERT INTO public.games VALUES (47, 35, 294);
INSERT INTO public.games VALUES (48, 35, 828);
INSERT INTO public.games VALUES (49, 34, 490);
INSERT INTO public.games VALUES (50, 34, 452);
INSERT INTO public.games VALUES (51, 34, 352);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1687023030417');
INSERT INTO public.users VALUES (2, 'user_1687023030416');
INSERT INTO public.users VALUES (3, 'user_1687023056718');
INSERT INTO public.users VALUES (4, 'user_1687023056717');
INSERT INTO public.users VALUES (5, 'user_1687023443450');
INSERT INTO public.users VALUES (6, 'user_1687023443449');
INSERT INTO public.users VALUES (7, 'user_1687023778455');
INSERT INTO public.users VALUES (8, 'user_1687023778454');
INSERT INTO public.users VALUES (9, 'user_1687023940670');
INSERT INTO public.users VALUES (10, 'user_1687023940669');
INSERT INTO public.users VALUES (11, 'aaorn');
INSERT INTO public.users VALUES (12, 'a');
INSERT INTO public.users VALUES (13, 'user_1687024265627');
INSERT INTO public.users VALUES (14, 'user_1687024265626');
INSERT INTO public.users VALUES (15, 'aaron');
INSERT INTO public.users VALUES (16, 'user_1687024554877');
INSERT INTO public.users VALUES (17, 'user_1687024554876');
INSERT INTO public.users VALUES (18, 'user_1687024646075');
INSERT INTO public.users VALUES (19, 'user_1687024646074');
INSERT INTO public.users VALUES (20, 'user_1687024703491');
INSERT INTO public.users VALUES (21, 'user_1687024703490');
INSERT INTO public.users VALUES (22, 'user_1687024833006');
INSERT INTO public.users VALUES (23, 'user_1687024833005');
INSERT INTO public.users VALUES (24, 'AARON');
INSERT INTO public.users VALUES (25, 'sdd');
INSERT INTO public.users VALUES (26, 'user_1687025868142');
INSERT INTO public.users VALUES (27, 'user_1687025868141');
INSERT INTO public.users VALUES (28, 'user_1687025912224');
INSERT INTO public.users VALUES (29, 'user_1687025912223');
INSERT INTO public.users VALUES (30, 'user_1687027147193');
INSERT INTO public.users VALUES (31, 'user_1687027147192');
INSERT INTO public.users VALUES (32, 'user_1687027175950');
INSERT INTO public.users VALUES (33, 'user_1687027175949');
INSERT INTO public.users VALUES (34, 'user_1687027206552');
INSERT INTO public.users VALUES (35, 'user_1687027206551');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
