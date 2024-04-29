CREATE TABLE nhl_teams (
    id CHAR(36) PRIMARY KEY,
    name VARCHAR(25),
    area VARCHAR(25),
    alias VARCHAR(10)
);

CREATE TABLE nhl_players (
    id CHAR(36) NOT NULL PRIMARY KEY,
    team VARCHAR(15),
    status VARCHAR(5),
    full_name VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    height VARCHAR(10),
    weight INT,
    handedness CHAR(1),
    position VARCHAR(1),
    primary_position VARCHAR(1),
    jersey_number INT,
    experience INT,
    birth_place VARCHAR(50),
    birthdate DATE
);

CREATE TABLE nhl_team_stats (
    team_name VARCHAR(255) NOT NULL PRIMARY KEY,
    games_played INT,
    goals INT,
    assists INT,
    points INT,
    penalties INT,
    penalty_minutes INT,
    shots INT
    hits INT,
    blocked_shots INT,
    powerplays INT,
    powerplay_shots INT,
    powerplay_goals INT,
    powerplay_percentage FLOAT,
    shots_against INT,
    goals_against INT,
    saves INT,
    saves_percentage FLOAT
);

CREATE TABLE nhl_goaliestats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    games_played INT,
    shots_against INT,
    goals_against INT,
    saves INT,
    shutouts INT,
    saves_pct DECIMAL(4,3),
    avg_goals_against DECIMAL(3,2)
);

CREATE TABLE nhl_playerstats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    games_played INT,
    goals INT,
    assists INT,
    points INT,
    penalties INT,
    penalty_minutes INT,
    shots INT,
    blocked_att INT,
    missed_shots INT,
    hits INT,
    blocked_shots INT,
    powerplay_shots INT,
    powerplay_goals INT,
    powerplay_assists INT
);
