# 5 highest total 3pt attempts and accuracy

SELECT
  scheduled_date,
  name,
  market,
  alias,
  three_points_att,
  three_points_made,
  three_points_pct,
  opp_name,
  opp_market,
  opp_alias,
  opp_three_points_att,
  opp_three_points_made,
  opp_three_points_pct,
  (three_points_made + opp_three_points_made) total_threes
FROM
  `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr`
ORDER BY 
  total_threes
  DESC
LIMIT
  5
