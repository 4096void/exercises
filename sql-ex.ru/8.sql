SELECT maker
FROM product
WHERE type = 'pc'
EXCEPT
SELECT maker
FROM product
WHERE type = 'laptop'
