
-- ------------------ QUALITY ASSURANCE TEST SCRIPT ---------------------

-- Select the database
USE soccerleague;

-- Teams Table
-- INSERT
INSERT INTO Teams (name, city, stadium_id) VALUES ('Team A', 'City A', 1);

-- SELECT
SELECT * FROM Teams;

-- UPDATE
UPDATE Teams SET city = 'New City' WHERE team_id = 1;

-- DELETE
DELETE FROM Teams WHERE team_id = 3;


-- Players Table
-- INSERT
INSERT INTO Players (name, birth_date, team_id, position_id, nationality) 
VALUES ('John Doe', '1995-06-15', 1, 2, 'USA');

-- SELECT
SELECT * FROM Players;

-- UPDATE
UPDATE Players SET nationality = 'Canadian' WHERE player_id = 3;

-- DELETE
DELETE FROM Players WHERE player_id = 1;


-- Coaches Table
-- INSERT
INSERT INTO Coaches (name, team_id) VALUES ('Coach Smith', 1);

-- SELECT
SELECT * FROM Coaches;

-- UPDATE
UPDATE Coaches SET name = 'Coach Johnson' WHERE coach_id = 1;

-- DELETE
DELETE FROM Coaches WHERE coach_id = 3;


-- Matches Table
-- INSERT
INSERT INTO Matches (date, home_team_id, away_team_id, stadium_id, season_id) 
VALUES ('2024-07-01', 1, 2, 1, 1);

-- SELECT
SELECT * FROM Matches;

-- UPDATE
UPDATE Matches SET stadium_id = 2 WHERE match_id = 1;

-- DELETE
DELETE FROM Matches WHERE match_id = 3;


-- Seasons Table
-- INSERT
INSERT INTO Seasons (year) VALUES (2024);

-- SELECT
SELECT * FROM Seasons;

-- UPDATE
UPDATE Seasons SET year = 2025 WHERE season_id = 1;

-- DELETE
DELETE FROM Seasons WHERE season_id = 3;


-- Stadiums Table
-- INSERT
INSERT INTO Stadiums (name, capacity, city) VALUES ('Stadium A', 50000, 'City A');

-- SELECT
SELECT * FROM Stadiums;

-- UPDATE
UPDATE Stadiums SET capacity = 60000 WHERE stadium_id = 1;

-- DELETE
DELETE FROM Stadiums WHERE stadium_id = 3;


-- Leagues Table
-- INSERT
INSERT INTO Leagues (name, country) VALUES ('League A', 'Country A');

-- SELECT
SELECT * FROM Leagues;

-- UPDATE
UPDATE Leagues SET country = 'Country B' WHERE league_id = 1;

-- DELETE
DELETE FROM Leagues WHERE league_id = 3;


-- Sponsors Table
-- INSERT
INSERT INTO Sponsors (name, industry) VALUES ('Sponsor A', 'Industry A');

-- SELECT
SELECT * FROM Sponsors;

-- UPDATE
UPDATE Sponsors SET industry = 'Industry B' WHERE sponsor_id = 1;

-- DELETE
DELETE FROM Sponsors WHERE sponsor_id = 3;


-- Positions Table
-- INSERT
INSERT INTO Positions (name) VALUES ('Forward');

-- SELECT
SELECT * FROM Positions;

-- UPDATE
UPDATE Positions SET name = 'Striker' WHERE position_id = 1;

-- DELETE
DELETE FROM Positions WHERE position_id = 3;


-- Performance Statistics Table
-- INSERT
INSERT INTO PerformanceStatistics (player_id, match_id, goals, assists, minutes_played)
VALUES (1, 1, 1, 0, 90);

-- SELECT
SELECT * FROM PerformanceStatistics;

-- UPDATE
UPDATE PerformanceStatistics SET goals = 2 WHERE stat_id = 1;

-- DELETE
DELETE FROM PerformanceStatistics WHERE stat_id = 3;


-- Injuries Table
-- INSERT
INSERT INTO Injuries (player_id, description, start_date, end_date)
VALUES (1, 'Knee Injury', '2024-06-01', '2024-06-15');

-- SELECT
SELECT * FROM Injuries;

-- UPDATE
UPDATE Injuries SET description = 'Recovered' WHERE injury_id = 1;

-- DELETE
DELETE FROM Injuries WHERE injury_id = 3;


-- Contracts Table
-- INSERT
INSERT INTO Contracts (player_id, team_id, start_date, end_date, salary)
VALUES (1, 1, '2024-01-01', '2025-01-01', 50000);

-- SELECT
SELECT * FROM Contracts;

-- UPDATE
UPDATE Contracts SET salary = 55000 WHERE contract_id = 3;

-- DELETE
DELETE FROM Contracts WHERE contract_id = 3;