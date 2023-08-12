CREATE TABLE PlayerRegistration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    age INT NOT NULL,
    skill ENUM('batsman', 'bowler', 'allrounder') NOT NULL,
    team VARCHAR(50),
    email VARCHAR(255) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    photo VARCHAR(255),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (email, username)
);

CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    height DECIMAL(5, 2),
    weight DECIMAL(5, 2),
    skill VARCHAR(50),
    email VARCHAR(255),
    team VARCHAR(100),
    photo VARCHAR(255)
);

CREATE TABLE team (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(255) NOT NULL,
    team_captain VARCHAR(255) NOT NULL,
    coach_name VARCHAR(255) NOT NULL
);

CREATE TABLE match_schedule (
    match_id INT PRIMARY KEY AUTO_INCREMENT,
    match_date DATE,
    opposition_team VARCHAR(255),
    venue VARCHAR(255),
    team VARCHAR(255)
);
