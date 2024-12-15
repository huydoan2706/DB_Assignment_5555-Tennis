# Made by Doan Quang Huy: 07/12/2024
USE tennis;

START transaction;
INSERT INTO players(player_id, first_name, last_name, hand, date_of_birth, nationality, height) values 
('999999', 'Huy', 'Doan', 'L', '2005-06-27', 'VIE', '172');
COMMIT;

SELECT * from players WHERE nationality in ('VIE');
