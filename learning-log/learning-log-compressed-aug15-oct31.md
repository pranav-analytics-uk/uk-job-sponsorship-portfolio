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

**Task 3: GitHub Commit (15 mins)**
- File: SQL_Queries/week-1-window-functions-extended.sql
- Committed: "Add extended window functions practice - Aug 16"

### 📚 KEY LEARNINGS
- DENSE_RANK: Same as RANK but doesn't skip on ties (1,1,2 not 1,1,3)
- LAG/LEAD: Access previous/next rows without complex JOINs
- Window functions with SUM: Creates running totals
- Percentage calculations: (value / SUM OVER()) * 100

### 📊 PROGRESS
- Week 1 Target: 15 hours
- Completed: Day 1 (1.5 hrs) + Day 2 (2 hrs) = 3.5 hours
- Remaining: 11.5 hours
- SQL Window Functions: ✅ MASTERED

### 📝 TOMORROW (Monday, Aug 17)
- SQL CTEs & Subqueries learning (60 mins)
- CTE practice queries (60 mins)
- Project 1 planning start
- GitHub folder structure
- Total: 2.5-3 hours
