-- Maria Barrera -- SQL Challenge -- 02/21/2021

--Data Analysis

--Once you have a complete database, do the following:
-- 1) List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
INNER JOIN salaries 
	ON e.emp_no = salaries.emp_no
;

-- 2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986/01/01' AND '1986/12/31'
ORDER BY
	hire_date ASC, first_name
;

-- 3) List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dp.dept_name, dm.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager dm
	ON e.emp_no = dm.emp_no 
INNER JOIN departments dp
	ON dp.dept_no=dm.dept_no
ORDER BY dp.dept_no
;


-- 4) List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no 
INNER JOIN departments dp
	ON de.dept_no=dp.dept_no
ORDER BY e.emp_no
;

-- 5) List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND  last_name LIKE 'B%'
ORDER BY
	last_name ASC
;

-- 6) List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no 
INNER JOIN departments dp
	ON de.dept_no=dp.dept_no
WHERE dp.dept_name = 'Sales'
ORDER BY e.emp_no
;

-- 7) List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no 
INNER JOIN departments dp
	ON de.dept_no=dp.dept_no
WHERE (dp.dept_name = 'Sales' OR dp.dept_name = 'Development')
ORDER BY dp.dept_name ASC, e.emp_no ASC
;

-- 8) In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name,
   	COUNT(*) 
FROM 
   	employees
GROUP BY
	last_name 
ORDER BY
	COUNT DESC, last_name ASC
;

-- Epilogue: APRIL FOOLS' DAY :)
-- emp_no	emp_title_id	birth_date	first_name	last_name	sex	hire_date
-- 499942	e0004			1/10/1963	April		Foolsday	F	2/10/1997
-- 
