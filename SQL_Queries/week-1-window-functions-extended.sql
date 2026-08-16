-- Query 4: DENSE_RANK (no gaps in ranking)
SELECT 
    Name, 
    Gender,
    Total,
    DENSE_RANK() OVER (PARTITION BY Gender ORDER BY Total DESC) as Dense_Rank
FROM baby_names;

-- Query 5: LAG (compare to previous row)
SELECT 
    Name, 
    Total,
    LAG(Total) OVER (ORDER BY Total DESC) as Previous_Total,
    (Total - LAG(Total) OVER (ORDER BY Total DESC)) as Drop_from_Previous
FROM baby_names;

-- Query 6: Running Total (cumulative sum)
SELECT 
    Name, 
    Total,
    SUM(Total) OVER (ORDER BY Total DESC) as Cumulative_Total,
    ROUND(100.0 * SUM(Total) OVER (ORDER BY Total DESC) / 
          SUM(Total) OVER (), 2) as Percent_of_Total
FROM baby_names;
