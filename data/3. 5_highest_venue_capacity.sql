# 5 highest venue capacity

SELECT
  venue_name,
  venue_capacity,
  venue_city,
  venue_state
FROM
  `bigquery-public-data.ncaa_basketball.mbb_pbp_sr`
GROUP BY
  1,2,3,4
ORDER BY
  2
  DESC
LIMIT
  5
