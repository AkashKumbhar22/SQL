SQL> CONN SCOTT/TIGER
Connected.
SQL> SET PAGES 100 LINES 100
SQL> SELECT AVG(SAL)
  2  FROM EMP
  3  WHERE DEPTNO != 20
  4  GROUP BY DEPTNO;

  AVG(SAL)
----------
1566.66667
2916.66667

SQL> SELECT AVG(SAL)
  2  FROM EMP
  3  WHERE DEPTNO NOT IN 20
  4  GROUP BY DEPTNO;

  AVG(SAL)
----------
1566.66667
2916.66667

SQL> SELECT COUNT(*(
  2  ;
SELECT COUNT(*(
              *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE ENAMES LIKE '%A%'
  4  GROUP BY JOB;
WHERE ENAMES LIKE '%A%'
      *
ERROR at line 3:
ORA-00904: "ENAMES": invalid identifier


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  GROUP BY JOB;

  COUNT(*)
----------
         3
         2
         2

SQL> SELECT COUNT(*),JOB
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  GROUP BY JOB;

  COUNT(*) JOB
---------- ---------
         3 SALESMAN
         2 CLERK
         2 MANAGER

SQL> SELECT COUNT(*) , AVG(SAL)
  2  FROM EMP
  3  WHERE SAL > 2000
  4  GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)
---------- ----------
         1       2850
         3 2991.66667
         2       3725

SQL> SELECT COUNT(*) , AVG(SAL) , DEPTNO
  2  FROM EMP
  3  WHERE SAL > 2000
  4  GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)     DEPTNO
---------- ---------- ----------
         1       2850         30
         3 2991.66667         20
         2       3725         10

SQL> SELECT SUM(SAL) , COUNT(SALESMAN) , DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;
SELECT SUM(SAL) , COUNT(SALESMAN) , DEPTNO
                        *
ERROR at line 1:
ORA-00904: "SALESMAN": invalid identifier


SQL> SELECT SUM(SAL) , COUNT(JOB) , DEPTNO
  2  FROM EMP
  3  WHERE JOB = 'SALESMANS'
  4  GROUP BY DEPTNO;

no rows selected

SQL> SELECT SUM(SAL) , COUNT(*) , DEPTNO
  2  FROM EMP
  3  WHERE JOB = 'SALESMANS'
  4  GROUP BY DEPTNO;

no rows selected

SQL> SELECT SUM(SAL)
  2  FROM EMP
  3  WHERE JOB = 'SALESMANS'
  4  GROUP BY DEPTNO;

no rows selected

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800               20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7566 JONES      MANAGER         7839 02-APR-81       2975               20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000               20
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100               20
      7900 JAMES      CLERK           7698 03-DEC-81        950               30
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

14 rows selected.

SQL> SELECT SUM(SAL)
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  GROUP BY DEPTNO;

  SUM(SAL)
----------
      5600

SQL> SELECT SUM(SAL) , COUNT(*) , DEPTNO
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  GROUP BY DEPTNO;

  SUM(SAL)   COUNT(*)     DEPTNO
---------- ---------- ----------
      5600          4         30

SQL> SELECT SUM(SAL) , COUNT(JOB) , DEPTNO
  2  FROM EMP
  3  WHERE JOB = 'SALESMANS'
  4  ;
SELECT SUM(SAL) , COUNT(JOB) , DEPTNO
                               *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> SELECT SUM(SAL) , COUNT(JOB) , DEPTNO
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  GROUP BY DEPTNO;

  SUM(SAL) COUNT(JOB)     DEPTNO
---------- ---------- ----------
      5600          4         30

SQL> SELECT COUNT(*) , MAX(SAL)
  2  FROM EMP
  3  ;

  COUNT(*)   MAX(SAL)
---------- ----------
        14       5000

SQL> SELECT COUNT(*) , MAX(SAL) , JOB
  2  FROM EMP
  3  GROUP BY JOB;

  COUNT(*)   MAX(SAL) JOB
---------- ---------- ---------
         4       1300 CLERK
         4       1600 SALESMAN
         1       5000 PRESIDENT
         3       2975 MANAGER
         2       3000 ANALYST

SQL> SELECT MAX(sAL) , DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;

  MAX(SAL)     DEPTNO
---------- ----------
      2850         30
      3000         20
      5000         10

SQL> SELECT COUNT(SAL)
  2  FROM EMP;

COUNT(SAL)
----------
        14

SQL>