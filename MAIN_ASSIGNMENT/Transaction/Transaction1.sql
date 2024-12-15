# Made by Doan Quang Huy: 07/12/2024

USE tennis;

START TRANSACTION; # initialize
# Set the hand of right-handed players whose first name is Carlos as left hand
UPDATE players SET hand = 'L' where first_name = 'Carlos' and hand = 'R';
ROLLBACK; # cancel all the changes

SELECT * from players WHERE first_name = 'Carlos';
