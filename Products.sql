create table product(
productCode varchar(10), productDescription varchar(50), productPrice varchar(10)
);
insert into product values ('1', 'Women Clothing', '2999');
insert into product values ('2', 'Grocery', '345');
insert into product values ('3', 'Posh Dress', '345');
insert into product values ('4', 'footwear', '799');

create table branch(
branchCode varchar(10), branchName varchar(30), town varchar(15), areaCode varchar(15)
);
insert into branch values ('201', 'Bhagya Nagar', 'Hyderabad', '500090');
insert into branch values ('202', 'NAD', 'Vishakapatnam', '633621');

create table stock(
branchCode varchar(10), productCode varchar(15), stockQuant varchar(40), reorder varchar(50)
);
insert into stock values ('202', '3', '34', 'yes');
insert into stock values ('201', '3', '23', 'no');

create table area(
areaCode varchar(10), saName varchar(15), manager varchar(20)
);
insert into area values ('500090', 'clothing', 'Bloggs');
insert into area values ('232765', 'footwear', 'Bloggs');
select branchName from branch b join Area a on b.areaCode=a.areaCode where manager='Bloggs';
select avg(productPrice) from Product;
select max(productPrice) from Product;
SELECT town FROM Product LEFT JOIN Stock ON Product.productCode = Stock.productCode 
LEFT JOIN Branch ON Branch.branchCode = Stock.branchCode WHERE productDescription="Posh-Dress";
