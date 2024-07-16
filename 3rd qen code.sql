WITH team_counts AS (
    SELECT 
        team_id,
        COUNT(*) AS num_teams
    FROM 
        user_teams
    GROUP BY 
        team_id
)
SELECT 
    num_teams,
    COUNT(team_id) AS num_users,
    ROUND(COUNT(team_id) * 100.0 / (SELECT COUNT(DISTINCT team_id) FROM team_counts), 2) AS percentage_users
FROM 
    team_counts
WHERE 
    num_teams <= 20  -- Adjust the upper limit as needed
GROUP BY 
    num_teams
ORDER BY 
    num_teams;
