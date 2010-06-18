\c usda;

SELECT d.long_desc, g.fddrp_desc
FROM food_des d LEFT OUTER JOIN fd_group g
ON d.fdgrp_cd = g.fdgrp_cd;

EXPLAIN 
SELECT d.long_desc, g.fddrp_desc
FROM food_des d LEFT OUTER JOIN fd_group g
ON d.fdgrp_cd = g.fdgrp_cd;

EXPLAIN (FORMAT XML)
SELECT d.long_desc, g.fddrp_desc
FROM food_des d LEFT OUTER JOIN fd_group g
ON d.fdgrp_cd = g.fdgrp_cd;

EXPLAIN (FORMAT YAML)
SELECT d.long_desc, g.fddrp_desc
FROM food_des d LEFT OUTER JOIN fd_group g
ON d.fdgrp_cd = g.fdgrp_cd;
