WITH mm AS (
  SELECT product.maker
  FROM product
  WHERE product.type = 'PC'
  INTERSECT
  SELECT product.maker
  FROM product
  WHERE product.type = 'Printer'
)

SELECT product.maker, AVG(hd) AS Avg_hd
FROM pc
JOIN product
ON product.model = pc.model
JOIN mm
ON mm.maker = product.maker
GROUP BY product.maker
