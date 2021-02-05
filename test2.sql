CREATE TEMPORARY TABLE months (id INT(2) NOT NULL);
INSERT INTO months (id)
VALUES 
  (1),
  (2),
  (3),
  (4),
  (5),
  (6),
  (7),
  (8),
  (9),
  (10),
  (11),
  (12);
SELECT MONTHNAME(concat('2021-', id, '-01')) AS 'Месяц',
  EXTRACT(
    DAY
    FROM LAST_DAY(concat('2021-', id, '-01'))
  ) AS 'Дней в месяце'
FROM months;
DROP TABLE months;