-- Made by Doan Quang Huy: 24/11/2024

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