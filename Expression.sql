SQL> CONN SCOTT/TIGER
Connected.
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL > 2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

6 rows selected.

SQL> SELECT SAL , SAL *12
  2  FROM EMP
  3  ;

       SAL     SAL*12
---------- ----------
       800       9600
      1600      19200
      1250      15000
      2975      35700
      1250      15000
      2850      34200
      2450      29400
      3000      36000
      5000      60000
      1500      18000
      1100      13200
       950      11400
      3000      36000
      1300      15600

14 rows selected.

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL * 12 > 15000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

9 rows selected.

SQL> SELECT ENAME , SAL + 1000
  2  FROM EMP
  3  ;

ENAME        SAL+1000
---------- ----------
SMITH            1800
ALLEN            2600
WARD             2250
JONES            3975
MARTIN           2250
BLAKE            3850
CLARK            3450
SCOTT            4000
KING             6000
TURNER           2500
ADAMS            2100
JAMES            1950
FORD             4000
MILLER           2300

14 rows selected.

SQL> SELECT SAL * 12 * 0,10
  2
SQL> SELECT SAL * 12 * 0.10
  2  FROM EMP;

SAL*12*0.10
-----------
        960
       1920
       1500
       3570
       1500
       3420
       2940
       3600
       6000
       1800
       1320
       1140
       3600
       1560

14 rows selected.

SQL> SELECT *
  2  SAL
  3  SAL * 12 * 0.10
  4  FROM EMP;
SAL
*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected


SQL> SELECT *
  2  SAL * 12 * 0.10
  3  FROM EMP;
SAL * 12 * 0.10
*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected


SQL> SELECT ENAME , SAL
  2  SAL * 12 * 0.10
  3  FROM EMP;
SAL * 12 * 0.10
    *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected


SQL> SELECT ENAME , SAL
  2  SAL * 12
  3  FROM EMP;
SAL * 12
    *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected


SQL> SELECT ENAME , SAL , SAL*12*0.10
  2  FROM EMP;

ENAME             SAL SAL*12*0.10
---------- ---------- -----------
SMITH             800         960
ALLEN            1600        1920
WARD             1250        1500
JONES            2975        3570
MARTIN           1250        1500
BLAKE            2850        3420
CLARK            2450        2940
SCOTT            3000        3600
KING             5000        6000
TURNER           1500        1800
ADAMS            1100        1320
JAMES             950        1140
FORD             3000        3600
MILLER           1300        1560

14 rows selected.

SQL> SELECT ENAME , SAL , SAL +(SAL * 10/100)
  2  FROM EMP;

ENAME             SAL SAL+(SAL*10/100)
---------- ---------- ----------------
SMITH             800              880
ALLEN            1600             1760
WARD             1250             1375
JONES            2975           3272.5
MARTIN           1250             1375
BLAKE            2850             3135
CLARK            2450             2695
SCOTT            3000             3300
KING             5000             5500
TURNER           1500             1650
ADAMS            1100             1210
JAMES             950             1045
FORD             3000             3300
MILLER           1300             1430

14 rows selected.

SQL> SELECT ENAME , SAL , SAL * 1.10
  2  FROM EMP;

ENAME             SAL   SAL*1.10
---------- ---------- ----------
SMITH             800        880
ALLEN            1600       1760
WARD             1250       1375
JONES            2975     3272.5
MARTIN           1250       1375
BLAKE            2850       3135
CLARK            2450       2695
SCOTT            3000       3300
KING             5000       5500
TURNER           1500       1650
ADAMS            1100       1210
JAMES             950       1045
FORD             3000       3300
MILLER           1300       1430

14 rows selected.

SQL> SELECT ENAME , SAL , SAL - SAL * 12 * 0.3
  2  FROM EMP;

ENAME             SAL SAL-SAL*12*0.3
---------- ---------- --------------
SMITH             800          -2080
ALLEN            1600          -4160
WARD             1250          -3250
JONES            2975          -7735
MARTIN           1250          -3250
BLAKE            2850          -7410
CLARK            2450          -6370
SCOTT            3000          -7800
KING             5000         -13000
TURNER           1500          -3900
ADAMS            1100          -2860
JAMES             950          -2470
FORD             3000          -7800
MILLER           1300          -3380

14 rows selected.

SQL> SELECT ENAME , SAL , SAL*12 - (SAL * 12 * 0.3)
  2  FROM EMP;

ENAME             SAL SAL*12-(SAL*12*0.3)
---------- ---------- -------------------
SMITH             800                6720
ALLEN            1600               13440
WARD             1250               10500
JONES            2975               24990
MARTIN           1250               10500
BLAKE            2850               23940
CLARK            2450               20580
SCOTT            3000               25200
KING             5000               42000
TURNER           1500               12600
ADAMS            1100                9240
JAMES             950                7980
FORD             3000               25200
MILLER           1300               10920

14 rows selected.

SQL> SELECT ENAME , SAL*12 , SAL*12 - (SAL * 12 * 0.3)
  2  FROM EMP;

ENAME          SAL*12 SAL*12-(SAL*12*0.3)
---------- ---------- -------------------
SMITH            9600                6720
ALLEN           19200               13440
WARD            15000               10500
JONES           35700               24990
MARTIN          15000               10500
BLAKE           34200               23940
CLARK           29400               20580
SCOTT           36000               25200
KING            60000               42000
TURNER          18000               12600
ADAMS           13200                9240
JAMES           11400                7980
FORD            36000               25200
MILLER          15600               10920

14 rows selected.

SQL> SELECT ENAME , SAL*12 , SAL*12 - (SAL*12 - SAL*12*0.50) , SAL*12 +(SAL*12 + SAL *12 * 0.20)
  2  FROM EMP;

ENAME          SAL*12 SAL*12-(SAL*12-SAL*12*0.50) SAL*12+(SAL*12+SAL*12*0.20)
---------- ---------- --------------------------- ---------------------------
SMITH            9600                        4800                       21120
ALLEN           19200                        9600                       42240
WARD            15000                        7500                       33000
JONES           35700                       17850                       78540
MARTIN          15000                        7500                       33000
BLAKE           34200                       17100                       75240
CLARK           29400                       14700                       64680
SCOTT           36000                       18000                       79200
KING            60000                       30000                      132000
TURNER          18000                        9000                       39600
ADAMS           13200                        6600                       29040
JAMES           11400                        5700                       25080
FORD            36000                       18000                       79200
MILLER          15600                        7800                       34320

14 rows selected.