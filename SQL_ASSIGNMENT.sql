
SQL*Plus: Release 11.2.0.2.0 Production on Fri Jul 17 08:56:19 2026

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> CONN SCOTT/TIGER
Connected.
SQL> SELECT DNO , COUNT(*)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT('CLERK')>2;
SELECT DNO , COUNT(*)
       *
ERROR at line 1:
ORA-00904: "DNO": invalid identifier


SQL> SELECT * FROM EMP
  2  ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7839 KING       PRESIDENT            17-NOV-81       5000
        10


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


14 rows selected.

SQL> SET PAGES LINES 100
SP2-0268: pagesize option not a valid number
SQL> SET PAGE 100 LINE 100
SP2-0158: unknown SET option "PAGE"
SQL> SET PAGE LIME 100
SP2-0158: unknown SET option "PAGE"
SQL> SELECT DEPTNO , COUNT(*)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT('CLERK')>2;

    DEPTNO   COUNT(*)
---------- ----------
        30          6
        20          5
        10          3

SQL> SELECT DEPTNO , SUM(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT(*)>4;

    DEPTNO   SUM(SAL)
---------- ----------
        30       9400
        20      10875

SQL> SELECT COUNT(*) , SUM(sAL)
  2  FROM EMO
  3  ;
FROM EMO
     *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL> SELECT COUNT(*) , SUM(sAL)
  2  FROM EMP
  3  ;

  COUNT(*)   SUM(SAL)
---------- ----------
        14      29025

SQL> SELECT COUNT(*) , SUM(sAL), JOB
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING SAL>1000 AND SUM(SAL)>3800;
HAVING SAL>1000 AND SUM(SAL)>3800
       *
ERROR at line 4:
ORA-00979: not a GROUP BY expression


SQL> SELECT COUNT(*) , SUM(sAL), JOB
  2  FROM EMP
  3  ;
SELECT COUNT(*) , SUM(sAL), JOB
                            *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> SELECT DEPTNO , COUNT(*)
  2  FROM EMP
  3  GROUPBY DEPTNO
  4  HAVING COUNT('MANAGER')>2;
GROUPBY DEPTNO
        *
ERROR at line 3:
ORA-00933: SQL command not properly ended


SQL> SELECT DEPTNO , COUNT(*)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT('MANAGER')>2;

    DEPTNO   COUNT(*)
---------- ----------
        30          6
        20          5
        10          3

SQL> SELECT JOB , MAXX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MAX(SAL) > 2600;
SELECT JOB , MAXX(SAL)
             *
ERROR at line 1:
ORA-00904: "MAXX": invalid identifier


SQL> SELECT JOB , MAX(SAL))
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MAX(SAL) > 2600;
SELECT JOB , MAX(SAL))
                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> SELECT JOB , MAXX(SAL)
  2  ;

*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected


SQL> SELECT JOB , MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MAX(SAL)>2600;

JOB         MAX(SAL)
--------- ----------
PRESIDENT       5000
MANAGER         2975
ANALYST         3000

SQL> SELECT SAL
  2  FROM EMP
  3  HAVING COUNT(SAL)>2;
SELECT SAL
       *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> SELECT HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE
  4  ;

*
ERROR at line 4:
ORA-00920: invalid relational operator


SQL> SELECT AVG(SAL_
  2  ;

*
ERROR at line 2:
ORA-00907: missing right parenthesis


SQL> SELECT AVG(SAL)
  2  FROM EMP
  3  ;

  AVG(SAL)
----------
2073.21429

SQL> SELECT DEPTNO , AVG(sAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING AVG(SAL)<3000;

    DEPTNO   AVG(SAL)
---------- ----------
        30 1566.66667
        20       2175
        10 2916.66667

SQL> SELECT EMPNO
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  ;
SELECT EMPNO
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT EMPNO
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO;
SELECT EMPNO
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT DEPTNO , ENAME , COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY COUNT(*)>3;
GROUP BY COUNT(*)>3
         *
ERROR at line 5:
ORA-00934: group function is not allowed here


SQL> SELECT DEPTNO , ENAME , COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO
  6  HAVING COUNT(*) >> 3;
HAVING COUNT(*) >> 3
                 *
ERROR at line 6:
ORA-00936: missing expression


SQL> SELECT DEPTNO , ENAME , COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO
  6  HAVING COUNT(*) > 3;
SELECT DEPTNO , ENAME , COUNT(*)
                *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT DEPTNO , ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4
SQL> SELECT DEPTNO , ENAME , COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO
  6  HAVING COUNT(*) > 3;
SELECT DEPTNO , ENAME , COUNT(*)
                *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT DEPTNO , ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO
  6  HAVING COUNT(*) > 3;
SELECT DEPTNO , ENAME
                *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT MAX(sAL) , MIN(SAL) , JOB
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MIN(SAL) > 1000
  5  AND HAVING MAX(sAL) <5000;
AND HAVING MAX(sAL) <5000
    *
ERROR at line 5:
ORA-00936: missing expression


SQL> SELECT MAX(sAL) , MIN(SAL) , JOB
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MIN(SAL) > 1000
  5  AND MAX(sAL) < 5000;

  MAX(SAL)   MIN(SAL) JOB
---------- ---------- ---------
      1600       1250 SALESMAN
      2975       2450 MANAGER
      3000       3000 ANALYST