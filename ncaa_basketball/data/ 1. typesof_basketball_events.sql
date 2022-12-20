# Types and total of Basketball play events occur

SELECT
  event_type,
  COUNT(*) 
FROM
  `bigquery-public-data.ncaa_basketball.mbb_pbp_sr`
GROUP BY
  1 
ORDER BY
  2 DESC 

'The highest total_events is REBOUND with 790490 events in it.'
