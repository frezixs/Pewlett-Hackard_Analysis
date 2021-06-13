--Deliverable 1: The Number of Retiring Employees by Title (50 points)
SELECT 
	e.emp_no,
	e.first_name,
	e.last_name, 
	ti.title,
	ti.from_date, 
	ti.to_date 
--INTO retirement_titles
FROM 
employees as e
INNER JOIN 
titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT COUNT(*) FROM unique_titles 

SELECT count(title),title
--INTO retiring_titles 
FROM unique_titles 
GROUP BY title 
ORDER BY count(title) DESC;

DROP TABLE retiring_titles;
DROP TABLE retirement_titles;
DROP TABLE unique_titles;

SELECT * FROM retiring_titles

--Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)
SELECT DISTINCT ON (emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date,
	ti.title 
INTO mentorship_eligibilty
FROM 
employees as e 
INNER JOIN 
dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN 
titles as ti 
ON (de.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no; 

SELECT COUNT(*) FROM mentorship_eligibilty

--Deliverable 3: A written report on the employee database analysis (20 points)
SELECT 
	e.emp_no,
	e.first_name,
	e.last_name, 
	ti.title,
	ti.from_date, 
	ti.to_date
INTO 
employee_titles
FROM 
employees as e
INNER JOIN 
titles as ti
ON (e.emp_no = ti.emp_no)
ORDER BY e.emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_employee_titles
FROM employee_titles
ORDER BY emp_no, to_date DESC;

SELECT COUNT(*) FROM unique_employee_titles 


SELECT DISTINCT ON (emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date,
	ti.title 
INTO current_em
FROM 
employees as e 
INNER JOIN 
dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN 
titles as ti 
ON (de.emp_no = ti.emp_no)
WHERE (de.from_date > '1997-01-01')
ORDER BY e.emp_no; 

SELECT COUNT(*) FROM current_em

