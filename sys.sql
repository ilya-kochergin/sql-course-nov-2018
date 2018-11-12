select systimestamp from dual ;


drop user "company0" ;

create user company0 identified by 123
default tablespace users 
quota 60m on users;

drop user "electronics0" ;

create user electronics0 identified by 123
default tablespace users 
quota 60m on users;

grant resource , connect, create view to electronics0, company0 ;

