
QL> SELECT 620 FROM EMP;

      620
---------
      620
      620
      620
      620
      620
      620
      620
      620
      620
      620
      620
      620
      620
      620

4 rows selected.

QL> SELECT 200  FROM EMP;

      200
---------
      200
      200
      200
      200
      200
      200
      200
      200
      200
      200
      200
      200
      200
      200

4 rows selected.

QL> SELECT 23-DEC-2023';
RROR:
RA-01756: quoted string not properly terminated


QL> SELECT '23-DEC-2023' FROM EMP;

23-DEC-202
----------
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023
3-DEC-2023

4 rows selected.

QL> SELECT 'HELLO' FROM DUAL;

HELL
----
ELLO

QL> SELECT 620 FROM DUAL;

      620
---------
      620

QL> ---DUAL EXAMPLE
QL> SELECT '20-DEC-23' FROM DUAL;

20-DEC-2
--------
0-DEC-23

QL> ---CONCATE OPERATOR
QL> 
QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME//SAL
 2  FROM EMP
 3  ;
ELECT ENAME//SAL
            *
RROR at line 1:
RA-00936: missing expression


QL> SELECT ENAME//SAL
 2  FROM EMP;
ELECT ENAME//SAL
            *
RROR at line 1:
RA-00936: missing expression


QL> SELECT ENAME||SAL
 2  FROM EMP;

NAME||SAL
-------------------------------------------------
MITH6000
LLEN1600
ARD1250
ONES6000
ARTIN1250
LAKE2850
LARK2450
COTT6000
ING5000
URNER1500
DAMS6000
AMES950
ORD6000
ILLER1300

4 rows selected.

QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT EMPNO||ENAME||COMM
 2  FROM EMP;

MPNO||ENAME||COMM
-----------------------------------------------------------------------------------------
369SMITH
499ALLEN300
521WARD500
566JONES
654MARTIN1400
698BLAKE
782CLARK
788SCOTT
839KING
844TURNER0
876ADAMS
900JAMES
902FORD
934MILLER

4 rows selected.

QL> SELECT 44||99 FROM EMP;

4||
---
499
499
499
499
499
499
499
499
499
499
499
499
499
499

4 rows selected.

QL> SELECT ENAME||'IS WORKING AS A'||JOB||'IN DEPT'||DEPTNO
 2  FROM EMP;

NAME||'ISWORKINGASA'||JOB||'INDEPT'||DEPTNO
--------------------------------------------------------------------------------
MITHIS WORKING AS ACLERKIN DEPT20
LLENIS WORKING AS ASALESMANIN DEPT30
ARDIS WORKING AS ASALESMANIN DEPT30
ONESIS WORKING AS AMANAGERIN DEPT20
ARTINIS WORKING AS ASALESMANIN DEPT30
LAKEIS WORKING AS AMANAGERIN DEPT30
LARKIS WORKING AS AMANAGERIN DEPT10
COTTIS WORKING AS AANALYSTIN DEPT20
INGIS WORKING AS APRESIDENTIN DEPT10
URNERIS WORKING AS ASALESMANIN DEPT30
DAMSIS WORKING AS ACLERKIN DEPT20
AMESIS WORKING AS ACLERKIN DEPT30
ORDIS WORKING AS AANALYSTIN DEPT20
ILLERIS WORKING AS ACLERKIN DEPT10

4 rows selected.

QL> SELECT* FROM DEPT
 2  ;

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK
       20 RESEARCH       DALLAS
       30 SALES          CHICAGO
       40 OPERATIONS     BOSTON

QL> SELECT DNAME||"IS WORKED IN ||LOC||' IN DEPT'||DEPTNO
 2  FROM DEPT;
RROR:
RA-01740: missing double quote in identifier


QL> SELECT DNAME||"IS WORKED IN'||LOC||'IN DEPT'||DEPTNO
 2  FROM DEPT;
RROR:
RA-01740: missing double quote in identifier


QL> SELECT DNAME||"IS WORKED AS A'||LOC||'INDEPT'||DEPTNO
 2  FROM DEPT;
RROR:
RA-01740: missing double quote in identifier


QL> SELECT DNAME||"IS WORKED AS A'||LOC||
 2  FROM DEPT;
RROR:
RA-01740: missing double quote in identifier


QL>  SELECT DNAME||"IS WORKED AS A'||LOC
 2   FROM DEPT;
RROR:
RA-01740: missing double quote in identifier


QL> SELECT DNAME||'IS WORKING IN A'||LOC||'INDEPT'||DEPTNO
 2  FROM EMP;
ELECT DNAME||'IS WORKING IN A'||LOC||'INDEPT'||DEPTNO
                                *
RROR at line 1:
RA-00904: "LOC": invalid identifier


QL> SELECT DEPTNO||DNAME||LOC
 2  FROM EMP;
ELECT DEPTNO||DNAME||LOC
                     *
RROR at line 1:
RA-00904: "LOC": invalid identifier


QL> select deptno||dname||loc
 2  from dept;

EPTNO||DNAME||LOC
------------------------------------------------------------------
0ACCOUNTINGNEW YORK
0RESEARCHDALLAS
0SALESCHICAGO
0OPERATIONSBOSTON

QL> select dname||'is working as'||loc||'indept'||deptno
 2  from dept;

NAME||'ISWORKINGAS'||LOC||'INDEPT'||DEPTNO
-------------------------------------------------------------------------------------
CCOUNTINGis working asNEW YORKindept10
ESEARCHis working asDALLASindept20
ALESis working asCHICAGOindept30
PERATIONSis working asBOSTONindept40

QL> --like operator
QL> 
QL> select * from emp
 2  where ename like 'a%';

o rows selected

QL> select * from emp;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> select * from emp
 2  where ename '____';
here ename '____'
           *
RROR at line 2:
RA-00920: invalid relational operator


QL> select * from emp
 2  where ename like '%a';

o rows selected

QL> select * from emp
 2  where ename like'%A%';

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30

 rows selected.

QL> select * from
 2  where loc like 'S%';
here loc like 'S%'

RROR at line 2:
RA-00903: invalid table name


QL> select * from emp
 2  where job like 's%';

o rows selected

QL> select * from emp
 2  where job like 'S%';

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

QL> select * from dept;

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK
       20 RESEARCH       DALLAS
       30 SALES          CHICAGO
       40 OPERATIONS     BOSTON

QL> select * from dept
 2  where dname like 'A%';

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK

QL> select * from emp;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> select * from emp
 2  where ename like '----';

o rows selected

QL> select * from emp
 2  where ename like '----%';

o rows selected

QL> select * from emp
 2  where ename like '%----%';

o rows selected

QL> select * from emp
 2  where job like 'M-----R';

o rows selected

QL> select * from emp
 2  where job like'M_R';

o rows selected

QL> SELECT * FROM EMP
 2  WHERE ENAME LIKE '____';

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20

QL> SELECT * FROM DEPT
 2  ;

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK
       20 RESEARCH       DALLAS
       30 SALES          CHICAGO
       40 OPERATIONS     BOSTON

QL> SELECT * FROM DEPT
 2  WHERE LOC LIKE 'N___Y__K';

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK

QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME, EMPNO ,SAL+(SAL*10/100),COMM*6
 2  FROM EMP 
 3  WHERE JOB LIKE'C%';

NAME           EMPNO SAL+(SAL*10/100)     COMM*6
--------- ---------- ---------------- ----------
MITH            7369             6600
DAMS            7876             6600
AMES            7900             1045
ILLER           7934             1430

QL> 
QL> 
QL> SAVE TEST.SQL
reated file TEST.SQL
QL> ---BETWEEN OPERATOR
QL> 
QL> SELECT * FROM EMP
 2  WHERE SAL BETWEEN 1500 TO 3000;
HERE SAL BETWEEN 1500 TO 3000
                      *
RROR at line 2:
RA-00905: missing keyword


QL> SELECT * FROM EMP
 2  WHERE SAL BETWEEN 1500 AND 3000;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

QL> SELECT ENAME,SAL,HIREDATE,COMM
 2  FROM EMP
 3  WHERE ENAME BETWEEN 'A' AND 'K';

NAME             SAL HIREDATE        COMM
--------- ---------- --------- ----------
LLEN            1600 20-FEB-81        300
ONES            6000 02-APR-81
LAKE            2850 01-MAY-81
LARK            2450 09-JUN-81
DAMS            6000 23-MAY-87
AMES             950 03-DEC-81
ORD             6000 03-DEC-81

 rows selected.

QL> SELECT ENAME,MGR,EMPNO,SAL+(SAL*2/100)
 2  FROM EMP
 3  WHERE DEPTNO BETWEEN 20 AND 30;

NAME             MGR      EMPNO SAL+(SAL*2/100)
--------- ---------- ---------- ---------------
MITH            7902       7369            6120
LLEN            7698       7499            1632
ARD             7698       7521            1275
ONES            7839       7566            6120
ARTIN           7698       7654            1275
LAKE            7839       7698            2907
COTT            7566       7788            6120
URNER           7698       7844            1530
DAMS            7788       7876            6120
AMES            7698       7900             969
ORD             7566       7902            6120

1 rows selected.

QL> SELECT * FROM EMP
 2  ;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME,JOB
 2  FROM EMP
 3  WHERE SAL BETWEEN 1000 AND 5000;

NAME      JOB
--------- ---------
LLEN      SALESMAN
ARD       SALESMAN
ARTIN     SALESMAN
LAKE      MANAGER
LARK      MANAGER
ING       PRESIDENT
URNER     SALESMAN
ILLER     CLERK

 rows selected.

QL> SELECT ENAME,EMPNO,JOB
 2  FROM EMP
 3  WHERE ENAME BETWEEN 'A' AND'S';

NAME           EMPNO JOB
--------- ---------- ---------
LLEN            7499 SALESMAN
ONES            7566 MANAGER
ARTIN           7654 SALESMAN
LAKE            7698 MANAGER
LARK            7782 MANAGER
ING             7839 PRESIDENT
DAMS            7876 CLERK
AMES            7900 CLERK
ORD             7902 ANALYST
ILLER           7934 CLERK

0 rows selected.

QL> SELECT * FROM EMP
 2  WHERER MGR IS NULL;
HERER MGR IS NULL
      *
RROR at line 2:
RA-00933: SQL command not properly ended


QL> SELECT * FROM EMP
 2  WHERE MGR IS NULL;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7839 KING       PRESIDENT            17-NOV-81       5000                    10

QL> SELECT * FROM EMP
 2  WHERE ENAME IS NOT NULL;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME, COMM,DEPTNO
 2  FROM EMP
 3  WHERE COMM IS NULL;

NAME            COMM     DEPTNO
--------- ---------- ----------
MITH                         20
ONES                         20
LAKE                         30
LARK                         10
COTT                         20
ING                          10
DAMS                         20
AMES                         30
ORD                          20
ILLER                        10

0 rows selected.

QL> SELECT ENAME,EMPNO,MGR
 2  FROM EMP
 3  WHERE DEPTNO=20 AND ENAME='SCOTT';

NAME           EMPNO        MGR
--------- ---------- ----------
COTT            7788       7566

QL> SELECT * FROM EMP
 2  WHERE MGR=7690 OR MGR=7698
 3  ;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30

QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME,EMPNO,JOB
 2  FROM EMP
 3  WHERE NOT JOB='ANALYST';

NAME           EMPNO JOB
--------- ---------- ---------
MITH            7369 CLERK
LLEN            7499 SALESMAN
ARD             7521 SALESMAN
ONES            7566 MANAGER
ARTIN           7654 SALESMAN
LAKE            7698 MANAGER
LARK            7782 MANAGER
ING             7839 PRESIDENT
URNER           7844 SALESMAN
DAMS            7876 CLERK
AMES            7900 CLERK
ILLER           7934 CLERK

2 rows selected.

QL> SELECT * FROM EMP
 2  WHERE NOT COMM=500;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

QL> SELECT* FROM SCOTT;
ELECT* FROM SCOTT
            *
RROR at line 1:
RA-00942: table or view does not exist


QL> SELECT * FROM TAB;

NAME                          TABTYPE  CLUSTERID
----------------------------- ------- ----------
EPT                           TABLE
MP                            TABLE
ONUS                          TABLE
ALGRADE                       TABLE
CICI_BANK                     TABLE
ANK                           TABLE
BI                            TABLE
OT_TABLE                      TABLE

 rows selected.

QL> SELECT * FROM SALGRADE;

    GRADE      LOSAL      HISAL
--------- ---------- ----------
        1        700       1200
        2       1201       1400
        3       1401       2000
        4       2001       3000
        5       3001       9999

QL> SELECT GRADE,LOSAL+(LOSAL*20/100),HISAL*6
 2  FROM SALGRADE
 3  WHERE GRADE=2 OR GRADE=5;

    GRADE LOSAL+(LOSAL*20/100)    HISAL*6
--------- -------------------- ----------
        2               1441.2       8400
        5               3601.2      59994

QL>  SELECT GRADE,LOSAL+(LOSAL*20/100),HISAL*6
 2   FROM SALGRADE;

    GRADE LOSAL+(LOSAL*20/100)    HISAL*6
--------- -------------------- ----------
        1                  840       7200
        2               1441.2       8400
        3               1681.2      12000
        4               2401.2      18000
        5               3601.2      59994

QL> SELECT * FROM SALGRADE 
 2  WHERE NOT LOSAL=700;

    GRADE      LOSAL      HISAL
--------- ---------- ----------
        2       1201       1400
        3       1401       2000
        4       2001       3000
        5       3001       9999

QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT ENAME,EMPNO,SAL
 2  FROM EMP
 3  WHERE NOT JOB IN('SALESMAN','ANALYST';
HERE NOT JOB IN('SALESMAN','ANALYST'
                                   *
RROR at line 3:
RA-00907: missing right parenthesis


QL> SELECT * FROM EMP
 2  WHERE JOB IN('CLERK','SALESMAN';
HERE JOB IN('CLERK','SALESMAN'
                             *
RROR at line 2:
RA-00907: missing right parenthesis


QL> SELECT * FROM EMP
 2  WHERE NOT JOB IN ('SALESMAN','MANAGER');

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

 rows selected.

QL> SELECT * FROM DEPT;

   DEPTNO DNAME          LOC
--------- -------------- -------------
       10 ACCOUNTING     NEW YORK
       20 RESEARCH       DALLAS
       30 SALES          CHICAGO
       40 OPERATIONS     BOSTON

QL> SELECT DNAME,DEPTNO
 2  FROM DEPT
 3  WHERE NOT LOC IN ('NEW YORK','DALLAS','CHICAGO');

NAME              DEPTNO
------------- ----------
PERATIONS             40

QL> SELECT DNAME,DEPTNO,
 2  FROM EMP
 3  WHERE DEPTNO IN (10,20);
ROM EMP

RROR at line 2:
RA-00936: missing expression


QL> SELECT DNAME,LOC
 2  FROM EMP
 3  WHERE DEPTNO IN(10,20);
ELECT DNAME,LOC
            *
RROR at line 1:
RA-00904: "LOC": invalid identifier


QL> 

QL> SELECT DNAME,LOC
 2  FROM DEPT
 3  WHERE DEPTNO IN(10,20);

NAME          LOC
------------- -------------
CCOUNTING     NEW YORK
ESEARCH       DALLAS

QL> SELECT * FROM EMP;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7369 SMITH      CLERK           7902 17-DEC-80       6000                    20
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7788 SCOTT      ANALYST         7566 19-APR-87       6000                    20
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

4 rows selected.

QL> SELECT * FROM EMP
 2  WHERE ENAME BETWEEN 'S' AND 'H';

o rows selected

QL> SE SELECT * FROM EMP
P2-0734: unknown command beginning "SE SELECT ..." - rest of line ignored.
QL> SELECT * FROM EMP
 2  WHERE ENAME BETWEEN 'A' AND 'N';

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
     7566 JONES      MANAGER         7839 02-APR-81       6000                    20
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
     7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
     7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
     7839 KING       PRESIDENT            17-NOV-81       5000                    10
     7876 ADAMS      CLERK           7788 23-MAY-87       6000                    20
     7900 JAMES      CLERK           7698 03-DEC-81        950                    30
     7902 FORD       ANALYST         7566 03-DEC-81       6000                    20
     7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

0 rows selected.

QL> select * from emp
 2  where ename like '(sal)%';

o rows selected

QL> select * from emp
 2  where ename like '[smp]%';

o rows selected

QL> select * from emp
 2  where job like '[smp]%';

o rows selected

QL> select * from emp
 2  where job like '[s]%';

o rows selected

QL> select * from emp
 2  where job like '[s-p]%;
RROR:
RA-01756: quoted string not properly terminated


QL> select * from emp
 2  where job like '[M-S]%';