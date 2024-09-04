CREATE TABLE IF NOT EXISTS news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    insert_time DATETIME NOT NULL DEFAULT current_timestamp,
    update_time DATETIME NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
    );

CREATE TABLE IF NOT EXISTS notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    insert_time DATETIME NOT NULL DEFAULT current_timestamp,
    update_time DATETIME NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
);
insert into news(title,content) values('BO111111','wangbolaoshidiyi')
SELECT * FROM news