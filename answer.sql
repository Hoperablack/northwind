1 */ Select all customers that start with the letter A */

select *
from customers
where contactname like ('A%');

2. Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters

select *
from customers
where city like ('L%nd_');

3 */ Return all customers from a city that contains the letter 'L' */

select *
from customers
where city like ('L%');

4 */ Return all customers that start with 'a' or start with 'b' */

select *
from customers
where contactname like 'A%' or contactname like'B%'
order by contactname ASC;

5 Return all customers that start with "b" and end with "s"

select *
from customers
where contactname like ('B%ndS%');


6 Return all customers from 'Germany', 'France', or 'UK'

select *
from customers
where country like 'Germany%' or country like 'France%' or country like 'UK%';



7 Return all customers that are NOT from 'Germany', 'France', or 'UK'

select * 
from customers
where country <> ('Germany%''Franc%''UK%');
				  
				  
8 selects all products with a price between 10 and 20

select *
from products
where unitprice between 10 and 20
order by unitprice ASC;

9 select all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3

select *
from products
where unitprice between 10 and 20
order by unitprice ASC
offset 3;

10 select all products with a ProductName between Carnarvon Tigers and Mozzarella di Giovanni

select *
from products
where productname like 'Carnarvon Tigers%' or productname like 'Mozzarella di Giovanni%';

11 select all orders with an OrderDate between '01-July-1996' and '31-July-1996'

select *
from orders
where orderdate between '01-July-1996' and '31-July-1996'
order by orderdate ASC;