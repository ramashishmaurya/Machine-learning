use house ;
SELECT * from customers ;
select 
  name 
  From customers ;

SELECT 
 count(DISTINCT order_id ) as new_id
 from orders ;
 # but if u want to calculate the values 
 
use house ;
SELECT * from orders ;
 
 SELECT
  order_date ,
  count(*) as customer_values  #
  from orders 
  GROUP BY order_date ;
  
  use house ;

SELECT * from orders ;

 
 
 SELECT 
   customer_id ,
   lead(total_amount) over(PARTITION BY customer_id ORDER  by customer_id ) as abc 
   from orders ;
   
   
use house ;
SELECT 
customer_id , 
sum(total_amount)
FROM orders
GROUP BY customer_id 
order BY customer_id DESC;

use house ;
SELECT
name,
count( name)
FROM customers
GROUP BY name;
   
use house ;
SELECT * from customers
WHERE customer_id in (2,4,6,8) 
ORDER BY customer_id DESC;

SELECT 
email 
from customers 
where email like "t%";

####################################
use house ; 
with abc as (
SELECT 
total_amount , 
DENSE_RANK() over(ORDER BY order_id ) as rankv
from orders )
SELECT
total_amount 
from abc 
where rankv = 2 ; 

# the values is here 
SELECT
*
from
(
SELECT total_amount  , 
DENSE_RANK() over(ORDER BY order_id ) as rankvalues 
FROM orders
)t
WHERE rankvalues = 2  or rankvalues = 4; 


# use of the values  use house tables 
use house ;
select * FROM customers ;
   
############## practice for the interview bro 
use house ;
SELECT * from orders; 

# case topic here 
SELECT 
case
WHEN customer_id > 500 THEN "Greater "
else "Smaller"
end as New_column  ,
count(*) as abc_values 
FROM 
orders
GROUP BY
New_column  ; 
use house ;
SELECT * FROM customers ;
SELECT * from orders ;

# Everyhere is the valaues is that to understand how the values that to understand bri 
SELECT name  
FROM (
SELECT  
name  , 
email
FROM customers
) t
where name = "Valerie Hill" ;  

# here is the coding that i am doing bro i you life is all about the coding that you want to change the problem of ypue=r you have to do tat no one can come solve your problems that no think in the deep how actuall doing and better to understam 

# most of the problems that u are solving that need to solve bri 
use house ; 
SELECT * from  customers ; 
# we are understanding how to solve the varibale

select 
DISTINCT country    # we you want to know that uniques values that time you need to  understand the values is use here 
from 
customers ; 

# same as here use of the not values 
SELECT * FROM customers 
where not country = "Afghanistan" ;  # this has return the value that has return the hwer country is equal to the county = "Afghanistand "

# that need to understand how much values is asking that you need to understand how the no and or and any otehr values is working here need to understand just deep into the a lot of thing that need to understand high varible that understand . 

use house ;
select * from customers limit 10 ; 
SELECT 
name , 
email , 
country ,
count(email) over(PARTITION BY country  ) as values_counts
From 
customers ; 
use house ; 
SELECT * from customers ;
SELECT
name , 
country , 
DENSE_RANK() over( PARTITION BY country ORDER  BY name) as rank_value 
From 
customers ;
SELECT * from orders LIMIT 3 ; 
SELECT
max(total_amount) as max_values 
FROM 
orders
where total_amount < (SELECT max(total_amount) from orders ) ;
use house ; 
SELECT * FROM orders LIMIT 5 OFFSET 3  ;

select * from customers ; 
select 
country  , 
count(*) as count_values 
from customers 
GROUP BY country 
ORDER BY country ; 

# this is where place you atualy need to understand 

use house ; 
SELECT * from customers ; 

UPDATE customers
set name = "Ashish"
where customer_id = 1 ;  # suppode there is the setting not allowing me to do 

# DELETE from the table that 
DELETE FROM customers where customer_id = 1 ; # this is not allowing the same things that bro 

with abc as (
select 
name , email
From  customers 
)
SELECT name 
From abc ;

# The problems is that Recursive operator
with recursive abc as
(
SELECT 1 as n   # that is the base query bro got it  start from here bro 
UNION all
SELECT n+1 from abc  # that is the recursive 
WHERE n < 3 # ckeck the condition unless false the condition bro 
) ; 

use house ; 
select * from customers ; 
SELECT 
name , 
count(name) as number_of_peoples 
from customers 
GROUP BY name 
HAVING count(name)  = 2 and name = "Sara Lopez" ;  

# if the talk about the value is that 

SELECT 
*
FROM (    # the actualy means of that the value is that to understand 
SELECT
name  , 
country
from  customers 
where name like "%S" 

) as abc ; 

SELECT ASCII("B") AS ascii_code; 
# char 
SELECT char(65) as character_values  ; 

SELECT CAST(CHAR(65) AS CHAR) AS character_value;
# that is also the character values is here bro need to understand 

SELECT concat_ws("-" , name  , country  , 3 ) as full_name 
from  customers limit 3 ; 
use house ; 
SELECT * from  orders limit 2 ;

SELECT 
customer_id , 
total_Amount 
from orders 
WHERE customer_id > 100 
ORDER BY customer_id asc ; 

SELECT * from orders ; 
SELECT 
* , 
ROW_NUMBER() over() as rank_values
From 
orders ; 

use house ; 
SELECT * from orders ; 
SELECT 
round(sum(total_amount),2) as total_amount , 
customer_id    
from orders      # there is the problems of the the group by comes in the window functions here bro 
GROUP BY  customer_id ;

SELECT *from customers limit 4 ;  
SELECT 
customer_id , 
name , 
Lead(customer_id) over(order by customer_id asc ) as valu # order is tye verty important bro that 
from customers ; 

# what is the differnce between the lag and lead bro 
with abc as (
select 
customer_id , 
name  , 
lead(customer_id) over() as rank_values # this help to understand the what is the previus values of the 1 - 0 2 is 1 bro u need to understand 

from customers 
)
SELECT 
 customer_id 
 from abc 
 where customer_id is not  null ; 
 
 use house ; 
 SELECT * from orders limit 4 ; 
 
SELECT 
 order_id , 
 customer_id ,
 coalesce(
 lag(customer_id) over(order by  order_id asc)  , -1 
 ) as values_
 From orders ; 
 
 # understanding the rows number in detail bro 
with abc as ( 
select
 name , 
 country , 
 Row_number() over() as rows_count 
 from 
 customers 
 ) 
 # that is here values 
 SELECT 
 rows_count ,
 case 
 when rows_count%2 = 0 then rows_count+1 
 else rows_count 
 
 end as new_count_values 
 from 
 abc ;
                    ######################################
 use house ; 
 
select * from customers ; 

select 
name , 
email 
from 
customers 
GROUP BY country ;  
use house ; 
SELECT * from customers ;  
select 
name 
from customers 
where name in (Select name from customers);
use house ; 
select 
name , 
email 
from customers 
where country in ("Norway") ;
###########3
select 
DISTINCT email , 
name         # when this values is that know ro understand that the values is always 
From customers ;
SELECT * from orders ;

select 
distinct order_date , # infront of this gives the that values is the uniques bri   # give the values of thevalues that is the uniques values is that is ude of the values of ashish h
total_amount 
from 
orders ;
# always rember that the value is chnaging that 

use house ; 
SELECT * from customers 
where country = "Norway" 
limit 4 ; 
select 
country , 
count(*) as count_vakues 
from customers 
GROUP BY country 
order by count(*) desc ;
use house ; 
SELECT * from customers ;
SELECT 
coalesce(name , 0)  as name  , 
email , 
lead(name ) over() as  previous_values 
From customers ; 

use house ; 
SELECT * from orders ; 
use house ;
select *from orders ; 

use house ; 
 
SELECT * from orders; 
 
 SELECT 
    order_id,
    order_date,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY order_date
        RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
    ) AS moving_avg_7days
FROM orders
ORDER BY order_date;
use  house ; 
select * from  orders ; 

SELECT 
order_id  ,
Lag(customer_id) over(ORDER BY order_id ) as count_values 
from orders  ;

use house ; 
select * from customers ; 
select 
country , 
name ,
email , 
count(country) OVER(PARTITION BY country) as count_values 
from customers ; 


use abc ; 
select * from superstore  where ship_mode = "Standard Class"  
HAVING Segment = "Consumer" ; 
# be handle as well to  make the values good and bad for you to blogs and picture writting as well make the decision  as to make the trouble to has the values has to undertand tha bettter ways to dealing witn is has 
use house ; 
SELECT * from orders ; 
SELECT max(total_amount) FROM orders where total_amount < (SELECT max(total_amount) from orders) ; 



















 
   
   
 
 
 
 
 
 