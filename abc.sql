DELIMITER //
create procedure abc(IN vid char(10),IN vname varchar(20),IN age int(10),
IN addr varchar(20),IN coid char(10),IN cid char(10))
begin
declare msg varchar(20);
if age>=18 then
insert into voter(vid,vname,age,addr,coid,cid) values (vid,vname,age,addr,coid,cid);
set msg="row inserted";
else
set msg="voter not eligible";
end if;
select msg;
end //
DELIMITER ;

