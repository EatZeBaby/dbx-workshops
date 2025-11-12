
CREATE OR REFRESH MATERIALIZED VIEW silver_telemetry_hr
(
  CONSTRAINT bpm_not_null EXPECT (bpm IS NOT NULL)
)
AS
SELECT * 
    -- convert the timestamp to a Europe/Paris Timezone timestamp
FROM bronze_telemetry_hr;