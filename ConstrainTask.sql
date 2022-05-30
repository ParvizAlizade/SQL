 Create Database ConstraintTask

 Use ConstraintTask

 Create Table Employees(
 Id INT ,
 FullName nvarchar(30) NOT NULL,CHECK(Len(Fullname)>3) ,
 Salary INT CHECK(salary>0),
 DepartmentId INT,
 Email nvarchar(50) NOT NULL,
 CONSTRAINT pk_Employees PRIMARY KEY (Id),
 CONSTRAINT fk_Employees_Id FOREIGN KEY(DepartmentId) REFERENCES Departments(Id),
 CONSTRAINT uk_Email UNIQUE(Email)
 )

 Create Table Departments(
 Id INT,
 Name nvarchar(30) NOT NULL,
 CONSTRAINT pk_Departments PRIMARY KEY(Id),
 CONSTRAINT uk_Departments UNIQUE (Name)
 )
 