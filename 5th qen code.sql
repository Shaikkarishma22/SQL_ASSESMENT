
SELECT 
    team_id,
    COUNT(*) AS num_teams,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM user_teams WHERE team_id IN ('ALK', 'PSV')), 2) AS percentage_teams
FROM 
    user_teams
WHERE 
    team_id IN ('ALK', 'PSV')
    AND (
        player_position1 = 'GK' OR
        player_position2 = 'GK' OR
        player_position3 = 'GK' OR
        player_position4 = 'GK' OR
        player_position5 = 'GK' OR
        player_position6 = 'GK' OR
        player_position7 = 'GK' OR
        player_position8 = 'GK' OR
        player_position9 = 'GK' OR
        player_position10 = 'GK' OR
        player_position11 = 'GK'
    )
GROUP BY 
    team_id
ORDER BY 
    team_id;
