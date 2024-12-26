-- Made by Nguyen Duc Huy
USE tennis;

UPDATE single_ranking
SET ranking = 25, points = 1000
WHERE player = 210097;

UPDATE single_ranking
SET ranking = 20, points = 1000
WHERE player = 210097;
SELECT * FROM ranking_history;
