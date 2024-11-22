CREATE DATABASE IF NOT EXISTS tennis;

USE tennis;

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS ranking;
DROP TABLE IF EXISTS matches_94_04_14_24;

CREATE TABLE players(
	player_id int,
    first_name varchar(100) DEFAULT NULL,
    last_name varchar(100) DEFAULT NULL,
    hand varchar(1) DEFAULT NULL, 
    date_of_birth date DEFAULT NULL,
    nationality varchar(3) DEFAULT NULL, 
    height int DEFAULT NULL,
    PRIMARY KEY (player_id)
);

CREATE TABLE single_ranking(
	ranking_date date NOT NULL,
    ranking int NOT NULL,
    player int NOT NULL,
    points int NOT NULL
);

CREATE TABLE matches_94_04_14_24(
	tourney_id varchar(50) NOT NULL, 
    tourney_name varchar(100) NOT NULL,
    surface varchar(10) NOT NULL,
    draw_size int NOT NULL,
    tourney_date date NOT NULL,
    winner_id int NOT NULL,
    loser_id int NOT NULL,
    score varchar(100) NOT NULL, 
    best_of int NOT NULL,
    round varchar(50) NOT NULL
);


