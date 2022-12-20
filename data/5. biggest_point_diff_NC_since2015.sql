# Biggest point difference in National Championship since 2015

SELECT
  scheduled_date,
  name home_team,
  alias home_team_alias,
  points_game home_team_points,
  opp_name,
  opp_alias,
  opp_points_game,
  ABS(points_game - opp_points_game) points_diff
FROM
  `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr`
WHERE
  season > 2015
AND
  tournament_type = 'National Championship'
ORDER BY
  points_diff
  DESC
LIMIT
  5
  
'The biggest point difference was from the game between Wildcats (VILL) vs Wolverines (MICH) with 17 points difference was made.'
