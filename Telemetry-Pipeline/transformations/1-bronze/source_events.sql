
CREATE OR REFRESH STREAMING TABLE bronze_telemetry_hr (
    timestamp TIMESTAMP,
    bpm INT,
    -- add a constraint to have bpm > 0
)
COMMENT "Raw Cardiac Telemetry traffic data streamed from JSON files"
AS
SELECT *
FROM STREAM read_files(
    "/Volumes/main_hec_nov_2025/telemetry/raw/events/hr/samples/",
    format => "json",
    schema => "<update schema here like follows : columnA_name TYPEA, columnB_name TYPEB",
    maxFilesPerTrigger => 1
);