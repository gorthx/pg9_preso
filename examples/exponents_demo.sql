BEGIN;
CREATE TABLE exponents_demo
(example numeric);

INSERT INTO exponents_demo
VALUES
  ('10000000'),
  ('2.54'),
  ('3.1415'),
  ('666'),
  ('6.02e+23'),
  ('5.29e-11'),
  ('8675309')
;

SELECT example
FROM exponents_demo;

SELECT to_char(example, '9.9EEEE') AS lookyhere
FROM exponents_demo ;
