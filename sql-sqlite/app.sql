BEGIN;

CREATE TEMP TABLE _Variables(
    ST INT,
    ET INT
);

SELECT '==========================';
SELECT 'sql - sqlite';
INSERT INTO _Variables (ST) VALUES (CAST((julianday('now') - 2440587.5)*86400000 AS INTEGER));
WITH RECURSIVE
    for(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM for WHERE i < 100000000)
--    for(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM for WHERE i < 100)

SELECT sum(i) FROM for;

UPDATE _Variables SET ET = CAST((julianday('now') - 2440587.5)*86400000 AS INTEGER);

SELECT (ET - ST) / 1000.0 FROM _Variables;

END;