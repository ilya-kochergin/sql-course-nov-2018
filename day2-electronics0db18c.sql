info sys.standard


select  address, regexp_substr(address, '^\d+')
from customers;

select  address, regexp_substr(address, 'st\.',1,1,'i')
from customers;


select /*insert*/ * from customers;

Insert into CUSTOMERS (CUSTOMERID,NAME,ADDRESS,TELEPHONE,TYPE) values (204,'Hi Tech_Supply','50 Market Blvd, Oakland, CA','5103334444','Distributor');


alter session set nls_sort = GENERIC_M_CI ;
alter session set nls_comp = binary ;


select  name
from customers
where name like '%Tech\_%' escape '\'; 

select  name
from customers
where name like '%Tech\_%' ; 

select regexp_substr ( address, '^\d*\s+(.*?\ Blvd),',1,1,'c',1) from customers; 


select regexp_substr ( address, '^\d*    
\s+  
(.*?
\ Blvd),',1,1,'x',1) from customers; 




select regexp_replace( address, '^(\d+) ([^,]*),', 'ул. \2 дом \1') from customers;




--- ORDER BY


select lastname, bonus
from members 
order by bonus nulls first;



