CREATE TABLE draft_players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nation VARCHAR(25),
    full_name VARCHAR(25),
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    position VARCHAR(10),
    team VARCHAR(50),
    league VARCHAR(50),
    birth DATE,
    height VARCHAR(10),
    weight INT,
    shoots CHAR(1)
);

CREATE TABLE countries (
	id INT AUTO_INCREMENT PRIMARY KEY,
    image VARCHAR(255),
    name VARCHAR(55)
);

CREATE TABLE  draft_playerstats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50),
    games_played INT,
    goals INT,
    assists INT,
    points INT,
    penalty_minutes INT
);

-- Create a new table 'draft_goaliestats' in MySQL from existing data
CREATE TABLE draft_goaliestats AS
SELECT
    p.full_name,
    s.gameplay AS games_played,
    s.goal AS GAA,  -- Interpreting 'goals' as GoalAverageAginst (GAA)
    s.assists AS SVS  -- Interpreting 'assts' as Saves (SVS)
FROM
    draft_players p
JOIN
    draft_playerstats s ON p.full_name = s.full_name
WHERE
    p.position = 'G';

   DELETE s
FROM draft_playerstats s
JOIN draft_players p ON s.full_name = p.full_name
WHERE p.position = 'G';

