create database escritorio;
use escritorio;

create table dept(   
  deptno     integer,   
  dname      varchar(14),   
  loc        varchar(13),   
  constraint pk_dept primary key (deptno)   
);

create table emp(   
  empno    integer,   
  ename    varchar(10),   
  job      varchar(9),   
  mgr      integer,   
  hiredate date,   
  sal      float,   
  comm     integer,   
  deptno   integer,   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
);

#Inserindo Dados tabela Dept
insert into DEPT (DEPTNO, DNAME, LOC) 
values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept   
values(20, 'RESEARCH', 'DALLAS');
insert into dept   
values(30, 'SALES', 'CHICAGO');
insert into dept  
values(40, 'OPERATIONS', 'BOSTON');

#Inserindo Dados Tabela Emp
insert into emp   
values(   
 7839, 'KING', 'PRESIDENT', null,   
 '1981-11-17',   
 5000, null, 10   
);
insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 '1981-1-5',  
 2850, null, 30  
);

insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 '1981-6-9',  
 2450, null, 10  
);
insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 '1981-4-2',  
 2975, null, 20  
);
insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 '1987-7-13',  
 3000, null, 20  
);
insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 '1981-12-3',  
 3000, null, 20  
);
insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 '1980-12-17',  
 800, null, 20  
);
insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 '1981-2-22',  
 1600, 300, 30  
);
insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
'1981-2-22',  
 1250, 500, 30  
);
insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
 '1981-9-28',  
 1250, 1400, 30  
);

insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 '1981-9-8',  
 1500, 0, 30  
);
insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 '1987-07-13',  
 1100, null, 20  
);
insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 '1981-12-3',  
 950, null, 30  
);
insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 '1982-1-23',  
 1300, null, 10  
);




-- trazer todos os campos --
SELECT * from dept;


SELECT * from emp;


-- selecionar as colunas, job da tabela emp -- 

Select ename, job from emp;

-- irá trazer valores distindos -- 
SELECT distinct job from emp;

-- selecionar todos que o sáçario for maior que 300 --

SELECT * from emp WHERE sal <1100;
-- selecionar tabelas ename, job e dptno os funcionários que 
-- tem como cargo clerk (atendente) --

Select ename, job,deptno
From emp
WHERE job="clerck";

-- selecionar nas tabelas ename, job os funcionários que 
-- tem com o salário menor ou igual que a comissão (comm)
SELECT ename, job, sal, comm
FROM emp
 WHERE sal<=comm;
 
 -- selecionar os funcionários que o salário entr[a entre 2500 e 3000 --
 SELECT ename, sal
 FROM emp
 WHERE sal between 2500 and 3000;
 -- EXERCICIOS --
 SELECT deptno, ename, sal from emp
 WHERE deptno=20;
 
 SELECT empno, ename, hiredate FROM emp WHERE ename="JAMES";
 
 SELECT empno, job, sal FROM emp WHERE job<>"MANAGER";
 
 SELECT empno, job, sal FROM emp WHERE job IN ("PRESIDENT", "ANALYST");
 -- EXERCICIOS END --
 
 -- operador like --
 SELECT * FROM emp WHERE ename LIKE "K%";
 
 SELECT * FROM emp WHERE ename like "__L%";

SELECT ename, job, sal, sal +500 FROM emp WHERE job="ANALYST";

SELECT ename, job, sal, 12*SAL +200 FROM emp;
SELECT ename, job, sal, 12*(SAL +200) FROM emp;

SELECT empno, ename, job, sal FROM emp WHERE sal >=1100 AND job= "clerk";

SELECT empno, ename, job, sal FROM emp WHERE sal >2500




