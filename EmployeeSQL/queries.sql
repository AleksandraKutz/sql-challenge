--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

--List the manager of each department along with their department number, department 
--name, employee number, last name, and first name.

SELECT dm.emp_no, e.first_name, e.last_name, d.dept_no, d.dept_name, t.title
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN dept_emp de ON dm.dept_no = de.dept_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN titles t ON e.emp_title_id = t.title_id
WHERE t.title = 'Manager';

--List the department number for each employee along with that employee’s employee
--number, last name, first name, and department name.

SELECT dept_manager.dept_no, dept_manager.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_manager
JOIN employees e ON dept_manager.emp_no = e.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, 
--last name, and first name.

SELECT d.dept_name, d.dept_no, de.emp_no, e.last_name, e.first_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no 
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


--List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS total_frequency
FROM employees
GROUP BY last_name
ORDER BY total_frequency DESC;
