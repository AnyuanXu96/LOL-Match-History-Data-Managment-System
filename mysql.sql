use classicmodels;
select od.productCode, p.productName, sum(od.quantityOrdered)
 from orderdetails od, products p
 where od.productCode = p.productCode
 group by od.productCode
 order by 3;
 
 
select c.customerNumber, c.customerName, o.orderNumber
from customers c left outer join orders o
on c.customerNumber = o.customerNumber;

select od.productCode, p.productName, sum(od.quantityOrdered)
from orderdetails od, products p
where od.productCode = p.productCode
group by od.productCode, p.productName;


select * from country;

select * from city where countrycode = 'USA';

select countrycode, sum(population) as total_population from city
group by countrycode
having sum(population) > 1000000
order by 2 desc;

--- 1
use classicmodels;
select od.orderNumber, count(od.productCode) as cnt
from orderdetails od
group by od.orderNumber

select c.customerNumber, c.customerName
from customers c
where c.customerNumber in 
(select o.customerNumber 
from orders o
where o.orderNumber in 
(select od.orderNumber
from orderdetails od
where od.productCode = 'S18_3136'
and od.priceEach >= ALL(select od2.priceEach from orderdetails od2 where od2.productCode = 'S18_3136')));

select c.customernumber, c.customername
from customers c, orders o, orderdetails od
where od.productcode = 'S18_3136' 
and od.priceeach >= ALL(select priceeach from orderdetails where ordernumber = 'S18_3136') 
and o.ordernumber = od.ordernumber 
and c.customernumber = o.customernumber;


select c.customerNumber, c.customerName
from customers c
where c.customerNumber in 
(select o.customerNumber 
from orders o
where o.orderNumber in 
(select od.orderNumber
from orderdetails od
where od.productCode = 'S18_3136'
and od.priceEach > ANY(select od2.priceEach from orderdetails od2 where od.orderNumber = od2.orderNumber)));

select c.customerNumber, c.customerName
from customers c
where c.customerNumber in 
(select o.customerNumber 
from orders o
where exists
(select *
from orderdetails od
where od.orderNumber = o.orderNumber
and od.productCode = 'S18_3136'));

select c.customerNumber, c.customerName
from customers c
where c.city = 'Boston'
or c.customerNumber in 
(select o.customerNumber 
from orders o
where exists
(select *
from orderdetails od
where od.orderNumber = o.orderNumber
and od.productCode = 'S18_3136'));

-- 2.1a
select title 
from course
where credits = 3
and dept_name = 'Comp.sic.';

-- 2.1b
select distinct ID
from student
where ID in 
(select s_ID 
from advisor
where i_ID in 
(select ID 
from instructor
where name = 'Einstein'));

-- 2.1c
select salary
from instructor
where salary >= ALL(select salary from instructor);

-- 2.1d
select ID
from instructor
where salary >= all(select salary from instructor);

-- 2.1e
select s.sec_id, count(t.ID) as enrollment
from section s, takes t
where s.sec_id = t.sec_id
and t.year = '2009'
and t.semester = 'Autumn'
group by s.sec_id;

-- 2.1f
select count(t.ID) as enrollment
from takes t
where t.year = '2009'
and t.semester = 'Autumn'
group by t.sec_id
having count(t.ID) >= all(select count(t1.ID) from takes t1 where t1.year = '2009'and t1.semester = 'Autumn' group by t1.sec_id);

-- 2.1g
select t.sec_id
from takes t
where t.year = '2009'
and t.semester = 'Autumn'
group by t.sec_id
having count(t.ID) >= all(select count(t1.ID) from takes t1 where t1.year = '2009'and t1.semester = 'Autumn' group by t1.sec_id);

-- 2.2a
select sum(c.credits * t.grade) as total_grade_points
from course c, takes t
where c.course_id = t.course_id
and t.ID = '12345';

-- 2.2b
select sum(c.credits * t.grade) / sum(c.credits) as GPA
from course c, takes t
where c.course_id = t.course_id
and t.ID = '12345';

-- 2.2c
select t.ID, sum(c.credits * t.grade) / sum(c.credits) as GPA
from course c, takes t
where c.course_id = t.course_id
group by t.ID;

-- 2.3a
update instructor set salary = (salary * 1.1)
where dept_name = 'Comp.sic.';

-- 2.3b
delete from course 
where course_id not in (select course_id from section); 

-- 2.3c
insert into instructor(ID, name, dept_name, salary)
select ID, name, dept_name, 10000
from student
where tot_cred > 100;

-- 7.3
select sr.supname, s.prodnr, s.purchase_price
from supplies s, supplier sr
where 1< (select count(*) 
from supplies s1 
where s.purchase_price = s1.purchaes_price 
and s.supnr = s1.supnr);

-- 7.7
select sr.supcity
from supplier sr
where 1 > (select count(*)
from supplier sr1
where sr.supnr = sr1.supnr);

-- 7.9
select sr.supnr, sr.supname
from supplier sr
where not exists
(select po.supnr
from product_order
where po.supnr = sr.supnr);

-- 7.16
select *
from product p
where 3>(select count(*)
from product p1
where p1.prodnr< p.prodnr);

-- 7.18
select sr.supname, sr.supnr
from supplier sr
where exists
(select *
from supplier sr1
where sr1.supnr = sr.supnr
and sr1.supnr <= all(select sr2.supnr 
from supplier sr2));

-- 3a
alter table student 
add column grade tinyint unsigned;
update student s
inner join marks m on s.ID = m.ID
set s.grade = (case 
when m.score<40 then 'F'
when 40<m.score<60 then 'C'
when 60<m.score<80 then 'B'
when m.score >80 then 'A'
end);
select  * 
from student;

-- 3b
select s.grade, count(s.grade)
from student s
group by s.grade;

