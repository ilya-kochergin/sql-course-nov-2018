 accept myteamid number prompt "vvedite nomer otdela: "
 select  teamid,lastname  from members
 where teamid = &&myteamid;
 
  select  *  from teams
 where teamid = &myteamid;
 undefine myteamid
 
 
 variable g_memberid number 
 
 variable g_lastname varchar2(30) ;
 
 begin
    :g_lastname  :=  'Zona' ;
 end;
 /
 
 print
 
set autoprint on 
 begin
    SELECT memberid into :g_memberid 
    FROM members 
    where lastname = :g_lastname ;
 end;
 /
 
 
 help index
 
 help input
 
 
 
 connect company0/123@192.168.211.102/xepdb1 
 select user from dual ;
 
 
select user from dual ;
 show user
 
 
 
 oerr ora-1571
 
 help START
 
 
 select sysdate from dual ;
 
 
 
 
 
 select teamid, sum(salary) 
 from members
 where firedate is null 
 group by teamid
 having sum(SALARY)>100000
 order by sum(salary) desc  ;
 
 
  SELECT MEMBERS.*,SALARY*1.1 FROM MEMBERS;

 

SELECT /*CSV*/ *
FROM MEMBERS   -- TABLE SPECIFIED  
WHERE FIREDATE IS NOT NULL ;
 
SELECT *
FROM MEMBERS 
WHERE FIREDATE IS NULL ;
 
 
 SELECT SALARY, BONUS, SALARY+ NVL(BONUS,0)  TOTAL_INCOME
 FROM MEMBERS; 
 
 SELECT SALARY, BONUS, COALESCE(BONUS, SALARY, 10000)   INCOME
 FROM MEMBERS; 
 
 SELECT LASTNAME , SALARY, BONUS, LASTNAME || BONUS
 FROM MEMBERS ;
 
 SELECT LASTNAME , SALARY, BONUS, CONCAT(LASTNAME , BONUS)
 FROM MEMBERS ;
 
 
 
 
 SELECT 'I can''t sweam' from dual;
 
 SELECT q'!I can't sweam in mother's swim suit!' from dual;
 
 
SELECT q'(I can't sweam in mother's swim suit)' from dual;

select to_char(sysdate, 'month' , 'nls_date_language=''ukrainian''') from dual; 
select to_char(sysdate, 'month' , q'!nls_date_language='ukrainian'!') from dual;


select 'first line
second line
third line' from dual ;



select distinct salary , teamid from members; 
select unique salary , teamid from members; 
select all salary , teamid from members; 


 SELECT mem.LastName FROM members mem
WHERE mem.Gender = 'F';
