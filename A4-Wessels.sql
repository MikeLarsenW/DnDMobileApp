/***************************/
/* Name: Michael Wessels   */
/* Class: CS3410	   */
/* Term: Fall 2017	   */
/* Assgn #: 4		   */
/***************************/
/*A*/
SELECT * FROM PROJECT;

/*B*/
SELECT ProjectID, Name, StartDate, EndDate
FROM PROJECT;

/*C*/
SELECT *
FROM PROJECT
WHERE StartDate < #01-AUG-08#;

/*D*/
SELECT *
FROM PROJECT
WHERE EndDate IS NULL;

/*E*/
SELECT ProjectID, E.EmployeeNumber, LastName, FirstName, Phone
FROM ASSIGNMENT AS A INNER JOIN EMPLOYEE AS E
ON A.EmployeeNumber=E.EmployeeNumber;

/*F*/
SELECT P.ProjectID, Name AS ProjectName,
P.Department AS ProjectDepartment,
E.EmployeeNumber, LastName, FirstName,
Phone AS EmployeePhone
FROM(ASSIGNMENT AS A INNER JOIN EMPLOYEE AS E
ON A.EmployeeNumber=E.EmployeeNumber)
INNER JOIN PROJECT AS P
ON A.ProjectID=P.ProjectID;

/*G*/
SELECT	P.ProjectID, Name AS ProjectName,
D.DepartmentName AS ProjectDepartment,
D.Phone AS DepartmentPhone,
E.EmployeeNumber,
LastName, FirstName,
E.Phone AS EmployeePhone
FROM ((ASSIGNMENT AS A INNER JOIN EMPLOYEE AS E
    	 ON A.EmployeeNumber=E.EmployeeNumber)
     INNER JOIN PROJECT AS P
		ON A.ProjectID=P.ProjectID)
     INNER JOIN DEPARTMENT AS D
  		 ON P.Department=D.DepartmentName
ORDER BY P.ProjectID;

/*H*/
SELECT	P.ProjectID, Name AS ProjectName,
		D.DepartmentName AS ProjectDepartment,
		D.Phone AS DepartmentPhone,
		E.EmployeeNumber, LastName, FirstName,
		E.Phone AS EmployeePhone
FROM ((ASSIGNMENT AS A INNER JOIN EMPLOYEE AS E
			ON A.EmployeeNumber=E.EmployeeNumber)
		INNER JOIN PROJECT AS P
			ON A.ProjectID=P.ProjectID)
		INNER JOIN DEPARTMENT AS D
				ON P.Department=D.DepartmentName
WHERE DepartmentName='Marketing'
ORDER BY P.ProjectID;

/*I*/
SELECT COUNT(*) AS NumberOfMarketingProjects
FROM PROJECT
WHERE Department='Marketing';

/*J*/
SELECT SUM(MaxHours) AS TotalMaxHoursForMarketingProjects
FROM PROJECT
WHERE Department='Marketing';

/*K*/
SELECT AVG(MaxHours) AS AverageMaxHoursForMarketingProjects
FROM PROJECT
WHERE Department='Marketing';

/*L*/
SELECT		Department, COUNT(*) AS NumberOfDepartmentProjects
FROM		PROJECT
GROUP BY	Department;

