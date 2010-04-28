BEGIN;

-- DROP TABLE breakfast;
CREATE TABLE breakfast (myorder TEXT);

CREATE OR REPLACE FUNCTION do_my_bidding() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS $body$
BEGIN
    NOTIFY after_insert, 'GET ME SOME COFFEE.';
    RETURN NEW;
END;
$body$;

CREATE TRIGGER my_bidding AFTER INSERT on breakfast
    EXECUTE PROCEDURE do_my_bidding();

ROLLBACK;
