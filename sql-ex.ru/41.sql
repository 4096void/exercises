-- when calculating summary values, use COUNT in CASE to determine whether all values is NULL or not
WITH AllPrices AS (
  SELECT Product.maker, PC.model, price
  FROM PC
  JOIN Product
  ON PC.model = Product.model
  UNION ALL
  SELECT Product.maker, Laptop.model, price
  FROM Laptop
  JOIN Product
  ON Laptop.model = Product.model
  UNION ALL
  SELECT Product.maker, Printer.model, price
  FROM Printer
  JOIN Product
  ON Printer.model = Product.model
)

SELECT maker, 
  CASE 
    WHEN COUNT(price) = COUNT(model) THEN MAX(price)
    ELSE NULL
  END AS m_price
FROM AllPrices
GROUP BY maker
