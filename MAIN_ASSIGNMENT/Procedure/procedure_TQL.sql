-- made by Ta Quang Linh

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







