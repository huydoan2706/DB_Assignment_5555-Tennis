-- Made by Nguyen Duc Huy

USE tennis;

DROP TRIGGER IF EXISTS after_ranking_update;
DELIMITER $$
CREATE TRIGGER after_ranking_update
AFTER UPDATE ON single_ranking
FOR EACH ROW
BEGIN
    -- Chỉ ghi nhận nếu giá trị thực sự thay đổi
    IF OLD.ranking != NEW.ranking OR OLD.points != NEW.points THEN
        INSERT INTO ranking_history (ranking_date, player, old_ranking, new_ranking, points)
        VALUES (NEW.ranking_date, NEW.player, OLD.ranking, NEW.ranking, NEW.points);
    END IF;
END $$

DELIMITER ;
