----------------------------------------------DATE AND TIME FUNCTIONS----------------------------------------------------------
----1. ISDATE() = It is used to check if a given date is valid or not.
SELECT ISDATE(GETDATE());

SELECT ISDATE('2023-01-01');

----- 2. TIMEFROMPARTS() = It returns the time from hour, minutes and seconds.

SELECT TIMEFROMPARTS(23,15,48,0,0);

SELECT TIMEFROMPARTS(15,02,30,0,0);


----------3. DATEFROMPARTS() = It returns the date from the parts.

SELECT DATEFROMPARTS(2022,10,31);

SELECT DATEFROMPARTS(2022,11,28);


--------------4. DATETIME2FROMPARTS() = It returns the  date and time from year, months, days, hours, minutes and seconds, fractions and precisions.

SELECT DATETIME2FROMPARTS(2022,10,22,23,10,30,0,0);

SELECT DATETIME2FROMPARTS(2023,01,21,15,30,00,0,0);


----------------- 5. TIMEFROMPARTS() = It returns the time from the parts.
SELECT TIMEFROMPARTS(23,10,50,0,0);

SELECT TIMEFROMPARTS(21,10,35,0,0);


------------------------ 6. CURRENT_TIMESTAMP = It returns the current date and time without including the current time zone;
SELECT CURRENT_TIMESTAMP;


------------------------ 7. GETUTCDATE() = It returns the current UTC time on the SQL Server server on which it is working.
SELECT GETUTCDATE();


------------------------ 8. GETDATE() = It returns the current date  and time.
SELECT GETDATE();

----------------------- 9.SYSDATETIME() = It returns the system date and time of the SQL Server system in which it is working.
SELECT SYSDATETIME();


---------------------- 10. SYSUTCDATETIME() = It returns the Current utc Date and Time of the SQL Server in which it is running.
SELECT SYSUTCDATETIME();


-------------------- 11. SYSDATETIMEOFFSET() = It returns the system date and time offset including the time-zone.
SELECT SYSDATETIMEOFFSET();


------------------- 12. DATENAME() = It returns the part of the date as a string-----------
SELECT DATENAME(DAY, GETDATE());
SELECT DATENAME(MONTH, GETDATE());
SELECT DATENAME(YEAR, GETDATE());

SELECT DATENAME(HOUR, GETDATE());
SELECT DATENAME(MINUTE, GETDATE());
SELECT DATENAME(SECOND, GETDATE());


-------------- 13. DATEPART() = It returns the part of a date in the form of an integer----------
SELECT DATEPART(DAY, GETDATE());
SELECT DATEPART(MONTH, GETDATE());
SELECT DATEPART(YEAR, GETDATE());

SELECT DATEPART(HOUR, GETDATE());
SELECT DATEPART(MINUTE, GETDATE());
SELECT DATEPART(SECOND, GETDATE());


----------------14. DAY() = It returns the day from a given date.
SELECT DAY(GETDATE());

----------------- 15. MONTH() = It returns the month from a given date.
SELECT MONTH(GETDATE());

------------------- 16. YEAR() = It returns the year from a given date.
SELECT YEAR(GETDATE());


------------------17. DATEDIFF() = It returns the difference between the two dates in terms of days, onths, year, hours, minutes, seconds.
DECLARE 
@start_dt DATETIME2= '2019-12-31 23:59:59.9999999', 
@end_dt DATETIME2= '2020-01-01 00:00:00.0000000';

SELECT DATEDIFF(DAY, @start_dt, @end_dt);
SELECT DATEDIFF(MONTH, @start_dt, @end_dt);
SELECT DATEDIFF(YEAR, @start_dt, @end_dt);

SELECT DATEDIFF(HOUR, @start_dt, @end_dt);
SELECT DATEDIFF(MINUTE, @start_dt, @end_dt);
SELECT DATEDIFF(SECOND, @start_dt, @end_dt);


SELECT DATEDIFF(WEEK, @start_dt, @end_dt);




------------------- 18. DATEADD() = It adds a specific part of a number to a given date.

SELECT  DATEADD(DAY, 1, GETDATE());

SELECT DATEADD(MONTH, 1 ,GETDATE());

SELECT DATEADD(YEAR,1,GETDATE());

SELECT DATEADD(HOUR,1, GETDATE());

SELECT DATEADD(MINUTE,1,GETDATE());

SELECT DATEADD(SECOND,1,GETDATE());


-------------------- 19. EOMONTH() = It returns the last day of the month of the specific date.

SELECT EOMONTH('2023-02-10');



------------------ 20.   TO DATETIMEOFFSET() = It converts the datetime to datetimeoffset value.

SELECT TODATETIMEOFFSET(GETDATE(), -180);

SELECT TODATETIMEOFFSET('2023-02-12', 30);