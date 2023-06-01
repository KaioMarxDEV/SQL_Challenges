-- simple way
SELECT
  name AS Customers
FROM
  Customers
WHERE
  id NOT IN (
    SELECT
      customerId
    FROM
      Orders
  ) -- elegant way below --
SELECT
  name AS Customers
FROM
  Customers
WHERE
  id NOT IN (
    SELECT
      c.id
    FROM
      Customers AS c
      INNER JOIN Orders AS o ON c.id = o.customerId
  )