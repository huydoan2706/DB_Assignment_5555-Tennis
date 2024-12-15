DROP TRIGGER IF EXISTS after_player_insert;
DELIMITER $$
CREATE TRIGGER after_player_insert
AFTER INSERT ON players
FOR EACH ROW
BEGIN
    INSERT INTO player_audit (player_id, first_name, last_name, action, action_time)
    VALUES (NEW.player_id, NEW.first_name, NEW.last_name, 'INSERT', CURRENT_TIMESTAMP);
END $$

DELIMITER ;

