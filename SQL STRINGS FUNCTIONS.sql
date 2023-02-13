--------------------------SQL STRING FUNCTIONS--------------------------------
USE BBAP;
----------1. ASCII() = It returns the ASCII value of a character .

SELECT ASCII('A');

SELECT ASCII('Z');

SELECT ASCII('a');

SELECT ASCII('z');


--------- 2. CHAR() = It returns the character from an ASCII value.

SELECT CHAR(65);

SELECT CHAR(90);

SELECT CHAR(97);

SELECT CHAR(122);


-------------3. CHARINDEX() = It returns the index position of the substring in the given string.

SELECT CHARINDEX('Puj', 'Parag Pujari');

SELECT CHARINDEX( 'int'  , 'He is the most intelligent person in the class');

SELECT CHARINDEX('SQL' , 'SQL SERVER INDEX');


--------------4. CONCAT() = It joins two or more string into a single string.

SELECT CONCAT('Parag', ' ' , 'Pujari');

SELECT CONCAT('Pradhan Para', ' ' , 'Budharaja', ' ' , 'Sambalpur' , ' ', 'Odisha');


-----------------5. CONCAT_WS() = It concatenates multiple string with the help of seperator into a single string.

SELECT CONCAT_WS(' ', 'Parag','Pujari');

SELECT CONCAT_WS('.','1999','20','0','0','97');


-------------------6. SOUNDEX() = It finds out the four digit code for the given string.

SELECT SOUNDEX('Too');

SELECT SOUNDEX('Two');


-----------------7. Difference() = It returns the difference between the soundex values of the two strings.

SELECT DIFFERENCE(SOUNDEX('TOO'),SOUNDEX('TWO'));

USE BBAP;

-----------------8. LEFT() = It extracts the given number of characters starting from the left.
SELECT LEFT('SQL Server Tutorial',3);

SELECT LEFT ('ARZOO ABHA',5);


---------------  9. LEN() = It returns the length of the character of the given string.

SELECT LEN('Parag Pujari');

--------------- 10. LOWER() = It converts the string into the lower case.

SELECT LOWER('PARAG PUJARI');


---------------- 11. LTRIM() = It removes the blankspaces from the left.

SELECT LTRIM(' Parag Pujari');

SELECT LTRIM('       SQL Server');

------------------ 12. PATINDEX() = It returns the starting index of the first occurance of the characters in the string.

SELECT PATINDEX('%att%', 'SQL Pattern Index');

SELECT PATINDEX('%Ind%', ' SQL Pattern Index');


------------------13.  QUOTENAME() = It adds the delimiter to the input string to make it a valid string delimiter.

DECLARE @tablename VARCHAR(128) = 'Employees';
DECLARE @sql       VARCHAR(100) = 'SELECT * FROM' + QUOTENAME(@tablename);
EXECUTE (@sql);


-------------------- 14. REPLACE() = It replaces the old substring with the new substring.

SELECT REPLACE('It is a good tea at the famous tea store','tea','coffee');


------------------ 15. REPLICATE() = It repeats the string for a specific number of times.

SELECT REPLICATE('Parag',5);


-------------- 16. REVERSE() = It is used to reverse the given input string.

SELECT REVERSE('ecnalubma');


------------------ 17. RIGHT() = It extracts the given number of input characters from the  right.

SELECT RIGHT('SQL Server Tutorial',8);

----------------18. RTRIM() = It removes the blank spaces from the right.

SELECT RTRIM('SQL Server Tutorial  ');

------ 19. SPACE() = It returns the strings with the specific number of spaces.

SELECT 'PARAG' + SPACE(1) + 'PUJARI';


----------- 20. STR() = It converts the numeric value into the string value.

SELECT STR(10);

SELECT STR(80.97);

SELECT STR(87);


------------ 21. STRING_AGG() = It concatenates the rows of the string with the seperator into a new string.

SELECT STRING_AGG(Emp_City, ';') FROM Employeeeeeees


----------------- 22. STRING_SPLIT() = It splits the string with the help of seperator.

SELECT value from STRING_SPLIT('Parag,Nishant,Subham,Sristy,Parul,Meenal, Aratrika',',');


------------------ 23. STUFF() = It deletes a part of the string and then inserts the new substring in the deleted substring.

SELECT STUFF('SQL Server Tutorial',5,6, 'Class');

SELECT STUFF('Aman Chandel',5,7,'Khurana');


------------24. SUBSTRING() = It extracts the portion of the string from the entire string.

SELECT SUBSTRING('Parag Pujari',7,6);

SELECT SUBSTRING('SQL Server Tutorial',5,6);

SELECT SUBSTRING('Tutorials for Data',15,4);


------------ 25. TRANSLATE() = It replaces the set of characters into another characters for a given string.

SELECT TRANSLATE('[408] 555 6789','[]','()');


-------------- 26. TRIM() = It returns the new string after removing all the balnk spaces from the left and right of the sting.
SELECT TRIM('            Nisha Abha           ');



--------------- 27. UPPER() = It converts the string into the capital case.
SELECT UPPER('parag');
