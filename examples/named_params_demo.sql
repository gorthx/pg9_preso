DROP FUNCTION bit_rate (bits_in int, secs int);
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

DROP FUNCTION bit_rate (int, int);
CREATE OR REPLACE FUNCTION bit_rate (bits_in int, secs int)
RETURNS int
AS $$
SELECT ($1/$2);
$$
LANGUAGE SQL;

SELECT bit_rate(3456789, 300);
SELECT bit_rate(bits_in := 3456789, secs := 300);
SELECT bit_rate(secs := 300, bits_in := 3456789);
