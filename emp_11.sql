create table orders(item_id varchar2(10), 
    				item_number number(3), 
    				customer varchar2(10), 
    				price number(4));

create table orders(item_id varchar2(10), 
    				item_number number(3), 
    				customer varchar2(10), 
    				price number(4));

insert into orders values('one', 101, 'saathwika',400);

create table orders(item_id varchar2(10), 
    				item_number number(3), 
    				customer varchar2(10), 
    				price number(4));

insert into orders values('one', 101, 'saathwika',400);

create table orders(item_id varchar2(10), 
    				item_number number(3), 
    				customer varchar2(10), 
    				price number(4));

insert into orders values('one', 101, 'saathwika',4000);

create table orders(item_id varchar2(10), 
    				item_number number(3), 
    				customer varchar2(10), 
    				price number(4));

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('two', 102, 'bhaskar',5000);

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('two', 102, 'bhaskar',5000);

insert into orders values('nin', 103, 'tanmayi',6000);

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('two', 102, 'bhaskar',5000);

insert into orders values('nin', 103, 'tanmayi',6000);

insert into orders values('one', 101, 'saathwika',4000);

insert into orders values('two', 102, 'bhaskar',5000);

insert into orders values('nin', 103, 'tanmayi',6000);

select * from orders;

select concat('saathwika', 'bhaskar') from dual;

select 'saathwika' || 'bhaskar' from dual;

select concat(item_name,'bhaskar') from orders;

select * from orders;

select concat(item_name,'bhaskar') from orders;

select * from orders;

select concat(item_id,'bhaskar') from orders;

select * from orders;

select concat(item_id,'bhaskar') from orders;

select * from orders;

select concat(item_id,'bhaskar') from orders;

select rpad('a',1, item_id) from orders;

select lpad('a',1, item_id) from orders;

select rpad('a',2, item_id) from orders;

select lpad('a',2, item_id) from orders;

select rpad('a',2, item_id) from orders;

select lpad('a',2, item_id) from orders;

select ltrim(item_id, 1) from orders;

select rtrim(item_id, 1) from orders;

select ltrim(item_id, 'o') from orders;

select rtrim(item_id, 'e') from orders;

select lower(item_id) from orders;

select upper(item_id) from orders;

select length(item_id) from orders;

select initcap(item_id) from orders;

select lower(item_id) from orders;

select upper(item_id) from orders;

select length(item_id) from orders;

select initcap(item_id) from orders;

select substr(item_id, 2, 3) from orders;

select substr(item_id, 'e', 1, 3) from orders;

select lower(item_id) from orders;

select upper(item_id) from orders;

select length(item_id) from orders;

select initcap(item_id) from orders;

select substr(item_id, 2, 3) from orders;

select instr(item_id, 'e', 1, 3) from orders;

select instr(item_id, 'e', 2, 3) from orders;

select instr(item_id, 'o', 2, 3) from orders;

create table employee(emp_id number(3), emp_name varchar2(10));

insert into employee values(101, 'saathwika');

insert into employee values(102, 'bhaskar');

insert into employee values(103, 'nani');

select * from employee;

DECLARE 
	name employee.emp_name%type; 
	id employee.emp_id%type; 
	cursor c_emp is select emp_name, emp_id from employee; 
BEGIN 
	open c_emp; 
	dbms_ouput.put_line('Name   ID'); 
	LOOP 
    	fetch c_emp into name, id; 
    	exit c_emp%notfound; 
    	dubms_output.put_line(name, '   ', id); 
	END LOOP; 
	CLOSE c_emp; 
END; 

/

DECLARE 
	name employee.emp_name%type; 
	id employee.emp_id%type; 
	cursor c_emp is select emp_name, emp_id from employee; 
BEGIN 
	open c_emp; 
	dbms_ouput.put_line('Name   ID'); 
	LOOP 
    	fetch c_emp into name, id; 
    	exit when c_emp%notfound; 
    	dubms_output.put_line(name, '   ', id); 
	END LOOP; 
	CLOSE c_emp; 
END; 

/

DECLARE 
	name employee.emp_name%type; 
	id employee.emp_id%type; 
	cursor c_emp is select emp_name, emp_id from employee; 
BEGIN 
	open c_emp; 
	dbms_ouput.put_line('Name   ID'); 
	LOOP 
    	fetch c_emp into name, id; 
    	exit when c_emp%notfound; 
    	dbms_output.put_line(name, '   ', id); 
	END LOOP; 
	CLOSE c_emp; 
END; 

/

DECLARE 
	name employee.emp_name%type; 
	id employee.emp_id%type; 
	cursor c_emp is select emp_name, emp_id from employee; 
BEGIN 
	open c_emp; 
	dbms_output.put_line('Name   ID'); 
	LOOP 
    	fetch c_emp into name, id; 
    	exit when c_emp%notfound; 
    	dbms_output.put_line(name, '   ', id); 
	END LOOP; 
	CLOSE c_emp; 
END; 

/

DECLARE 
	name employee.emp_name%type; 
	id employee.emp_id%type; 
	cursor c_emp is select emp_name, emp_id from employee; 
BEGIN 
	open c_emp; 
	dbms_output.put_line('Name   ID'); 
	LOOP 
    	fetch c_emp into name, id; 
    	exit when c_emp%notfound; 
    	dbms_output.put_line(name || '   ' || id); 
	END LOOP; 
	CLOSE c_emp; 
END; 

/

