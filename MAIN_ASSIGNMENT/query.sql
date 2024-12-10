USE tennis;

-- INNER JOIN --
SELECT p.first_name, p.last_name, s.ranking_date, s.ranking
FROM players p
INNER JOIN single_ranking s ON p.player_id = s.player
WHERE s.ranking <= 10;

-- OUTER JOIN --
SELECT p.player_id, p.first_name, p.last_name, s.ranking_date, s.ranking
FROM players p
LEFT OUTER JOIN single_ranking s ON p.player_id = s.player
ORDER BY p.player_id;

-- SUBQUERY IN WHERE --
SELECT first_name, last_name, height
FROM players
WHERE height > (SELECT AVG(height) FROM players);

-- SUBQUERY IN FROM --
SELECT nationality, AVG(avg_height) AS average_height_by_nationality
FROM (
    SELECT nationality, AVG(height) AS avg_height
    FROM players
    GROUP BY nationality
) subquery
GROUP BY nationality;

-- GROUP --
select nationality, COUNT(player_id) AS num_players, AVG(height) AS avg_height
from players
group by nationality
having avg_height > 183;