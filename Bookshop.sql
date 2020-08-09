create table bookFile(
BookNum varchar(10) ,publisherCode varchar(10), edition varchar(5), years varchar(5),
topic varchar(50), title varchar(25)
);

insert into bookFile values ('101', '221', '2', '1989', 'Greta Garbo in Anna Karenina','Anna Karenina');
insert into bookFile values ('102', '222', '8', '1960', 
' Harper Lees classic work To Kill a Mockingbird', 'To Kill a Mockingbird');
insert into bookFile values ('103', '223', '5', '1992',
'art of reading literature critically', 'The Great Gatsby'); 

create table bookShop(
shopNum varchar(10), shopName varchar(15), streetNum varchar(5), StreetName varchar(10),
area varchar(15), phone varchar(12)
);

insert into bookShop values ('1', 'Scribbles', '16', 'Balaji', 'Hyderabad','9109292298');
insert into bookShop values ('2', 'Unique Books', '12', 'Bachupally', 'Hyderabad','9299912876');
insert into bookShop values ('3', 'crossword', '2', 'forum mall', 'Hyderabad', '7264737124');

create table expense(
expNum varchar(10), bookNum varchar(10), shopNum varchar(10), buyDate varchar(10),
cost varchar(10), payment varchar(15)
);

insert into expense values('301', '101', '2', '2-3-1988', '640', 'cash');
insert into expense values('302', '102', '3', '14-07-1976', '640', 'gpay');

create table publisher(
publisherCode varchar(10),  publisherName varchar(15), publisherAddress varchar(25),
publisherPhone varchar(15)
);

insert into publisher value ('221222', 'Subhiksha', 'Nizampet','7283719276');
insert into publisher value ('221223', 'Swathi', 'Bachupally', '9829212342');

select title, BookNum from bookFile where years >= 1984;
select * from bookFile where years < 1984 and years > 1986;
select publisherName,publisherAddress from publisher order by publisherName desc;
select * from bookFile where years between 1985 and 1987;
select count(*) from bookFile;
select max(edition) from bookFile;
select bookNum,topic,title from bookFile where topic like 'data%';
select publisherName, publisherCode, publisherAddress from Publisher 
where publisherName like 'A%' and publisherCode<'P5';
select topic from bookFile group by topic;


