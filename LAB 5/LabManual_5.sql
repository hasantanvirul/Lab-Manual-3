Activity 1
SELECT LAST_NAME, HIRE_DATE FROM emps WHERE Department_Id = (SELECT Department_Id FROM emps WHERE Last_Name = 'Zlotkey') AND Last_Name <> 'Zlotkey';

Activity 2
SELECT EMPLOYEE_ID, LAST_NAME,SALARY FROM emps WHERE Salary > (SELECT AVG(Salary) FROM emps) ORDER BY Salary ASC;

Activity 3
SELECT LAST_NAME, SALARY FROM emps WHERE Manager_id = (SELECT Employee_Id FROM emps WHERE Last_Name = 'King');

Activity 4
SELECT EMPLOYEE_ID,LAST_NAME, SALARY FROM emps WHERE Department_Id IN (SELECT Department_Id FROM emps WHERE Last_Name like '%u%') AND Salary > (SELECT AVG(Salary) FROM emps);

Activity 5
a. CREATE TABLE empnew2 (newID INT(4) NOT NULL PRIMARY KEY, fname VARCHAR(20), lname VARCHAR(20));
b.INSERT INTO empnew2(newID, fname, lname) VALUES (1000, "Akibul", "Hasan"), (1001, "Ahnaf", "Khalil"), (1002, "Yasin", "Arafat"), (1003, "Abdul", "Janan"), (1004, "Monowera", "Bagum");
c. 
CREATE TABLE empnew3 (ID INT(6) NOT NULL PRIMARY KEY, F_name VARCHAR(20), L_name VARCHAR(20));
INSERT INTO empsnew3(ID, F_name, L_name) SELECT emps.Employee_Id, emps.First_Name, emps.Last_Name FROM emps;
INSERT INTO empsnew3(ID, F_name, L_name) SELECT empnew2.newID, empnew2.fname, empnew2.lname FROM empnew2;

Activity 6
a. CREATE TABLE EMP(ID int(7), FIRST_Name varchar(25), LAST_Name varchar(25), Dept_ID int(7))
b.ALTER TABLE emp MODIFY (LAST_Name VARCHAR(50));
c. CREATE TABLE employees2(ID int(6), FIRST_Name Varchar(20), LAST_Name Varchar(25), Salary DECIMAL(8,2), DEPT_ID int(4));
d. DROP TABLE emp
e. RENAME TABLE employees2 TO EMP
f.ALTER TABLE emp DROP COLUMN FIRST_Name