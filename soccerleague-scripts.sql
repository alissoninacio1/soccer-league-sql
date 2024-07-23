CREATE DATABASE SoccerLeague;
USE SoccerLeague;





CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    stadium_id INT,
    FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id)
);





CREATE TABLE Players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    team_id INT,
    position_id INT,
    nationality VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (position_id) REFERENCES Positions(position_id)
);





CREATE TABLE Coaches (
    coach_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);




CREATE TABLE Matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    home_team_id INT,
    away_team_id INT,
    stadium_id INT,
    season_id INT,
    FOREIGN KEY (home_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);





CREATE TABLE Seasons (
    season_id INT AUTO_INCREMENT PRIMARY KEY,
    year YEAR NOT NULL
);







CREATE TABLE Stadiums (
    stadium_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    city VARCHAR(100) NOT NULL
);






CREATE TABLE Leagues (
    league_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);




CREATE TABLE Sponsors (
    sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    industry VARCHAR(100) NOT NULL
);





CREATE TABLE Positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);




CREATE TABLE PerformanceStatistics (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    match_id INT,
    goals INT DEFAULT 0,
    assists INT DEFAULT 0,
    minutes_played INT DEFAULT 0,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);





CREATE TABLE Injuries (
    injury_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    description VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);





CREATE TABLE Contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    team_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    salary DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);








