WITH category_types AS
  (SELECT DISTINCT cloud_region, Avg(google_cfe) AS cfe_average
  FROM bigquery-public-data.google_cfe.datacenter_cfe
  GROUP BY cloud_region
  ORDER BY cfe_average DESC)

SELECT *
FROM category_types