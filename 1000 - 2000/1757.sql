-- beats 90.19% of all sql submitted to LeetCode
SELECT
  product_id
FROM
  Products
WHERE
  low_fats IN ('Y')
  AND recyclable IN ('Y');