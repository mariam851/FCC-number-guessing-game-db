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

INSERT INTO public.games VALUES (1, 1, 318);
INSERT INTO public.games VALUES (2, 1, 317);
INSERT INTO public.games VALUES (3, 2, 315);
INSERT INTO public.games VALUES (4, 2, 880);
INSERT INTO public.games VALUES (5, 1, 798);
INSERT INTO public.games VALUES (6, 1, 478);
INSERT INTO public.games VALUES (7, 1, 486);
INSERT INTO public.games VALUES (8, 3, 869);
INSERT INTO public.games VALUES (9, 3, 884);
INSERT INTO public.games VALUES (10, 4, 333);
INSERT INTO public.games VALUES (11, 4, 179);
INSERT INTO public.games VALUES (12, 3, 846);
INSERT INTO public.games VALUES (13, 3, 619);
INSERT INTO public.games VALUES (14, 3, 174);
INSERT INTO public.games VALUES (15, 5, 427);
INSERT INTO public.games VALUES (16, 5, 454);
INSERT INTO public.games VALUES (17, 6, 439);
INSERT INTO public.games VALUES (18, 6, 175);
INSERT INTO public.games VALUES (19, 5, 53);
INSERT INTO public.games VALUES (20, 5, 857);
INSERT INTO public.games VALUES (21, 5, 860);
INSERT INTO public.games VALUES (22, 7, 219);
INSERT INTO public.games VALUES (23, 7, 779);
INSERT INTO public.games VALUES (24, 8, 661);
INSERT INTO public.games VALUES (25, 8, 303);
INSERT INTO public.games VALUES (26, 7, 279);
INSERT INTO public.games VALUES (27, 7, 118);
INSERT INTO public.games VALUES (28, 7, 682);
INSERT INTO public.games VALUES (29, 9, 13);
INSERT INTO public.games VALUES (30, 10, 528);
INSERT INTO public.games VALUES (31, 10, 477);
INSERT INTO public.games VALUES (32, 11, 224);
INSERT INTO public.games VALUES (33, 11, 573);
INSERT INTO public.games VALUES (34, 10, 459);
INSERT INTO public.games VALUES (35, 10, 475);
INSERT INTO public.games VALUES (36, 10, 608);
INSERT INTO public.games VALUES (37, 12, 893);
INSERT INTO public.games VALUES (38, 12, 946);
INSERT INTO public.games VALUES (39, 13, 318);
INSERT INTO public.games VALUES (40, 13, 39);
INSERT INTO public.games VALUES (41, 12, 885);
INSERT INTO public.games VALUES (42, 12, 650);
INSERT INTO public.games VALUES (43, 12, 773);
INSERT INTO public.games VALUES (44, 14, 519);
INSERT INTO public.games VALUES (45, 14, 384);
INSERT INTO public.games VALUES (46, 15, 344);
INSERT INTO public.games VALUES (47, 15, 176);
INSERT INTO public.games VALUES (48, 14, 248);
INSERT INTO public.games VALUES (49, 14, 401);
INSERT INTO public.games VALUES (50, 14, 171);
INSERT INTO public.games VALUES (51, 16, 997);
INSERT INTO public.games VALUES (52, 16, 716);
INSERT INTO public.games VALUES (53, 17, 835);
INSERT INTO public.games VALUES (54, 17, 238);
INSERT INTO public.games VALUES (55, 16, 933);
INSERT INTO public.games VALUES (56, 16, 107);
INSERT INTO public.games VALUES (57, 16, 858);
INSERT INTO public.games VALUES (58, 18, 864);
INSERT INTO public.games VALUES (59, 18, 967);
INSERT INTO public.games VALUES (60, 19, 120);
INSERT INTO public.games VALUES (61, 19, 9);
INSERT INTO public.games VALUES (62, 18, 649);
INSERT INTO public.games VALUES (63, 18, 227);
INSERT INTO public.games VALUES (64, 18, 753);
INSERT INTO public.games VALUES (65, 20, 687);
INSERT INTO public.games VALUES (66, 20, 250);
INSERT INTO public.games VALUES (67, 21, 408);
INSERT INTO public.games VALUES (68, 21, 577);
INSERT INTO public.games VALUES (69, 20, 765);
INSERT INTO public.games VALUES (70, 20, 655);
INSERT INTO public.games VALUES (71, 20, 267);
INSERT INTO public.games VALUES (72, 22, 340);
INSERT INTO public.games VALUES (73, 22, 312);
INSERT INTO public.games VALUES (74, 23, 992);
INSERT INTO public.games VALUES (75, 23, 517);
INSERT INTO public.games VALUES (76, 22, 200);
INSERT INTO public.games VALUES (77, 22, 781);
INSERT INTO public.games VALUES (78, 22, 716);
INSERT INTO public.games VALUES (79, 24, 110);
INSERT INTO public.games VALUES (80, 24, 989);
INSERT INTO public.games VALUES (81, 25, 680);
INSERT INTO public.games VALUES (82, 25, 49);
INSERT INTO public.games VALUES (83, 24, 399);
INSERT INTO public.games VALUES (84, 24, 814);
INSERT INTO public.games VALUES (85, 24, 142);
INSERT INTO public.games VALUES (86, 26, 178);
INSERT INTO public.games VALUES (87, 26, 479);
INSERT INTO public.games VALUES (88, 27, 688);
INSERT INTO public.games VALUES (89, 27, 559);
INSERT INTO public.games VALUES (90, 26, 771);
INSERT INTO public.games VALUES (91, 26, 616);
INSERT INTO public.games VALUES (92, 26, 644);
INSERT INTO public.games VALUES (93, 28, 690);
INSERT INTO public.games VALUES (94, 28, 316);
INSERT INTO public.games VALUES (95, 29, 670);
INSERT INTO public.games VALUES (96, 29, 439);
INSERT INTO public.games VALUES (97, 28, 906);
INSERT INTO public.games VALUES (98, 28, 270);
INSERT INTO public.games VALUES (99, 28, 56);
INSERT INTO public.games VALUES (100, 30, 823);
INSERT INTO public.games VALUES (101, 30, 774);
INSERT INTO public.games VALUES (102, 31, 833);
INSERT INTO public.games VALUES (103, 31, 979);
INSERT INTO public.games VALUES (104, 30, 466);
INSERT INTO public.games VALUES (105, 30, 48);
INSERT INTO public.games VALUES (106, 30, 415);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1733772206376');
INSERT INTO public.users VALUES (2, 'user_1733772206375');
INSERT INTO public.users VALUES (3, 'user_1733772332693');
INSERT INTO public.users VALUES (4, 'user_1733772332692');
INSERT INTO public.users VALUES (5, 'user_1733772494160');
INSERT INTO public.users VALUES (6, 'user_1733772494159');
INSERT INTO public.users VALUES (7, 'user_1733772585100');
INSERT INTO public.users VALUES (8, 'user_1733772585099');
INSERT INTO public.users VALUES (9, 'Landon');
INSERT INTO public.users VALUES (10, 'user_1733776288576');
INSERT INTO public.users VALUES (11, 'user_1733776288575');
INSERT INTO public.users VALUES (12, 'user_1733776347291');
INSERT INTO public.users VALUES (13, 'user_1733776347290');
INSERT INTO public.users VALUES (14, 'user_1733776399467');
INSERT INTO public.users VALUES (15, 'user_1733776399466');
INSERT INTO public.users VALUES (16, 'user_1733776527294');
INSERT INTO public.users VALUES (17, 'user_1733776527293');
INSERT INTO public.users VALUES (18, 'user_1733776809197');
INSERT INTO public.users VALUES (19, 'user_1733776809196');
INSERT INTO public.users VALUES (20, 'user_1733776927467');
INSERT INTO public.users VALUES (21, 'user_1733776927466');
INSERT INTO public.users VALUES (22, 'user_1733777569413');
INSERT INTO public.users VALUES (23, 'user_1733777569412');
INSERT INTO public.users VALUES (24, 'user_1733777623700');
INSERT INTO public.users VALUES (25, 'user_1733777623699');
INSERT INTO public.users VALUES (26, 'user_1733777861803');
INSERT INTO public.users VALUES (27, 'user_1733777861802');
INSERT INTO public.users VALUES (28, 'user_1733777981189');
INSERT INTO public.users VALUES (29, 'user_1733777981188');
INSERT INTO public.users VALUES (30, 'user_1733778162169');
INSERT INTO public.users VALUES (31, 'user_1733778162168');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


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

