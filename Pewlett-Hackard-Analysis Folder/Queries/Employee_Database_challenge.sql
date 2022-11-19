--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT 
emp_no,
first_name,
last_name
FROM employees;

--Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT
title,
from_date,
to_date
FROM "Title";

-- Create a new table using the INTO clause "retirement_titles"
-- Filter data on the birth date to retrieve employees born between 1952 and 1955, order by employee number

SELECT
"employees".emp_no,
first_name,
last_name,
title,
from_date,
to_date
INTO retirement_titles
FROM employees
JOIN "Title" ON employees.emp_no = "Title".emp_no
WHERE DATE_PART('year',employees.birth_date) BETWEEN 1952 AND 1955
ORDER BY 1

--Display retirement_titles table
SELECT * FROM retirement_titles;

-- From Employee_Challenge_Starter_Code; Use Dictinct with Orderby to remove duplicate rows
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
-- Create a Unique Titles table using the INTO clause.
-- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.

-- SELECT DISTINCT ON (______) _____,
-- ______,
-- ______,
-- ______

-- INTO unique_titles
-- FROM _______
-- WHERE _______
-- ORDER BY _____, _____ DESC;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY 1, to_date DESC;

--Display unique_titles
SELECT * FROM unique_titles;

--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.
SELECT
count(*),
title

INTO retiring_titles
FROM unique_titles
GROUP BY 2 ORDER BY 1 DESC

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.

SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
first_name,
last_name,
dept_empl.from_date,
dept_empl.to_date,
title
INTO mentorship_eligibility
FROM employees
JOIN dept_empl ON employees.emp_no = dept_empl.emp_no
JOIN "Title" ON employees.emp_no = "Title".emp_no
WHERE dept_empl.to_date = '9999-01-01' AND DATE_PART('year',employees.birth_date)=1965
ORDER BY 1

--Display mentorship_eligibility
SELECT * FROM mentorship_eligibility