BEGIN;

-- DROP TABLE salary;
CREATE TABLE salary (name TEXT PRIMARY KEY, amount NUMERIC(10,2));

COPY salary FROM STDIN; 
Tom Lane	5000.00
Bruce Momjian	5001.00
Magnus Hagander	7000.00
Larry Ellison	1000000.00
\.

-- DROP TABLE revenue;
CREATE TABLE revenue (cash NUMERIC(10,2));

COPY revenue FROM STDIN;
10000
\.

CREATE OR REPLACE FUNCTION raises()
RETURNS TRIGGER
LANGUAGE plpgsql
VOLATILE
AS $body$
BEGIN

    UPDATE salary SET amount = amount * 1.05;
		RETURN NEW;

END;
$body$;

CREATE TRIGGER give_raise AFTER UPDATE on revenue
	WHEN (NOW() > '2010-04-22')
	EXECUTE procedure raises();

-- ROLLBACK;
COMMIT;
