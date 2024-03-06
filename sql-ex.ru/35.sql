-- double negative
-- %[0-9]%, meaning digit(s) exist anywhere in between
-- %[^0-9]%, meaning digit(s) exist nowhere in between

SELECT model, type
FROM product
WHERE model NOT LIKE '%[^0-9]%'
OR model NOT LIKE '%[^a-z]%'