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