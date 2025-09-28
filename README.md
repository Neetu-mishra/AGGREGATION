# Aggregate Functions & Grouping

## Objective
Use aggregate functions and GROUP BY to summarize data.

## Tools
- MySQL Workbench 

## Files
- TASK4_Aggregation — create table, insert sample data, and queries.
- README.md — this file.
- screenshots — screenshots of results.

## How to run
1. Open MySQL Workbench and connect to your local database.
2. Open TASK4_Aggregation and execute the script.
3. Inspect result grids for each SELECT query.

## Queries included (summary)
- SUM(salary) by department
- AVG(salary) by department (rounded)
- COUNT(*) by department
- COUNT(DISTINCT department)
- MAX(salary) by department
- HAVING example: departments with avg salary > 60000
- GROUP BY on multiple columns (department + age_group)

## Notes / explanations
- WHERE filters rows before grouping.
- HAVING filters groups after aggregation.
- COUNT(*) counts rows; COUNT(column) counts non-NULL values.
- ROUND() is used to format Avg results.

## Author
Your Name
