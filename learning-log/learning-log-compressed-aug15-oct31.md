# Learning Log - Compressed 10-Week Roadmap
**Aug 15 - Oct 31, 2026**
**Goal: Job offer + visa sponsorship by Nov 30**

---

## Day 1: Friday, Aug 15 (Evening Session)

### ✅ COMPLETED TASKS

**Task 1: SQL Window Functions Learning (30 mins)**
- Watched: Alice Zhao - SQL Window Functions (YouTube)
- Topics: ORDER BY, ROW_NUMBER, OVER clause, PARTITION BY, LEAD/LAG
- Source: SQL Pocket Guide

**Task 2: Window Functions Practice (1 hour)**
- Platform: SQLiteOnline (browser-based)
- Created: baby_names table with 10 sample records
- Wrote & executed 3 practice queries:
  1. ROW_NUMBER() - Ranking all names by popularity
  2. RANK() + PARTITION BY - Ranking within gender groups
  3. LEAD() - Comparing adjacent row values
- Committed to GitHub: SQL_Queries/week-1-window-functions-practice.sql

### 📚 KEY LEARNINGS
- ROW_NUMBER: Sequential numbering (1,2,3,4...) ignores ties
- RANK: Skips numbers on ties (1,1,3,4...)
- PARTITION BY: Creates separate windows for groups
- LEAD/LAG: Access next/previous row without JOIN

### 📊 PROGRESS
- Week 1 Target: 15 hours
- Completed Today: 1.5 hours
- Remaining: 13.5 hours

### 📝 TOMORROW (Saturday, Aug 17)
- SQL CTEs & Subqueries (1 hour learning)
- Practice: 5 CTE queries (1 hour)
- GitHub folder structure setup
- Total: 2-2.5 hours

---
  
## Day 2: Sunday, Aug 16 (Full Day Session)

### ✅ COMPLETED TASKS

**Task 1: Window Functions Advanced Learning (45 mins)**
- Topics: DENSE_RANK, LAG function, Running totals
- Concepts: Window frames, cumulative calculations
- Key insight: DENSE_RANK vs RANK for handling ties

**Task 2: Advanced Practice Queries (60 mins)**
- Query 4: DENSE_RANK - Ranking within gender groups (no rank gaps)
- Query 5: LAG - Comparing current to previous row values
- Query 6: Running Total - Cumulative sum with percentage calculation
- Executed on SQLiteOnline

**Task 3: SQL CTEs Introduction & Practice (90 mins)** ⭐
- Learned: Common Table Expressions (CTEs), WITH clause, CTE benefits
- Video: K1WeoKxLZ5o - How to use CTEs
- Created 5 CTE practice queries:
  1. Simple CTE with filtering
  2. CTE with aggregation (COUNT, AVG, MAX, MIN)
  3. Multiple CTEs with UNION
  4. CTE with percentage calculations
  5. CTE with window functions + LAG
- Committed: SQL_Queries/week-1-cte-practice.sql

**Task 4: GitHub Folder Structure Fix (30 mins)** 🔧
- Removed incorrectly nested SQL_Queries/SQL_Queries folder
- Recreated week-1-cte-practice.sql at correct location
- Learned: GitHub folder paths auto-create with proper naming

**Task 5: Project 1 Setup (45 mins)** 📋
- Created: projects/project-1-analytics-dashboard/README.md
- Documented: Goals, deliverables, timeline, tools, and status
- Established project structure for portfolio presentation

### 📚 KEY LEARNINGS
- CTEs make complex queries more readable and maintainable
- Multiple CTEs can be combined in a single query
- CTEs work perfectly with window functions
- Proper GitHub folder structure is essential for portfolio presentation
- Always plan project structure before starting implementation

### 📊 PROGRESS
- Week 1 Target: 15 hours
- Completed: Day 1 (1.5 hrs) + Day 2 (4.5 hrs) = **6 hours** ✅
- Remaining: 9 hours
- SQL Window Functions: ✅ MASTERED
- SQL CTEs: ✅ LEARNED & PRACTICED
- Project Setup: ✅ STARTED

### 📝 TOMORROW (Monday, Aug 17)
- SQL Query Optimization basics
- Explore GA4 setup & measurement ID
- Start Project 1 data exploration
- Python fundamentals intro (30 mins)
- Total: 2.5-3 hours

### 🔥 Energy Level: 8/10
