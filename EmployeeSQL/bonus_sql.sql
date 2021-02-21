-- testing avg salary
SELECT AVG(DISTINCT salary)::numeric(10,2) 
FROM salaries;

SELECT e.emp_title_id, AVG(salary)::numeric(10,2)
FROM salaries s 
INNER JOIN employees e 
	ON s.emp_no = e.emp_no	
INNER JOIN titles t 
	ON e.emp_title_id = t.title_id
GROUP BY e.emp_title_id
ORDER BY e.emp_title_id ASC
;