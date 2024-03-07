WITH model_price AS (
  SELECT model, price FROM pc
  UNION ALL SELECT model, price FROM laptop
  UNION ALL SELECT model, price FROM printer
)

SELECT DISTINCT model
FROM model_price
WHERE price = (SELECT MAX(price) FROM model_price)
