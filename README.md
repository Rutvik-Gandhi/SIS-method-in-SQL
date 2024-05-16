# SIS-part-1-in-SQL

## Contributor

- Rutvik Gandhi

## Script Overview

The script contains SQL queries to retrieve data from various tables in the `SIS` database. Each query addresses a specific question or requirement related to academic status, student information, program details, course data, employee details, and more.

## Contents of the Script

### Data Retrieval Queries

1. List all data from the AcademicStatus table.
2. List the number and academicStatusCode for discontinued students, ordered by number in descending order.
3. List the number and academicStatusCode for students who are discontinued or suspended, ordered by number in ascending order.
4. List unique province codes of persons, ordered in descending order by province code.
5. List unique province codes of persons, excluding NULL values.
6. List details of persons without a province code assigned.
7. List details of persons with a first name starting with "AND" followed by any single character.
8. List all data from the Program table for programs with names starting with "Computer".
9. List details of programs with names containing the term "coop".
10. List all data for students with final marks lower than 55, excluding final marks that are zero.
11. List details of rooms meeting specific criteria: capacity >= 40, isLab = 1, memory = '4GB', and campusCode = 'D'.
12. List details of employees teaching in the School of Trades and Apprenticeship and located at specific campuses.
13. List last names and user IDs for persons whose last names start with 'J', ordered by user ID in descending order.
14. List numbers, birth dates (dob), and ages for persons over 60 years old, formatted and calculated accordingly.
15. List course codes and names for courses containing the word 'Game' in their names, using CHARINDEX().
16. Calculate and display increased incidental fees by 10%, ordered by current fee in ascending order.

## How to Use the Script

1. Open your preferred SQL client or environment.

2. Connect to the appropriate database server and select the `SIS` database.

3. Load the script `Assignment1_RG.sql` into your SQL client.

4. Execute the script to run the SQL queries and retrieve the desired data from the `SIS` database.

5. Review the results of each query to obtain the requested information.

## Additional Notes

- Ensure that your SQL environment has sufficient privileges to execute the queries and access the necessary tables in the `SIS` database.

## License

This script is provided under the MIT License. See the [LICENSE](LICENSE) file for details.
