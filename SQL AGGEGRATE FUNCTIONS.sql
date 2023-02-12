USE BBAP;

-------------------------------- AGGREGRATE FUNCTIONS--------------------------------------
SELECT * FROM Employeeeeeees;

-----------------------Total of Employees Salary------------------------------
SELECT SUM(Emp_Salary) AS Total FROM Employeeeeeees;

-------------------Average of the Employees Salary-----------------------------
SELECT AVG(Emp_Salary) AS Average FROM Employeeeeeees;

----------------------Minimum of Employees Salary---------------------------------
SELECT MIN(Emp_Salary) AS MIN FROM Employeeeeeees;

---------------------Maximum of Employees Salary-----------------------------------
SELECT  MAX(Emp_Salary) AS MAX FROM Employeeeeeees;


-----------------Total number of Employees Salary------------------------------------
SELECT COUNT(Emp_Salary) AS COUNT  FROM Employeeeeeees;

SELECT COUNT_BIG(Emp_Salary) AS COUNT_BIG FROM Employeeeeeees; -- COUNT_BIG even counts the null values in a column which the count doesnot 

------------------Standard Deviation of the Employees Salary----------------------------
SELECT STDEV(Emp_Salary) AS Std FROM Employeeeeeees;


---------------------Variance of Employees Salary-------------------------------------------
SELECT VAR(Emp_Salary) AS Variance FROM Employeeeeeees;


----------------------------Returns the checksum value for the Employee Salary-------------------------------
SELECT CHECKSUM_AGG(CONVERT(INT,Emp_Salary))  AS Salary  FROM Employeeeeeees;