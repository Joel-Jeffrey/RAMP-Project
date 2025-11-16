SELECT AVG(daily_amt)
FROM (SELECT DATE(transaction_time) as date, SUM(transaction_amount) as daily_amt
      from transactions
      WHERE DATE(transaction_time) BETWEEN '2021-01-29' AND '2021-01-31'
      GROUP BY DATE(transaction_time)
      ) as final_table
      
