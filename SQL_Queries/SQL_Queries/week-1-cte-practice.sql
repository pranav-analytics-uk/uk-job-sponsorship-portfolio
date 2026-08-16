-- Query 1: Simple CTE
WITH top_names AS (
    SELECT Name, Total, ROW_NUMBER() OVER (ORDER BY Total DESC) as Rank
    FROM baby_names
    WHERE Total > 10000
)
SELECT * FROM top_names;

-- Query 2: CTE with Aggregation
WITH gender_stats AS (
    SELECT 
        Gender,
        COUNT(*) as count,
        AVG(Total) as avg_total,
        MAX(Total) as max_total,
        MIN(Total) as min_total
    FROM baby_names
    GROUP BY Gender
)
SELECT * FROM gender_stats;

-- Query 3: Multiple CTEs
WITH male_names AS (
    SELECT Name, Total FROM baby_names WHERE Gender = 'M'
),
female_names AS (
    SELECT Name, Total FROM baby_names WHERE Gender = 'F'
)
SELECT 'Male' as Gender, COUNT(*) as Total_Names, AVG(Total) as Avg_Popularity
FROM male_names
UNION ALL
SELECT 'Female', COUNT(*), AVG(Total)
FROM female_names;

-- Query 4: CTE with Calculations
WITH name_percentages AS (
    SELECT 
        Name,
        Total,
        ROUND(100.0 * Total / SUM(Total) OVER (), 2) as Percent_of_Total
    FROM baby_names
)
SELECT * FROM name_percentages
WHERE Percent_of_Total > 5
ORDER BY Percent_of_Total DESC;

-- Query 5: CTE with Window Functions
WITH ranked_names AS (
    SELECT 
        Name,
        Gender,
        Total,
        RANK() OVER (PARTITION BY Gender ORDER BY Total DESC) as Gender_Rank,
        LAG(Total) OVER (PARTITION BY Gender ORDER BY Total DESC) as Previous_Total
    FROM baby_names
)
SELECT * FROM ranked_names
WHERE Gender_Rank <= 3;
