-- Tao  bang cho trigger 1 ( bang ranking_history)
CREATE TABLE  IF NOT EXISTS ranking_history (
    history_id INT AUTO_INCREMENT, 
    ranking_date DATE NOT NULL,    
    player INT NOT NULL,          
    old_ranking INT NOT NULL,
    new_ranking INT NOT NULL,      
    points INT NOT NULL,           
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --  khong thay doi thoi gian moi 
    PRIMARY KEY (history_id),
    FOREIGN KEY (player) REFERENCES players(player_id) -- Khóa ngoại tham chiếu đến bảng players
);
-- Ghi lại thông tin khi thêm người chơi mới trigger2
CREATE TABLE IF NOT EXISTS player_audit (
    audit_id INT AUTO_INCREMENT,
    player_id INT NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    action VARCHAR(50),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (audit_id)
);