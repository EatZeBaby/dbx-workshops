-- This file defines a sample transformation.
-- Edit the sample below or add new transformations
-- using "+ Add" in the file browser.


CREATE OR REFRESH MATERIALIZED VIEW gold_telemetry_agg_hr AS
SELECT *
    -- compute daily avg, min, max of bpms
     
FROM
    silver_telemetry_hr;


CREATE OR REFRESH MATERIALIZED VIEW silver_zones as 
/* create a materialized view that categorizes heart rate data from bronze_telemetry_hr into four zones 
(Resting, Normal/Light, Cardio, Peak) using a CASE statement, and then calculates the total count and the percentage of records falling into each zone, as shown in this zoning example:

BPM Rangeheart_rate_zone
bpm < 60 | Resting 
60 <= bpm <= 99 | Normal/Light 
100 <= bpm <= 140 | Cardio 
bpm > 140 Peak  */