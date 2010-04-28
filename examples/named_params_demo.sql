CREATE OR REPLACE FUNCTION bit_rate (int, int)
RETURNS int
AS $$
SELECT ($1/$2);
$$
LANGUAGE SQL;
--bits in, time in seconds
SELECT bit_rate(3456789, 300);
--time in seconds, bit in...OOPS.
SELECT bit_rate(300, 3456789);

CREATE OR REPLACE FUNCTION bit_rate (bits_in int, secs int)
RETURNS int
AS $$
SELECT ($1/$2);
$$
LANGUAGE SQL;

SELECT bit_rate(3456789, 300);
SELECT bit_rate(3456789 AS bits_in, 300 AS secs);
SELECT bit_rate(300 AS secs, 3456789 AS bits_in);
