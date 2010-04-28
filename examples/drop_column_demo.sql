BEGIN;

CREATE TABLE drop_column_demo
(a varchar,
b varchar,
c varchar);

ALTER TABLE drop_column_demo
DROP COLUMN IF EXISTS b;

\d drop_column_demo

ALTER TABLE drop_column_demo 
DROP COLUMN IF EXISTS d;
