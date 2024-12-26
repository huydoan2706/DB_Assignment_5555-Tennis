-- Made by Nguyen Duc Huy

USE tennis;

INSERT INTO players (player_id, first_name, last_name, hand, date_of_birth, nationality, height)
VALUES (555555, 'Duc Huy', 'Nguyen', 'R', '2005-08-12', 'VIE', 165);

INSERT INTO players (player_id, first_name, last_name, hand, date_of_birth, nationality, height)
VALUES (666666, 'Quang Linh', 'Ta', 'L', '2005-02-20', 'VIE', 167);

SELECT * FROM player_audit;
