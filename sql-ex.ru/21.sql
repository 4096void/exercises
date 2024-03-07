SELECT product.maker, MAX(pc.price) AS Max_Price
FROM pc
JOIN product
ON pc.model = product.model
GROUP BY product.maker
