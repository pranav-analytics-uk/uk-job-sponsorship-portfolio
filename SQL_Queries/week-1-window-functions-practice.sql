-- CREATE TABLE
CREATE TABLE baby_names (
    Name TEXT,
    Gender TEXT,
    Total INTEGER
);

INSERT INTO baby_names VALUES
('James', 'M', 19215),
('John', 'M', 17826),
('Robert', 'M', 17620),
('Michael', 'M', 17340),
('David', 'M', 14251),
('Mary', 'F', 3215),
('Patricia', 'F', 2876),
('Jennifer', 'F', 2765),
('Linda', 'F', 2543),
('Barbara', 'F', 2286);

-- QUERY 1: ROW_NUMBER
SELECT Name, Total, ROW_NUMBER() OVER (ORDER BY Total DESC) as Rank FROM baby_names;

-- QUERY 2: PARTITION BY Gender
SELECT Name, Gender, Total, RANK() OVER (PARTITION BY Gender ORDER BY Total DESC) as Gender_Rank FROM baby_names;

-- QUERY 3: LEAD function
SELECT Name, Total, LEAD(Total) OVER (ORDER BY Total DESC) as Next_Total FROM baby_names;
