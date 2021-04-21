select REPLACE(FIRST_NAME,"a","A") FROM worker;
+-----------------------------+
| REPLACE(FIRST_NAME,"a","A") |
+-----------------------------+
| MonikA                      |
| NihArikA                    |
| VishAl                      |
| AmithAbh                    |
| vivek                       |
| vipul                       |
| sAthish                     |
| geethikA                    |
| Abin                        |
+-----------------------------+
9 rows in set (0.00 sec)

mysql> select CONCAT(FIRST_NAME,"-",LAST_NAME) AS COMPLEAT_NAME FROM worker;
+------------------+
| COMPLEAT_NAME    |
+------------------+
| Monika-Arora     |
| Niharika-verma   |
| Vishal-Singhal   |
| Amithabh-singh   |
| vivek-bhati      |
| vipul-Diwan      |
| sathish-kumar    |
| geethika-chauhan |
| abin-das         |
+------------------+
9 rows in set (0.00 sec)

mysql> 



mysql> USE ORGANIZATION1;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SELECT * FROM worker;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | vivek      | bhati     | 500000 | 2014-06-20 09:00:00 | Admin      |
|         6 | vipul      | Diwan     | 200000 | 2014-06-20 09:00:00 | Account    |
|         7 | sathish    | kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | geethika   | chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         9 | abin       | das       |  65000 | 2016-02-20 00:00:00 | sales      |
+-----------+------------+-----------+--------+---------------------+------------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM worker ORDER BY FIRST_NAME ASC;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         9 | abin       | das       |  65000 | 2016-02-20 00:00:00 | sales      |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | geethika   | chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         7 | sathish    | kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | vipul      | Diwan     | 200000 | 2014-06-20 09:00:00 | Account    |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         5 | vivek      | bhati     | 500000 | 2014-06-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE firstname IN ("abin","sathish");
ERROR 1054 (42S22): Unknown column 'firstname' in 'where clause'
mysql> SELECT * FROM worker WHERE FIRST_NAME IN ("abin","sathish");
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         7 | sathish    | kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         9 | abin       | das       |  65000 | 2016-02-20 00:00:00 | sales      |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME NOT IN ("vipul","sathish");
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | vivek      | bhati     | 500000 | 2014-06-20 09:00:00 | Admin      |
|         8 | geethika   | chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         9 | abin       | das       |  65000 | 2016-02-20 00:00:00 | sales      |
+-----------+------------+-----------+--------+---------------------+------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME IN ("Admin");
Empty set (0.00 sec)

mysql> SELECT * FROM worker WHERE DEPARTMENT IN ("Admin");
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | vivek      | bhati     | 500000 | 2014-06-20 09:00:00 | Admin      |
|         8 | geethika   | chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME LIKE "%a";
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         8 | geethika   | chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME LIKE "a";
Empty set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME LIKE "a%";
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         9 | abin       | das       |  65000 | 2016-02-20 00:00:00 | sales      |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE FIRST_NAME LIKE "N%a";
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         2 | Niharika   | verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
1 row in set (0.01 sec)

mysql> SELECT * FROM worker WHERE SALARY BETWEEN 100000 AND 500000;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | vivek      | bhati     | 500000 | 2014-06-20 09:00:00 | Admin      |
|         6 | vipul      | Diwan     | 200000 | 2014-06-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Worker WHERE year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;
ERROR 1146 (42S02): Table 'ORGANIZATION1.Worker' doesn't exist
mysql> SELECT * FROM worker WHERE year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amithabh   | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.01 sec)

mysql> 
