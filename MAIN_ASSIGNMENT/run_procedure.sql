drop database if exists tennis;
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

USE tennis;

INSERT INTO players(player_id, first_name, last_name, hand, date_of_birth, nationality, height) values
('210097', 'Ben', 'Shelton', 'L', '2002-10-09', 'USA', '193'), -- 15
('208363', 'Mariano', 'Navone', 'R', '2001-02-27', 'ARG', '178'), -- 31
('209260', 'Matteo', 'Gigante', 'L', '2002-01-04', 'ITA', '178'), -- 40 
('207925', 'Flavio', 'Cobolli', 'R', '2002-05-06', 'ITA', '185'), -- 53
('207686', 'Alexander', 'Shevchenko', 'R', '2000-11-29', 'KAZ', '185'), -- 59
('210506', 'Alex', 'Michelsen', 'R', '2004-08-25', 'USA', '193'), -- 60
('208659', 'Giovanni', 'Mpetshi Perricard', 'R' ,'2003-07-08', 'FRA', '203'), -- 66
('210150', 'Jakub', 'Mensik', 'R', '2005-09-01', 'CZE', '193'), -- 76
('208014', 'Rinky', 'Hijikata', 'R', '2001-02-23', 'AUS', '178'), -- 78
('206499', 'Aleksandar', 'Kovacevic', 'R', '1998-08-29', 'AUS', '183'), -- 87
('209992', 'Juncheng', 'Shang', 'L', '2005-02-02', 'CHN', '180'), -- 92
('200443', 'Adam', 'Walton', 'R', '1999-04-17', 'AUS', '183'), -- 96
('207681', 'Francisco', 'Comesana', 'R', '2000-10-06', 'ARG', '178'); -- 99

INSERT INTO single_ranking(ranking_date, ranking, player, points) values
('2024-05-27', '15', '210097', '2500'),
('2024-05-27', '31', '208363', '1339'),
('2024-05-27', '40', '209260', '1092'),
('2024-05-27', '53', '207925', '940'),
('2024-05-27', '59', '207686', '855'),
('2024-05-27', '60', '210506', '835'), 
('2024-05-27', '66', '208659', '786'),
('2024-05-27', '76', '210150', '728'),
('2024-05-27', '78', '208014', '723'),
('2024-05-27', '87', '206499', '681'),
('2024-05-27', '92', '209992', '660'),
('2024-05-27', '96', '200443', '635'),
('2024-05-27', '99', '207681', '626');

INSERT INTO matches_94_04_14_24(tourney_id, tourney_name, surface, draw_size, tourney_date, winner_id, loser_id, score, best_of, round) values
('2022-RG', 'Roland Garros', 'Clay', '128', '2022-05-22', '104745', '104925', '6-2 4-6 6-2 7-6(4)', 5, 'QF'),
('2012-RG', 'Roland Garros', 'Clay', '128', '2012-05-27', '104745', '104925', '6-4 6-3 2-6 7-5', 5, 'F'),
('2020-RG', 'Roland Garros', 'Clay', '128', '2020-09-27', '104745', '104925', '6-0 6-2 7-5', 5, 'F'),
('2019-AO', 'Australian Open', 'Hard', '128', '2019-01-14', '104925', '104745', '6-3 6-2 6-3', 5, 'F'),
('2012-AO', 'Australian Open', 'Hard', '128', '2012-01-15', '104925', '104745', '5-7 6-4 6-2 6(5)-7 7-5', 5, 'F');

use tennis;


INSERT INTO players(player_id, first_name, last_name, hand, date_of_birth, nationality, height) values
('209414', 'Luca', 'Van Assche', 'R', '2004-05-11', 'FRA', '178'), -- 103
('200116', 'Camilo', 'Ugo Carabelli', 'R', '1999-06-17', 'ARG','185' ), -- 110
('200473', 'Valentin', 'Vacherot', 'U', '1998-11-16', 'FRA', '193'), -- 116
('209279', 'Terence', 'Atmane', 'L', '2002-01-09', 'FRA', '193'), -- 121
('134457', 'Nicolas', 'Moreno De Alboran', 'R', '1997-07-14', 'USA', '185'), -- 130
('208169', 'Titouan', 'Droguet', 'R', '2001-06-15', 'FRA', '191'), -- 133
('208859', 'Francesco', 'Passaro', 'R', '2001-01-07', 'ITA', '180'), -- 134
('209263', 'Matteo', 'Gigante', 'L', '2002-01-04', 'ITA', '180'), -- 138
('208882', 'Roman Andres', 'Burruchaga', 'U', '2002-01-23', 'ARG', '183'), -- 144
('208010', 'Pablo', 'Llamas Ruiz', 'R', '2002-10-13', 'ESP', '188'), -- 146
('200008', 'Alexis', 'Galarneau', 'R', '1999-03-02', 'CAN', '180'), -- 153
('200259', 'Ugo', 'Blanchet', 'U', '1999-01-05', 'FRA', '175'), -- 160
('208278', 'Shintaro', 'Mochizuki', 'R', '2003-06-02', 'JPN', '175'), -- 162
('209113', 'Gabriel', 'Diallo', 'R', '2001-09-24', 'CAN','203' ), -- 166
('106187', 'Denis', 'Yevseyev', 'U', '1993-05-22', 'KAZ','188' ), -- 167
('202320', 'Beibit', 'Zhukayev', 'R', '2000-10-12', 'KAZ','198' ), -- 171
('208233', 'Mattia', 'Bellucci', 'L', '2001-06-01', 'ITA', '175'), -- 173
('208361', 'Gustavo', 'Heide', 'R', '2002-02-28', 'BRA','191' ), -- 174
('207411', 'Jesper', 'De Jong', 'R', '2000-05-31', 'NED', '180'), -- 176
('200188', 'Matteo', 'Martineau', 'R', '1999-01-16', 'FRA', '183'), -- 177
('102093', 'Martin', 'Damm', 'L', '2003-09-30', 'USA','203' ), -- 179
('123828', 'Jan', 'Choinski', 'R', '1996-06-10', 'GBR', '196'), -- 180
('209409', 'Coleman', 'Wong', 'R', '2004-06-06', 'HKG','191'), -- 181
('210262', 'Jaime', 'Faria', 'U', '2003-08-06', 'POR', '188'), -- 183
('106310', 'Alexander', 'Ritschard', 'R', '1994-03-24', 'SUI', '193'), -- 184
('144821', 'Genaro Alberto', 'Olivieri', 'U', '1998-08-04', 'ARG','175'), -- 188
('207352', 'Bu', 'Yunchaokete', 'U', '2002-01-19', 'CHN', '185'), -- 189
('208279', 'Alejandro', 'Moro Canas', 'U', '2000-12-07', 'ESP', '183'), -- 190
('111805', 'Seong Chan', 'Hong', 'R', '1997-06-30', 'KOR','175'), -- 191
('207494', 'Dalibor', 'Svrcina', 'R', '2002-10-02', 'CZE', '178'), -- 192
('208316', 'Valentin', 'Royer', 'U', '2001-05-29', 'FRA', '188'); -- 198




INSERT INTO single_ranking(ranking_date, ranking, player, points) values
('2024-05-27', '103', '209414', '613'),
('2024-05-27', '110', '200116', '580'),
('2024-05-27', '116', '200473', '543'),
('2024-05-27', '121', '209279', '525'),
('2024-05-27', '130', '134457', '497'),
('2024-05-27', '133', '208169', '493'),
('2024-05-27', '134', '208859', '493'),
('2024-05-27', '138', '209263', '489'),
('2024-05-27', '144', '208882', '431'),
('2024-05-27', '146', '208010', '424'),
('2024-05-27', '153', '200008', '399'),
('2024-05-27', '160', '200259', '371'),
('2024-05-27', '162', '208278', '366'),
('2024-05-27', '166', '209113', '360'),
('2024-05-27', '167', '106187', '359'),
('2024-05-27', '171', '202320', '353'),
('2024-05-27', '173', '208233', '349'),
('2024-05-27', '174', '208361', '346'),
('2024-05-27', '176', '207411', '344'),
('2024-05-27', '177', '200188', '344'),
('2024-05-27', '179', '102093', '340'),
('2024-05-27', '180', '123828', '340'),
('2024-05-27', '181', '209409', '340'),
('2024-05-27', '183', '210262', '336'),
('2024-05-27', '184', '106310', '335'),
('2024-05-27', '188', '144821', '327'),
('2024-05-27', '189', '207352', '325'),
('2024-05-27', '190', '208279', '324'),
('2024-05-27', '191', '111805', '320'),
('2024-05-27', '192', '207494', '316'),
('2024-05-27', '198', '208316', '304');



DELIMITER //
-- tìm thông tin người chơi qua quốc tịch: getPlayerByNation 
CREATE PROCEDURE getPlayerByNation(IN nationName VARCHAR(3))
BEGIN
    SELECT *
    FROM players 
    WHERE nationality = nationName;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS getPlayerByHand;
DELIMITER //
-- tìm thông tin người chơi tay thuận: getPlayerByHand 
CREATE PROCEDURE getPlayerByHand(IN thisHand VARCHAR(1))
BEGIN
    SELECT *
    FROM players 
    WHERE hand = thisHand;
END //

DELIMITER ;

CALL getPlayerByHand('R');
CALL getPlayerByNation('FRA');











