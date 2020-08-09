create table Employee(
EmployeeNum varchar(3) UNIQUE,
EmployeeName varchar(10) NOT NULL,
DeptNo varchar(3)
);

INSERT INTO Employee VALUES('E1','Sandy','D1');
INSERT INTO Employee VALUES('E2','Jo','D2');
INSERT INTO Employee VALUES('E3','Fred','D2');
INSERT INTO Employee VALUES('E4','Ginger','D1');
INSERT INTO Employee VALUES('E5','Mog','D1');

Alter table Employee ADD RoomNum varchar(10);

update Employee set RoomNum = 'R1' where DeptNo='D2';
update Employee set RoomNum ='R2' where EmployeeNum='E6';
update Employee set RoomNum ='R3' where EmpployeeNum='E7';
update Employee set RoomNum ='R4' where EmpployeeNum='E8';
update Employee set EmployeeName='Fido' where EmployeeNum='E5';

Alter table Employee DROP COLUMN EmployeeName;
Delete from Employee where DeptNo='D2';
