-- Get table size (including TOAST):
SELECT pg_size_pretty(pg_table_size('nut_data')) AS history_table_size; 

-- Get just the indexes
SELECT pg_size_pretty(pg_indexes_size('nut_data')) AS indexes_size;
