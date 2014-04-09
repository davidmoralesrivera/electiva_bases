create table personas(
	id number(10),
	nombre varchar2(40),
	apellido varchar2(40),
	telefono varchar2(50),
	email varchar2(20)
)

insert into personas values (1,'David','Morales',123,'david@David');
insert into personas values (2,'Jhonatan','Guerrero',123,'guerre@guerre');
insert into personas values (3,'Sergio','Torrado',123,'sergio@sergio');
insert into personas values (4,'Carlos','Mancera',123,'carlos@carlos');
insert into personas values (5,'Sebastian','Gonzalez',123,'sebastian@sebastian');

select * from personas as of timestamp 
to_timestamp('09/04/2014 08:44:00','DD/MM/YYYY HH:MI:SS');

select ora_rowscn,nombre from personas;

#activar recycle bin
ALTER SESSION SET recyclebin = ON;

select * from recyclebin;

#vista de la sesion v$session puede que este bloqueada se accede de system
#select * from v$session;

#recuperar de recycle
#flashback table nombre_bin_en_recycle
flashback table "BIN$hS2Q78nTS3On4E8sjfn54A==$0" to before drop; 

#
desc flashback_transaction_query;

#
select * from flashback_transaction_query
where table_owner = 'DAVID';


#flashback query -> consultar


