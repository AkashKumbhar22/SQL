
SQL> CONN SCOTT/TIGER
Connected.
SQL> SET PAGES 100 LINES 100;
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
  3  WHERE ENAME != 'ADAMS';

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
      7900 JAMES      CLERK           7698 03-DEC-81        950               30
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

13 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30

SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB != 'SALESMAN';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800               20
      7566 JONES      MANAGER         7839 02-APR-81       2975               20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000               20
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100               20
      7900 JAMES      CLERK           7698 03-DEC-81        950               30
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

10 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL * 12 > 7000 AND DEPTNO = 10 AND JOB = 'MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10

SQL> SELECT ENAME , HIREDATE , SAL
  2  FROM EMP
  3  WHERE HIREDATE > '01 - JAN - 1987 ' AND HIREDATE < '01 - JAN - 1990'
  4  AND SAL > 1200;

ENAME      HIREDATE         SAL
---------- --------- ----------
SCOTT      19-APR-87       3000

SQL> SELECT ENAME ,JOB,SAL
  2  FROM EMP
  3  WHERE JOB = 'MANAGER' AND DEPTNO = 10 AND HIREDATE > '01 - JAN - 1980' 
  4  AND HIREDATE < '01-DEC-1977' AND SAL > 2000 AND SAL < 5000;

no rows selected

SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO = 30 OR JOB = 'ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000               20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30
      7900 JAMES      CLERK           7698 03-DEC-81        950               30
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20

8 rows selected.

SQL>