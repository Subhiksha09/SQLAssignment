create table Computer(
Id varchar(10) , CompID varchar(10), MfgName varchar(10), 
MfgModel varchar(10), ProType varchar(10)
);
INSERT INTO Computer VALUES('1','C45','Lenovo','48X','577DX');
INSERT INTO Computer VALUES('2','C234','Lenovo','48D','414DX2');
INSERT INTO Computer VALUES('3','C007','HP','D1','539DX');
INSERT INTO Computer VALUES('4','M759','DELL','34L','486SX');

create table employee(
empId varchar(10), empNum varchar(10), empLastName varchar(15),
empFirstName varchar(15), PhNO varchar(15)
);
INSERT INTO Employee VALUES('1',101,'Sarah','silviya','9291379271');
INSERT INTO Employee VALUES('2',102,'Swathi','Vegiraju',8761223921);
INSERT INTO Employee VALUES('3',103,'Manjusha','Immidi',9282112963);

create table package(
id varchar(10), packId varchar(10), PackName varchar(15), 
PackVersion varchar(10), PackType varchar(15), PackCost varchar(10)
);
INSERT INTO Package VALUES('1','AC01','Imagine',3,'Accounting',899.37);
INSERT INTO Package VALUES('2','DB32','Voot',1.5,'Database',332.322);
INSERT INTO Package VALUES('3','DB33','Pai',2.1,'Database',423.23);
INSERT INTO Package VALUES('4','SS11','Pai',5.3,'Spreadsheet',254.76);
INSERT INTO Package VALUES('5','WP08','Lot',2,'Word Processing',899.10);
INSERT INTO Package VALUES('6','WP09','Voot',4.27,'Word Processing',300.00);

CREATE TABLE PC(
Id varchar(10) ,TagNum varchar (10), CompID varchar(10)  references Computer(CompID),
EmpNum int references Employee(EmpNum), Location varchar(20)
);
INSERT INTO PC VALUES('4', '2004','B2101','1212','Home');
INSERT INTO PC VALUES('1', '2001','M759','12611','Accounting');
INSERT INTO PC VALUES('2','2002','B121','12124','Sales Analysis');
INSERT INTO PC VALUES('3', '2003','C007','12611','Information Systems');
INSERT INTO PC VALUES('5', '2005', 'AS19','12567','Home');

CREATE TABLE Software(
Id varchar(10) ,PackID varchar(10) references Package(PackID),
TagNum varchar(10) references PC(TagNum), InstallDate Date, SoftCost varchar(10)
);
INSERT INTO Software VALUES('1','D98291', '29238', 21/07/1998, '1234.89');
INSERT INTO Software VALUES('2','WT3212', '23821',17/03/1992, '1580.00');
INSERT INTO Software VALUES('3','DB3212', '38291',12/06/1997, '1470.00');
INSERT INTO Software VALUES('4','DB3322', '12821',16/06/1997, '4120.77');
INSERT INTO Software VALUES('5','FD0832', '98111', 14/11/2003, '1285.00');
INSERT INTO Software VALUES('6','SQ3920', '29812',28/04/1998, '1837.50');

select EmpNum,EmpFirstName||' '||EmpLastName as EmpName from Employee;

select * from Computer;
select MfgModel as ModelName from Computer where ProType='539DX' ;
select TagNum from PC where EmpNum=124 and location='Home';

select CompID,MfgModel from Computer where ProType='415DX'or Protype='539DX2';
select TagNum,CompID from PC where location<>'Home';
select TagNum,PackID from Software where SoftCost between 200 and 500;
select TagNum,PackID,(Softcost*0.95) as "Discounted Software Cost" from Software;
select TagNum,PackID,(Softcost*0.95) as "Discounted Software Cost" 
from Software where "Discounted Software Cost" >=400;
select PackID,PackName from Package where PackType IN('Database','Spreadsheet');
select EmpNum,EmpFirstName||' '||EmpLastName as EmpName from Employee where EmpLastName='Sarah';
select * from Package order by PackName;
select * from Package group by PackType order by PackCost desc;

select count(PackID) as "Number Of Packages" from Package where PackCost>400;
select avg(PackCost) as "Average of Pack Cost" from Package where PackType='Word Processing';
select PackID,PackName from Package where PackCost>(select avg(PackCost) from Package);
select p.TagNum,p.CompID,c.MfgName from PC p  join  Computer c on p.CompID=c.CompID;

select p.TagNum,p.CompID,c.MfgName from PC p  join  Computer c on p.CompID=c.CompID where EmpNum=101;
select e.EmpNum,e.EmpFirstName||' '||e.EmpLastName as EmpName from 
Employee e join PC p on e.EmpNum=p.EmpNum where location<>'Home';

SELECT Software.TagNum, CompId, PackName, PackVersion, PackType
FROM PC LEFT JOIN Software ON Software.TagNum = PC.TagNum LEFT JOIN 
Package ON Software.PackId = Package.PackId;



