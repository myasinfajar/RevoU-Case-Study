# Types and total of Basketball play events occur

SELECT
  event_type, # take **event_type** values
  COUNT(*) # count all the values
FROM
  `bigquery-public-data.ncaa_basketball.mbb_pbp_sr`
GROUP BY
  1 # means event_type
ORDER BY
  2 DESC # means count(*) ordered descending
