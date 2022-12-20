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

'3pt % / accuracy from home teams are on Frame 1, and 3pt % / accuracy from opponent teams are on Frame 2. The highest total 3pt was made from both home and opponent team from a single game is 40.'
