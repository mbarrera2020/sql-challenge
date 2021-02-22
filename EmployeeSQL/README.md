# sql-challenge

Author: Maria Barrera
Date: 02/21/2021
Description:  Design DB tables to hold data in the CSVs, import the CSVs into a SQL database, and run queries on the data; 
i.e. perform Data Modeling, Data Engineering & Data Analysis.

### Part 1 -- 

####  Data Modeling
Inspect the CSVs and sketch out an ERD of the tables using https://app.quickdatabasediagrams.com/
Reference:  employee_db_physical_ERD.png

#### Data Engineering
Reference: main_sql.sql

1) Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
2) Import each CSV file into the corresponding SQL table. 

#### Data Analysis
Reference: data_analysis.sql

Run queries to generate the following:
1) List the following details of each employee: employee number, last name, first name, sex, and salary.
2) List first name, last name, and hire date for employees who were hired in 1986.
3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4) List the department of each employee with the following information: employee number, last name, first name, and department name.
5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Note:  Ref: SQL-Challenge-QueryScreenShots.doc in the images folder has sample screen shots of the 8 queries.

### Part 2 -- Bonus
Reference: mainPy_SQL_into_Pandas
1) Import the SQL database into Pandas.
2) Create a histogram to visualize the most common salary ranges for employees.
3) Create a bar chart of average salary by title.
