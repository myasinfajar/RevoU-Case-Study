# Highest Game Score since 2010

SELECT
  scheduled_date,
  name home_team,
  alias home_team_alias,
  points_game home_team_points,
  opp_name,
  opp_alias,
  opp_points_game,
  (points_game + opp_points_game) total_points
FROM
  `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr`
WHERE
  season > 2010
ORDER BY
  total_points
  DESC
LIMIT
  5

'The highest game score was from the game between Terries (WOF) vs Bulldogs (SAM) with total 258 points was made in that game.'
