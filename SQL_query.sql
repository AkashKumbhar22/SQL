SQL> CONN SCOTT/TIGER
Connected.
SQL> SET PAGES 100 LINES 100
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

SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME = 'SMITH';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800               20

SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL > 2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975               20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000               20
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20

6 rows selected.

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HORDEDATE > '31 - DEC - 80';
WHERE HORDEDATE > '31 - DEC - 80'
      *
ERROR at line 3:
ORA-00904: "HORDEDATE": invalid identifier


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIRDEDATE > '31 - DEC - 80';
WHERE HIRDEDATE > '31 - DEC - 80'
      *
ERROR at line 3:
ORA-00904: "HIRDEDATE": invalid identifier


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > '31 - DEC - 80';

ENAME
----------
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
SCOTT
KING
TURNER
ADAMS
JAMES
FORD
MILLER

13 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE > '31 - DEC - 80';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
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

13 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIRDEDATE < 1981;
WHERE HIRDEDATE < 1981
      *
ERROR at line 3:
ORA-00904: "HIRDEDATE": invalid identifier


SQL> SELECT *
  2  FROM EMP
  3  WHERE HIRDEDATE < '01-JAN-1980';
WHERE HIRDEDATE < '01-JAN-1980'
      *
ERROR at line 3:
ORA-00904: "HIRDEDATE": invalid identifier


SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE < '01-JAN-1980';

no rows selected

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE < '01-JAN-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800               20

SQL> SELECT *
  2  FROM EMP
  3  WHERE COMM = 1400;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE < '01-JAN-1987';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800               20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7566 JONES      MANAGER         7839 02-APR-81       2975               20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30
      7900 JAMES      CLERK           7698 03-DEC-81        950               30
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

12 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL > 2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975               20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000               20
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20

6 rows selected.

SQL> SELCT * FROM DEPT;
SP2-0734: unknown command beginning "SELCT * FR..." - rest of line ignored.
SQL> SELCT * FROM DEPT;
SP2-0734: unknown command beginning "SELCT * FR..." - rest of line ignored.
SQL> SELCT * FROM Dept;
SP2-0734: unknown command beginning "SELCT * FR..." - rest of line ignored.
SQL>