
SELECT 
    first_name,
    last_name,
    AVG(points) as avg_points
FROM player_statistics
GROUP BY player_id
ORDER BY avg_points DESC
LIMIT 10;


SELECT 
    first_name,
    last_name,
    AVG(assists) as avg_assists
FROM player_statistics
GROUP BY player_id
ORDER BY avg_assists DESC
LIMIT 10;


SELECT 
    first_name,
    last_name,
    AVG(points + assists + rebounds_total) as efficiency
FROM player_statistics
GROUP BY player_id
ORDER BY efficiency DESC
LIMIT 10;


SELECT 
    starting_position,
    AVG(points) as avg_points
FROM player_statistics
GROUP BY starting_position;

SELECT 
    is_home,
    AVG(points) as avg_points
FROM player_statistics
GROUP BY is_home;

SELECT 
    turnovers,
    AVG(points) as avg_points
FROM player_statistics
GROUP BY turnovers
ORDER BY turnovers;


SELECT 
    p.team_name,
    AVG(p.points) as avg_player_points,
    AVG(t.team_score) as avg_team_score
FROM player_statistics p
JOIN team_statistics t 
    ON p.game_id = t.game_id 
    AND p.team_id = t.team_id
GROUP BY p.team_name
ORDER BY avg_team_score DESC;

