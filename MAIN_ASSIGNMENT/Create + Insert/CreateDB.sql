CREATE DATABASE IF NOT EXISTS tennis;

USE tennis;

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS ranking;
DROP TABLE IF EXISTS matches_94_04_14_24;
DROP TABLE IF EXISTS tournaments;
DROP TABLE IF EXISTS events;

CREATE TABLE players(
	player_id int NOT NULL,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    hand varchar(1) NOT NULL, 
    date_of_birth date NOT NULL,
    nationality varchar(3) NOT NULL, 
    height int NOT NULL,
    PRIMARY KEY (player_id)
);

CREATE TABLE single_ranking(
	ranking_date date NOT NULL,
    ranking int NOT NULL,
    player int NOT NULL,
    points int NOT NULL
);

CREATE TABLE matches_94_04_14_24(
	tournament_key int NOT NULL, 
    surface varchar(10) NOT NULL,
    draw_size int NOT NULL,
    tournament_date date NOT NULL,
    winner_id int NOT NULL,
    loser_id int NOT NULL,
    score varchar(100) NOT NULL, 
    best_of int NOT NULL,
    round varchar(50) NOT NULL
);

CREATE TABLE tournaments(
	tournament_key int NOT NULL,
    tournament_name text NOT NULL,
    PRIMARY KEY (tournament_key)
);

