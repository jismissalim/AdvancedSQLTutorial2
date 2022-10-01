Create table #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)
-- cara membuat temp table

select*
from #temp_Employee
-- cara melihat dari temp table

Insert into #temp_Employee values (
'1001', 'HR', '45000'
)
-- cara memasukkan data di temp table

insert into #temp_Employee
select *
from SQ_TutorialAlexAnalystYT..EmployeeSalary
-- cara memasukkan data di tabel employee salary ke temp table

create table #temp_Employee2 (
Job_Title varchar(50),
EmployeesPerJob int, 
AvgAge int,
AvgSalary int)
-- membuat temp table ke dua

insert into #temp_Employee2 
SELECT Job_Title, Count(Job_Title), Avg(Age), AVG(salary)
FROM SQ_TutorialAlexAnalystYT..EmployeeDemographics as emp
JOIN SQ_TutorialAlexAnalystYT..EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeId
group by Job_Title;

select *
from #temp_Employee2;
