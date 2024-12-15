DELIMITER $$

CREATE TRIGGER after_ranking_update
AFTER UPDATE ON single_ranking
FOR EACH ROW
BEGIN
    IF OLD.ranking != NEW.ranking THEN
        INSERT INTO ranking_history (ranking_date, player, old_ranking, new_ranking, points)
        VALUES (NEW.ranking_date, NEW.player, OLD.ranking, NEW.ranking, NEW.points);
    END IF;
END $$

DELIMITER ;
