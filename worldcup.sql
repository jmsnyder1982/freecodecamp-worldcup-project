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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (26, 2018, 'Final', 42, 43, 4, 2);
INSERT INTO public.games VALUES (27, 2018, 'Third Place', 44, 45, 2, 0);
INSERT INTO public.games VALUES (28, 2018, 'Semi-Final', 43, 45, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Semi-Final', 42, 44, 1, 0);
INSERT INTO public.games VALUES (30, 2018, 'Quarter-Final', 43, 46, 3, 2);
INSERT INTO public.games VALUES (31, 2018, 'Quarter-Final', 45, 47, 2, 0);
INSERT INTO public.games VALUES (32, 2018, 'Quarter-Final', 44, 48, 2, 1);
INSERT INTO public.games VALUES (33, 2018, 'Quarter-Final', 42, 49, 2, 0);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 45, 50, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 47, 51, 1, 0);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 44, 52, 3, 2);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 48, 53, 2, 0);
INSERT INTO public.games VALUES (38, 2018, 'Eighth-Final', 43, 54, 2, 1);
INSERT INTO public.games VALUES (39, 2018, 'Eighth-Final', 46, 55, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Eighth-Final', 49, 56, 2, 1);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 42, 57, 4, 3);
INSERT INTO public.games VALUES (42, 2014, 'Final', 58, 57, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Third Place', 59, 48, 3, 0);
INSERT INTO public.games VALUES (44, 2014, 'Semi-Final', 57, 59, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Semi-Final', 58, 48, 7, 1);
INSERT INTO public.games VALUES (46, 2014, 'Quarter-Final', 59, 60, 1, 0);
INSERT INTO public.games VALUES (47, 2014, 'Quarter-Final', 57, 44, 1, 0);
INSERT INTO public.games VALUES (48, 2014, 'Quarter-Final', 48, 50, 2, 1);
INSERT INTO public.games VALUES (49, 2014, 'Quarter-Final', 58, 42, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 48, 61, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 50, 49, 2, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 42, 62, 2, 0);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 58, 63, 2, 1);
INSERT INTO public.games VALUES (54, 2014, 'Eighth-Final', 59, 53, 2, 1);
INSERT INTO public.games VALUES (55, 2014, 'Eighth-Final', 60, 64, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Eighth-Final', 57, 51, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 44, 65, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (42, 'France');
INSERT INTO public.teams VALUES (43, 'Croatia');
INSERT INTO public.teams VALUES (44, 'Belgium');
INSERT INTO public.teams VALUES (45, 'England');
INSERT INTO public.teams VALUES (46, 'Russia');
INSERT INTO public.teams VALUES (47, 'Sweden');
INSERT INTO public.teams VALUES (48, 'Brazil');
INSERT INTO public.teams VALUES (49, 'Uruguay');
INSERT INTO public.teams VALUES (50, 'Colombia');
INSERT INTO public.teams VALUES (51, 'Switzerland');
INSERT INTO public.teams VALUES (52, 'Japan');
INSERT INTO public.teams VALUES (53, 'Mexico');
INSERT INTO public.teams VALUES (54, 'Denmark');
INSERT INTO public.teams VALUES (55, 'Spain');
INSERT INTO public.teams VALUES (56, 'Portugal');
INSERT INTO public.teams VALUES (57, 'Argentina');
INSERT INTO public.teams VALUES (58, 'Germany');
INSERT INTO public.teams VALUES (59, 'Netherlands');
INSERT INTO public.teams VALUES (60, 'Costa Rica');
INSERT INTO public.teams VALUES (61, 'Chile');
INSERT INTO public.teams VALUES (62, 'Nigeria');
INSERT INTO public.teams VALUES (63, 'Algeria');
INSERT INTO public.teams VALUES (64, 'Greece');
INSERT INTO public.teams VALUES (65, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 57, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 65, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

