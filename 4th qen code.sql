SELECT 
    position,
    COUNT(*) AS num_teams,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM user_teams), 2) AS percentage_teams
FROM (
    SELECT 
        team_id,
        CASE
            WHEN player_position1 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position2 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position3 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position4 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position5 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position6 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position7 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position8 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position9 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position10 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            WHEN player_position11 IN ('GK', 'DEF', 'MID', 'ST') THEN 'YES'
            ELSE 'NO'
        END AS position
    FROM 
        user_teams
) AS positions_with_captains
GROUP BY 
    position
ORDER BY 
    position;

