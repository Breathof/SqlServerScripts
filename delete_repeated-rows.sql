-- Delete all repeated rows in a table
WITH CTE AS(
   SELECT @col1, @col2,
       RN = ROW_NUMBER()OVER(PARTITION BY col1, col2 ORDER BY col1)
   FROM @TableName
)
DELETE FROM CTE WHERE RN > 1