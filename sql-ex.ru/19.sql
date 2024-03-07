SELECT product.maker, SUM(screen)/COUNT(screen)
FROM laptop
JOIN product
ON product.model = laptop.model
GROUP BY product.maker
