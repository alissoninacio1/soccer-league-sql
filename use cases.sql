


-- Select the database
USE soccerleague;

-- Insert data into the Stadiums table
INSERT INTO Stadiums (name, capacity, city) VALUES 
('Stadium A', 50000, 'City A'),
('Stadium B', 30000, 'City B');

-- Insert data into the Teams table
INSERT INTO Teams (name, city, stadium_id) VALUES 
('Team A', 'City A', 1),
('Team B', 'City B', 2);

-- Insert data into the Seasons table
INSERT INTO Seasons (year) VALUES 
(2023),
(2024);

-- Insert data into the Leagues table
INSERT INTO Leagues (name, country) VALUES 
('League A', 'Country A'),
('League B', 'Country B');

-- Insert data into the Positions table
INSERT INTO Positions (name) VALUES 
('Goalkeeper'),
('Defender'),
('Midfielder'),
('Forward');

-- Insert data into the Players table
INSERT INTO Players (name, birth_date, team_id, position_id, nationality) VALUES 
('Player A', '1995-06-15', 1, 3, 'USA'),
('Player B', '1992-03-22', 2, 4, 'UK');

-- Insert data into the Coaches table
INSERT INTO Coaches (name, team_id) VALUES 
('Coach A', 1),
('Coach B', 2);

-- Insert data into the Matches table
INSERT INTO Matches (date, home_team_id, away_team_id, stadium_id, season_id) VALUES 
('2024-08-10', 1, 2, 1, 1),
('2024-08-11', 2, 1, 2, 1);

-- Insert data into the Sponsors table
INSERT INTO Sponsors (name, industry) VALUES 
('Sponsor A', 'Finance'),
('Sponsor B', 'Technology');

-- Insert data into the PerformanceStatistics table
INSERT INTO PerformanceStatistics (player_id, match_id, goals, assists, minutes_played) VALUES 
(1, 1, 2, 1, 90),
(2, 2, 1, 0, 85);

-- Insert data into the Injuries table
INSERT INTO Injuries (player_id, description, start_date, end_date) VALUES 
(1, 'Hamstring Injury', '2024-05-01', '2024-05-15'),
(2, 'Knee Injury', '2024-06-01', '2024-06-30');

-- Insert data into the Contracts table
INSERT INTO Contracts (player_id, team_id, start_date, end_date, salary) VALUES 
(1, 1, '2024-01-01', '2024-12-31', 50000),
(2, 2, '2024-01-01', '2024-12-31', 60000);



-- data insertion


SELECT * FROM Stadiums;
SELECT * FROM Teams;
SELECT * FROM Seasons;
SELECT * FROM Leagues;
SELECT * FROM Positions;
SELECT * FROM Players;
SELECT * FROM Coaches;
SELECT * FROM Matches;
SELECT * FROM Sponsors;
SELECT * FROM PerformanceStatistics;
SELECT * FROM Injuries;
SELECT * FROM Contracts;











-- *********************************** CRUD USE CASES FOR ALL 12 TABLES************************************



-- Create Operations

-- Teams
INSERT INTO Teams (name, city, stadium_id)
VALUES ('Team A', 'City A', 1);


-- Players
INSERT INTO Players (name, birth_date, team_id, position_id, nationality)
VALUES ('John Doe', '1995-06-15', 1, 2, 'USA');


-- Coaches
INSERT INTO Coaches (name, team_id)
VALUES ('Coach Smith', 1);


-- Matches
INSERT INTO Matches (date, home_team_id, away_team_id, stadium_id, season_id)
VALUES ('2024-07-01', 1, 2, 1, 1);


-- Seasons
INSERT INTO Seasons (year)
VALUES (2024);



-- Stadiums
INSERT INTO Stadiums (name, capacity, city)
VALUES ('Stadium C', 40000, 'City C');



-- Leagues
INSERT INTO Leagues (name, country)
VALUES ('Premier League', 'England');



-- Sponsors
INSERT INTO Sponsors (name, industry)
VALUES ('Company X', 'Sports Apparel');


-- Positions
INSERT INTO Positions (name)
VALUES ('Forward');


-- Performance Statistics
INSERT INTO PerformanceStatistics (player_id, match_id, goals, assists, minutes_played)
VALUES (1, 1, 2, 1, 90);


-- Injuries
INSERT INTO Injuries (player_id, description, start_date, end_date)
VALUES (1, 'Knee Injury', '2024-06-01', '2024-07-01');


-- Contracts
INSERT INTO Contracts (player_id, team_id, start_date, end_date, salary)
VALUES (1, 1, '2024-01-01', '2025-01-01', 100000);



-- Read Operations

-- Teams
SELECT * FROM Teams;

-- Players
SELECT * FROM Players;


-- Coaches
SELECT * FROM Coaches;

-- Matches
SELECT * FROM Matches;

-- Seasons
SELECT * FROM Seasons;

-- Stadiums
SELECT * FROM Stadiums;

-- Leagues
SELECT * FROM Leagues;

-- Sponsors
SELECT * FROM Sponsors;

-- Positions
SELECT * FROM Positions;

-- Performance Statistics
SELECT * FROM PerformanceStatistics;

-- Injuries
SELECT * FROM Injuries;

-- Contracts
SELECT * FROM Contracts;



-- Update Operations

-- Players
UPDATE Players SET nationality = 'Canada' WHERE player_id = 1;

-- Injuries
UPDATE Injuries SET description = 'Recovered from Knee Injury', end_date = '2024-06-15'
WHERE player_id = 1 AND description = 'Knee Injury';


-- Delete Operations

-- Players
DELETE FROM Players WHERE player_id = 3;











