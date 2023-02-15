------------------------------------SQL USER DEFINED FUNCTIONS------------------------------------------------------

----------- 1. CAST() = It converts the value of one type to another type.

SELECT CAST(10.97 AS INT);

SELECT CAST('90.87' AS FLOAT);

SELECT CAST(89.987 AS DECIMAL(3,0));

SELECT CAST(90.87 AS NUMERIC(18,5));








------------ 2. CONVERT() = It  converts the value of one type to another type.

SELECT CONVERT(INT, 10.87);

SELECT CONVERT(FLOAT, 10.98);

SELECT CONVERT(NUMERIC(18,5), 90.87);

SELECT CONVERT(FLOAT, '90.87');


---------------- 3. CHOOSE() = It returns the items from a set of items based on a specific index.

SELECT CHOOSE(2, 'First', 'Second', 'Third');

SELECT * , CHOOSE(GenderID, 'Male', 'Female') AS Gender FROM Emp_Gender_Details;


-------------------- 4. IS NULL() = It checks if the given value is NULL ornot.

SELECT ISNULL(NULL,0);

SELECT ISNULL(10,'Hi');

SELECT ISNULL('Hello','Hi');


SELECT ISNULL(NULL, 'Squares Data');


-------------------- 5. ISNUMERIC() = It checks whether the given data is number or not.

SELECT ISNUMERIC(80.87);

SELECT ISNUMERIC(90);


SELECT ISNUMERIC('90.87');


SELECT ISNUMERIC('90');


SELECT ISNUMERIC('Parag');


------------------------ 4. IIF() = It is an alternative to if condition.

SELECT * , 
IIF(GenderID = 1, 'Male','Female') as Gender FROM Emp_Gender_Details;


SELECT *, IIF(deptID = 1, 'CSE',
             IIF(deptID = 2, 'Electronics',
			    iif( deptID = 3, 'Mechanical',
				  iif( deptid = 4, 'Completed','N/A')
				                                      )
											           )
												         ) AS department
													         FROM Emp_Details;



------------------------5. TRY_CAST() = It will throw NULL if any error has occurred else it will work like cast.

SELECT 
     CASE WHEN TRY_CAST('Test'AS int) IS NULL THEN 'CASE Failed'
	                                          ELSE  'CASE Succeded'
											  END AS Result;


SELECT TRY_CAST('Parag' AS INT);




----------------------- 6. TRY_CONVERT() = It will throw NULL if any error has occurred else it will work like convert.

SELECT TRY_CONVERT(int, 'Parag');

SELECT 
   CASE WHEN TRY_CONVERT(INT, 'Parag') IS NULL THEN 'Case Failed'
                                               ELSE 'Case Succeded'
											   END  AS  Result;




-----------------------7. TRY_PARSE() = It is used to convert the data into the requested data type else it will throwNULL.
SELECT TRY_PARSE('14 April 2019' AS DATE);


SELECT TRY_PARSE('10' AS INT);


SELECT TRY_PARSE('-9087'  AS INT);

SELECT TRY_PARSE('ABC' AS DECIMAL(10,3));

---------------------------8. CONVERT DATETIME TO STRING---------------------------------

SELECT CONVERT(VARCHAR(20), GETDATE(),112);


DECLARE @dt DATETIME = '2019-12-31 14:43:35.863';

SELECT CONVERT(VARCHAR(20), @dt, 112);




--------------------------------- 9. CONVERT STRING TO DATETIME----------------------------------

SELECT CONVERT(DATETIME,'2023-02-15',102);



--------------------------------- 10. CONVERT DATETIME TO DATE-----------------------------------------
SELECT CONVERT(DATE, GETDATE());