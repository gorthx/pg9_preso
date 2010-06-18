SELECT count(*) FROM nut_data;

-- Get table size:
SELECT pg_relation_size('nut_data') AS history_table_size;

-- Let's pretty print that:
SELECT pg_size_pretty(pg_relation_size('nut_data')) AS history_table_size; 

-- Get table + indexes + toast tables:
SELECT pg_size_pretty(pg_total_relation_size('nut_data')) AS total_history_table_size;

-- Get just the index size:
-- First, find the indexes:
\d nut_data;

-- OR...
SELECT indexname from pg_indexes where tablename = 'nut_data';
-- Then get their sizes individually:
SELECT
pg_size_pretty(pg_relation_size('nut_data_pkey')) AS pkey_size,
pg_size_pretty(pg_relation_size('nut_data_deriv_cd_idx')) AS deriv_cd_idx_size,
pg_size_pretty(pg_relation_size('nut_data_nutr_no_idx')) AS nutr_no_idx_size,
pg_size_pretty(pg_relation_size('nut_data_src_cd_idx')) AS src_cd_idx_size
;
-- And then add them up manually
