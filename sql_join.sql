--List the following details of each employee: employee number, last name, first name, gender, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
--2. List employees who were hired in 1986.
SELECT *
from employees
WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986'
--3. List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date
FROM dept_manager as dm
JOIN departments as d
ON dm.dept_no = d.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

JOIN departments as d ON de.dep_no = d.dept_no
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
SELECT *
FROM departments
--7.List all employees in the Sales and Development departments, including their employee number, last name, first name,
--and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments as d ON d.dept_no = de.dept_no 
WHERE d.dept_name IN ('Sales','Development')
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, Count(last_name) as "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC