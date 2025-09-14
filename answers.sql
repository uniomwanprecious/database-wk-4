/* question one answer */
SELECT
  paymentDate,
  SUM(amount) AS total_amount
FROM
  payments
GROUP BY
  paymentDate
ORDER BY
  paymentDate DESC
LIMIT 5;

/* question 2 answer */
SELECT
  customerName,
  country,
  AVG(creditLimit) AS average_credit_limit
FROM
  customers
GROUP BY
  customerName,
  country;

/* question 3 answer */
SELECT
  productCode,
  quantityOrdered,
  SUM(quantityOrdered * priceEach) AS total_price
FROM
  orderdetails
GROUP BY
  productCode,
  quantityOrdered;

  /* question 4 answer */
  SELECT
  checkNumber,
  MAX(amount) AS highest_payment_amount
FROM
  payments
GROUP BY
  checkNumber;