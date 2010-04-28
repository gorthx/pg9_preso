EXPLAIN 
SELECT * FROM user_history ORDER BY "timestamp";

EXPLAIN (FORMAT XML)
SELECT * FROM user_history ORDER BY "timestamp";

EXPLAIN (FORMAT YAML)
SELECT * FROM user_history ORDER BY "timestamp";
