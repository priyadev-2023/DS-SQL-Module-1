--1. Find out the selling cost AVG for packages developed in Pascal

select ROUND(AVG(SCOST),2) as avg_selling_cost from software where DEVELOPIN='PASCAL'

--2. Display Names, Ages of all Programmers.
select PNAME as display_name,DATEDIFF(year,DOB,GETDATE()) as ages from programmer

--3. Display the Names of those who have done the DAP Course.

select  PNAME from stuides where COURSE='DAP'

--. Display the Names and Date of Births of all Programmers Born in January.

select PNAME as display_name,DATEDIFF(year,DOB,GETDATE()) as ages,DOB from programmer WHERE MONTH(DOB)='01'  
--5. Display the Details of the Software Developed by Ramesh.
select DEVELOPIN from software where PNAME='Ramesh'
--6. Display the Details of Packages for which Development Cost have been recovered.

--7. Display the details of the Programmers Knowing C.

select * from programmer where PROF1='C' or PROF2='C'
select * from software
--8. What are the Languages studied by Male Programmers?
select PNAME,PROF1,PROF2 from programmer where GENDER='M'

--9. Display the details of the Programmers who joined before 1990.
select PNAME as display_name,DATEDIFF(year,DOB,GETDATE()) as ages,DOB from programmer WHERE year(DOB)<1990
-- Who are the authors of the Packages, which have recovered more than double the Development cost?
select (SCOST*SOLD),PNAME as author_name,DCOST from software WHERE (SCOST*SOLD)>DCOST

