SELECT 
    AVG(team_count) AS avg_teams_per_user
FROM (
    SELECT 
        COUNT(*) AS team_count
    FROM 
        user_teams
    GROUP BY 
        team_id  -- Assuming there's a user_id column in user_teams that identifies the creator of the team
) AS team_counts;
