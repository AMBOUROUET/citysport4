Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| citysport          |
| citysport1         |
| citysport2         |
| citysport3         |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
10 rows in set (0.76 sec)

mysql> create user gervais1@localhost identified by 'admin';
Query OK, 0 rows affected (2.22 sec)

mysql> grant all privileges on blog.* to gervais1@localhost;
Query OK, 0 rows affected (0.12 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.61 sec)


mysql> use citysport4;
Database changed
mysql> create table marques(
    -> id_marque INTEGER NOT NULL AUTO_INCREMENT,
    ->  nom_de_la_marque VARCHAR (100),
    ->  logo VARCHAR (100),
    ->  PRIMARY KEY (id_marque)
    -> ) ENGINE=Innodb DEFAULT CHARSET=utf8;
Query OK, 0 rows affected, 1 warning (0.68 sec)


mysql> create table chaussures(
    -> id_chaussures INTEGER NOT NULL AUTO_INCREMENT,
    -> couleur VARCHAR (100),
    -> taille VARCHAR (100),
    -> prix VARCHAR (100),
    -> PRIMARY KEY (id_chaussures)
    -> ) ENGINE=Innodb DEFAULT CHARSET=utf8;
Query OK, 0 rows affected, 1 warning (0.29 sec)


mysql> show tables;
+----------------------+
| Tables_in_citysport4 |
+----------------------+
| chaussures           |
| marques              |
+----------------------+
2 rows in set (0.00 sec)

mysql> desc chaussures;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id_chaussures | int          | NO   | PRI | NULL    | auto_increment |
| couleur       | varchar(100) | YES  |     | NULL    |                |
| taille        | varchar(100) | YES  |     | NULL    |                |
| prix          | varchar(100) | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)


mysql> insert into chaussures(id_chaussures, couleur, taille, prix)
    -> values (1, 'bleu', '45', '30000');
Query OK, 1 row affected (0.11 sec)

mysql> insert into chaussures(id_chaussures, couleur, taille, prix)
    -> values (2, 'jaune', '35', '20000');
Query OK, 1 row affected (0.13 sec)

mysql> insert into chaussures(id_chaussures, couleur, taille, prix)
    -> values (3, 'verte', '40', '25000');
Query OK, 1 row affected (0.04 sec)


mysql> select* from chaussures;
+---------------+---------+--------+-------+
| id_chaussures | couleur | taille | prix  |
+---------------+---------+--------+-------+
|             1 | bleu    | 45     | 30000 |
|             2 | jaune   | 35     | 20000 |
|             3 | verte   | 40     | 25000 |
+---------------+---------+--------+-------+
3 rows in set (0.00 sec)


mysql> desc marques;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_marque        | int          | NO   | PRI | NULL    | auto_increment |
| nom_de_la_marque | varchar(100) | YES  |     | NULL    |                |
| logo             | varchar(100) | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)


mysql> insert into marques (id_marque, nom_de_la_marque, logo)
    -> values (1, 'nike', 'nike');
Query OK, 1 row affected (0.11 sec)

mysql> insert into marques (id_marque, nom_de_la_marque, logo)
    -> values (2, 'adidas', 'adidas');
Query OK, 1 row affected (0.07 sec)

mysql> insert into marques (id_marque, nom_de_la_marque, logo)
    -> values (3, 'asics', 'asics');
Query OK, 1 row affected (0.02 sec)


mysql> select* from marques;
+-----------+------------------+--------+
| id_marque | nom_de_la_marque | logo   |
+-----------+------------------+--------+
|         1 | nike             | nike   |
|         2 | adidas           | adidas |
|         3 | asics            | asics  |
+-----------+------------------+--------+
3 rows in set (0.00 sec)



mysql> delete from marques where id_marque=2;
Query OK, 1 row affected (0.07 sec)

mysql> select* from marques;
+-----------+------------------+-------+
| id_marque | nom_de_la_marque | logo  |
+-----------+------------------+-------+
|         1 | nike             | nike  |
|         3 | asics            | asics |
+-----------+------------------+-------+
2 rows in set (0.00 sec)




mysql> select* from chaussures;
+---------------+---------+--------+-------+
| id_chaussures | couleur | taille | prix  |
+---------------+---------+--------+-------+
|             1 | bleu    | 45     | 30000 |
|             2 | jaune   | 35     | 20000 |
|             3 | verte   | 40     | 25000 |
+---------------+---------+--------+-------+
3 rows in set (0.00 sec)

mysql> delete from chaussures where id_chaussures=1;
Query OK, 1 row affected (0.03 sec)
