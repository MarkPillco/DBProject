MariaDB [(none)]> use mpillco;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mpillco]> show tables;
+-------------------+
| Tables_in_mpillco |
+-------------------+
| Albums_have       |
| Books             |
| Enrolled          |
| Olympics_Host     |
| Phone             |
| Producers         |
| Sessions          |
| Students          |
| author            |
| books             |
| borrow            |
| charged           |
| countries         |
| headed_by         |
| hold              |
| librarian         |
| members           |
| sections          |
| written_by        |
+-------------------+
19 rows in set (0.00 sec)

MariaDB [mpillco]> ALTER TABLE Books
    -> RENAME TO Customers;
Query OK, 0 rows affected (0.11 sec)

MariaDB [mpillco]> show tables;
+-------------------+
| Tables_in_mpillco |
+-------------------+
| Albums_have       |
| Customers         |
| Enrolled          |
| Olympics_Host     |
| Phone             |
| Producers         |
| Sessions          |
| Students          |
| author            |
| books             |
| borrow            |
| charged           |
| countries         |
| headed_by         |
| hold              |
| librarian         |
| members           |
| sections          |
| written_by        |
+-------------------+
19 rows in set (0.01 sec)

MariaDB [mpillco]> insert into Customers
    -> values
    -> ("00001", "xxyy", "Tom Hunks", "12/1/1990", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Customers
    -> values
    -> ("00001", "xxyy", "Tom Hunks", "12/1/1990", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> show table Customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Customers' at line 1
MariaDB [mpillco]> drop table Customers;
Query OK, 0 rows affected (0.08 sec)

MariaDB [mpillco]> create table Customers (ID integer, Username char(30), Password char(30), Name char(30), DOB date, Gender char(1), email char(30), Address char(50), Phone_num char(30), Payment_Method char(30), primary key(ID));
Query OK, 0 rows affected (0.13 sec)

MariaDB [mpillco]> insert into Customers values ("00001", "xxyy", "Tom Hunks", "12/1/1990", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00001", "xxyy", "Tom Hunks", "12/1/1990", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, email, Address, Phone_num, Payment_Method) values ("00001", "xxyy", "0808", "Tom Hunks", "12/1/1990", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> drop table Customers;
Query OK, 0 rows affected (0.05 sec)

MariaDB [mpillco]> create table Customers
    -> (ID integer,
    -> Username char(30),
    -> Password char(30),
    -> Name char(30),
    -> DOB date,
    -> Gender char(1),
    -> Email char(30),
    -> Address char(50),
    -> Phone_num char(90),
    -> Payment_Method char(30),
    -> primary key(ID));
Query OK, 0 rows affected (0.09 sec)

MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00001", "xxyy", "0808", "Tom Hunks", "12/1/1990", "M", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
ERROR 1292 (22007): Incorrect date value: '12/1/1990' for column 'DOB' at row 1
MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method) values ("00001", "xxyy", "0808", "Tom Hunks", "1990/12/1", "M", "thunks@yahoo.com", "1100 Grand Road,New York,NY 10001", "212-400-0001 (Home),212-100-2222(Cell)", "Credit");
Query OK, 1 row affected (0.10 sec)

MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00002", "xzzz", "11223", "Tom Cruise", "1991/10/1", "M", "tcruise@yahoo.com", "441 East Fordham Road, Bronx, NY 10458", "718-817-3333 (Cell)", "Credit");
Query OK, 1 row affected (0.08 sec)

MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00003", "abcde", "xyz123", "Tina Fei", "1956/12/1", "F", "tfei11@yahoo.com", "442 Fordham Road, Bronx, NY 10458", "817-718-0001 (Work), 212-100-2234 (Cell)", "Debit");
Query OK, 1 row affected (0.01 sec)

MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00004", "iama", "34ii", "Rice Brown", "1970/12/1", "F", "rbrown1999@hotmail.com", "383 56th Street, New York, NY 10002", "212-0001-7788 (Cell)", "Credit");
Query OK, 1 row affected (0.01 sec)

MariaDB [mpillco]> create table Books
    -> (ISBN char(30),
    -> ;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
ERROR: No query specified

MariaDB [mpillco]> create table Books
    -> (ISBN char(30),
    -> Title char(50),
    -> Authors char(90),
    -> Year year,
    -> Publisher char(30),
    -> Section char(30),
    -> Inventory integer,
    -> primary key(ISBN));
Query OK, 0 rows affected (0.11 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Section, Inventory)
    -> values
    -> ("0-8053-1755-4", "Fundamentals of Database Systems, 3rd edition", "Ramez A. Elmasri and Shamkant Navathe", "2000", "Addison Wesley";;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
ERROR: No query specified

MariaDB [mpillco]> drop table Books;
Query OK, 0 rows affected (0.12 sec)

MariaDB [mpillco]> create table Books (ISBN char(30), Title char(50), Authors char(90), Year year, Publisher char(30), Price integer, Section char(30), Inventory integer, primary key(ISBN));
Query OK, 0 rows affected (0.09 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Section, Inventory) values ("0-8053-1755-4", "Fundamentals of Database Systems, 3rd edition", "Ramez A. Elmasri and Shamkant Navathe", "2000", "Addison Wesley", "100", "Sciences", "20");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory) values ("0-8053-1755-4", "Fundamentals of Database Systems, 3rd edition", "Ramez A. Elmasri and Shamkant Navathe", "2000", "Addison Wesley", "100", "Sciences", "20");
Query OK, 1 row affected (0.11 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Section, Inventory)
    -> values
    -> ("978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniques,
    "> ;;
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Section, Inventory) values ("978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniques, 3rd Edition, "Ian H. Witten, Eibe Frank, and Mark Hall", "2011", "Elsevier", "120", "Sciences", "25");
    "> ;
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Ian H. Witten, Eibe Frank, and Mark Hall", "2011", "Elsevier", "120", "Sciences"' at line 1
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory)
    -> values
    -> ("978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniques, 3rd Edition", "Ian H. Witten, Eibe Frank, and Mark Hall", "2011", "Elsevier", "120", "Sciences", "25");
ERROR 1406 (22001): Data too long for column 'Title' at row 1
MariaDB [mpillco]> ALTER TABLE Books
    -> Title char(90);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'char(90)' at line 2
MariaDB [mpillco]> drop table Books;
Query OK, 0 rows affected (0.08 sec)

MariaDB [mpillco]> create table Books (ISBN char(30), Title char(90), Authors char(90), Year year, Publisher char(30), Price integer, Section char(30), Inventory integer, primary key(ISBN));
Query OK, 0 rows affected (0.15 sec)

MariaDB [mpillco]> ("978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniques, 3rd Edition", "Ian H. Witten, Eibe Frank, and Mark Hall", "2011", "Elsevier", "120", "Sciences", "25");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniqu' at line 1
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory) values ("978-0-12-374856-0", "Data Mining, Practical Machine Learning Tools and Techniques, 3rd Edition", "Ian H. Witten, Eibe Frank, and Mark Hall", "2011", "Elsevier", "120", "Sciences", "25");
Query OK, 1 row affected (0.04 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory) values ("0-8053-1755-4", "Fundamentals of Database Systems, 3rd edition", "Ramez A. Elmasri and Shamkant Navathe", "2000", "Addison Wesley", "100", "Sciences", "20");
Query OK, 1 row affected (0.05 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory)
    -> values
    -> ("0-1153-2555-5", "Writing Skills", ";;
    "> ;";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory)
    -> values
    -> (
    -> ";
    "> ;";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 4
MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory)
    -> values
    -> ("0-1153-2555-5", "Writing Skills", "Matt Florence", "2010", "Addison Wesley", "30", "Arts", "10");
Query OK, 1 row affected (0.01 sec)

MariaDB [mpillco]> insert into Books (ISBN, Title, Authors, Year, Publisher, Price, Section, Inventory)
    -> values
    -> ("978-0-07-246563-1", "Database Management Systems, 3rd edition", "Raghu Ramakrishnan and Johannes Gehrke", "2003", "McGraw-Hill", "110", "Sciences", "15");
Query OK, 1 row affected (0.05 sec)

MariaDB [mpillco]> select * from Books;
+-------------------+---------------------------------------------------------------------------+------------------------------------------+------+----------------+-------+----------+-----------+
| ISBN              | Title                                                                     | Authors                                  | Year | Publisher      | Price | Section  | Inventory |
+-------------------+---------------------------------------------------------------------------+------------------------------------------+------+----------------+-------+----------+-----------+
| 0-1153-2555-5     | Writing Skills                                                            | Matt Florence                            | 2010 | Addison Wesley |    30 | Arts     |        10 |
| 0-8053-1755-4     | Fundamentals of Database Systems, 3rd edition                             | Ramez A. Elmasri and Shamkant Navathe    | 2000 | Addison Wesley |   100 | Sciences |        20 |
| 978-0-07-246563-1 | Database Management Systems, 3rd edition                                  | Raghu Ramakrishnan and Johannes Gehrke   | 2003 | McGraw-Hill    |   110 | Sciences |        15 |
| 978-0-12-374856-0 | Data Mining, Practical Machine Learning Tools and Techniques, 3rd Edition | Ian H. Witten, Eibe Frank, and Mark Hall | 2011 | Elsevier       |   120 | Sciences |        25 |
+-------------------+---------------------------------------------------------------------------+------------------------------------------+------+----------------+-------+----------+-----------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select * from Customers;
+----+----------+----------+------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
| ID | Username | Password | Name       | DOB        | Gender | Email                  | Address                                | Phone_num                                | Payment_Method |
+----+----------+----------+------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
|  1 | xxyy     | 0808     | Tom Hunks  | 1990-12-01 | M      | thunks@yahoo.com       | 1100 Grand Road,New York,NY 10001      | 212-400-0001 (Home),212-100-2222(Cell)   | Credit         |
|  2 | xzzz     | 11223    | Tom Cruise | 1991-10-01 | M      | tcruise@yahoo.com      | 441 East Fordham Road, Bronx, NY 10458 | 718-817-3333 (Cell)                      | Credit         |
|  3 | abcde    | xyz123   | Tina Fei   | 1956-12-01 | F      | tfei11@yahoo.com       | 442 Fordham Road, Bronx, NY 10458      | 817-718-0001 (Work), 212-100-2234 (Cell) | Debit          |
|  4 | iama     | 34ii     | Rice Brown | 1970-12-01 | F      | rbrown1999@hotmail.com | 383 56th Street, New York, NY 10002    | 212-0001-7788 (Cell)                     | Credit         |
+----+----------+----------+------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> create table Debit
    -> (ID integer,
    -> Card_num char(30),
    -> ;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
ERROR: No query specified

MariaDB [mpillco]> create table Debit
    -> (ID integer,
    -> Holder char(30),
    -> Card_num integer,
    -> Expiration char(30),
    -> Phone_num char(30),
    -> Bill_Add char(90),
    -> primary key(Card_num),
    -> foreign key(ID) references Customers(ID));
Query OK, 0 rows affected (0.07 sec)

MariaDB [mpillco]> insert into Debit
    -> values
    -> ("Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Debit(Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
ERROR 1265 (01000): Data truncated for column 'Card_num' at row 1
MariaDB [mpillco]> insert into Debit(Holder, Card_num, Expiration, Phone_num, Bill_Add) values ("00003","Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [mpillco]> insert into Debit(ID,Holder, Card_num, Expiration, Phone_num, Bill_Add) values ("00003","Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
ERROR 1265 (01000): Data truncated for column 'Card_num' at row 1
MariaDB [mpillco]> insert into Debit(ID, Holder, Card_num, Expiration, Phone_num, Bill_Add) values ("00003","Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
ERROR 1265 (01000): Data truncated for column 'Card_num' at row 1
MariaDB [mpillco]> drop table Debit;
Query OK, 0 rows affected (0.07 sec)

MariaDB [mpillco]> create table Debit (ID integer, Holder char(30), Card_num char(30), Expiration char(30), Phone_num char(30), Bill_Add char(90), primary key(Card_num), foreign key(ID) references Customers(ID));
Query OK, 0 rows affected (0.12 sec)

MariaDB [mpillco]> insert into Debit(ID, Holder, Card_num, Expiration, Phone_num, Bill_Add) values ("00003","Tina Fei", "1234 1234 5678 5678", "10/18", "817-718-0001", "442 Fordham Road, Bronx, NY10458");
Query OK, 1 row affected (0.05 sec)

MariaDB [mpillco]> create table Credit
    -> ;;
ERROR 1113 (42000): A table must have at least 1 column
ERROR: No query specified

MariaDB [mpillco]> create table Credit (ID integer, Holder char(30), Card_num char(30), Expiration char(30), Phone_num char(30), Bill_Add char(90), primary key(Card_num), foreign key(ID) references Customers(ID));
Query OK, 0 rows affected (0.06 sec)

MariaDB [mpillco]> insert into Credit(ID,Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("Tom Cruise", "2222 4444 5555 6666", "12/14", "718-817-3333", "441 East Fordham Road, Bronx, NY 10458"),
    -> ;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
ERROR: No query specified

MariaDB [mpillco]> insert into Credit(ID,Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("00001","Tom Cruise", "2222 4444 5555 6666", "12/14", "718-817-3333", "441 East Fordham Road, Bronx, NY 10458"),
    -> ("''
    "> ;
    "> ;
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 4
MariaDB [mpillco]> insert into Credit(ID,Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("00002","Tom Cruise", "2222 4444 5555 6666", "12/14", "718-817-3333", "441 East Fordham Road, Bronx, NY 10458"),
    -> ("00001","Tom Hunks", "9999 9999 8888 8888", "08/17", "212-400-0001", "1100 Grand Road, New York, NY 10001"),
    -> ("00004","Rice Brown","1122 3344 5566 7788", "1/16", "212-0001-7788", "38 56th Street, New York, NY 10002");
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [mpillco]> insert into Customers (ID, Username, Password, Name, DOB, Gender, Email, Address, Phone_num, Payment_Method)
    -> values
    -> ("00005", "lisaw", "8877", "Lisa Warren", "1972/12/1", "F", "lisawarren@gmail.com", "1 Fordham Road, Bronx, NY 10458", "212-300-1199 (Cell), 212-300-7777 (Home)", "Credit");
Query OK, 1 row affected (0.01 sec)

MariaDB [mpillco]> select *from Customers;
+----+----------+----------+-------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
| ID | Username | Password | Name        | DOB        | Gender | Email                  | Address                                | Phone_num                                | Payment_Method |
+----+----------+----------+-------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
|  1 | xxyy     | 0808     | Tom Hunks   | 1990-12-01 | M      | thunks@yahoo.com       | 1100 Grand Road,New York,NY 10001      | 212-400-0001 (Home),212-100-2222(Cell)   | Credit         |
|  2 | xzzz     | 11223    | Tom Cruise  | 1991-10-01 | M      | tcruise@yahoo.com      | 441 East Fordham Road, Bronx, NY 10458 | 718-817-3333 (Cell)                      | Credit         |
|  3 | abcde    | xyz123   | Tina Fei    | 1956-12-01 | F      | tfei11@yahoo.com       | 442 Fordham Road, Bronx, NY 10458      | 817-718-0001 (Work), 212-100-2234 (Cell) | Debit          |
|  4 | iama     | 34ii     | Rice Brown  | 1970-12-01 | F      | rbrown1999@hotmail.com | 383 56th Street, New York, NY 10002    | 212-0001-7788 (Cell)                     | Credit         |
|  5 | lisaw    | 8877     | Lisa Warren | 1972-12-01 | F      | lisawarren@gmail.com   | 1 Fordham Road, Bronx, NY 10458        | 212-300-1199 (Cell), 212-300-7777 (Home) | Credit         |
+----+----------+----------+-------------+------------+--------+------------------------+----------------------------------------+------------------------------------------+----------------+
5 rows in set (0.00 sec)

MariaDB [mpillco]> insert into Credit (ID, Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("00005","Rice Brown", "1122 3344 5566 7788", "1/16", "212-0001-7788", "38 56th Street, New York, NY 10002");
ERROR 1062 (23000): Duplicate entry '1122 3344 5566 7788' for key 'PRIMARY'
MariaDB [mpillco]> insert into Credit (ID, Holder, Card_num, Expiration, Phone_num, Bill_Add)
    -> values
    -> ("00005", "Lisa Warren", "1111 2222 3333 4444", "1/17", "212-300-1199", "1 Fordham Road, Bronx, NY 10458");
Query OK, 1 row affected (0.06 sec)

MariaDB [mpillco]> select *from Creditl
    -> ;
ERROR 1146 (42S02): Table 'mpillco.Creditl' doesn't exist
MariaDB [mpillco]> select* from Credit;
+------+-------------+---------------------+------------+---------------+----------------------------------------+
| ID   | Holder      | Card_num            | Expiration | Phone_num     | Bill_Add                               |
+------+-------------+---------------------+------------+---------------+----------------------------------------+
|    5 | Lisa Warren | 1111 2222 3333 4444 | 1/17       | 212-300-1199  | 1 Fordham Road, Bronx, NY 10458        |
|    4 | Rice Brown  | 1122 3344 5566 7788 | 1/16       | 212-0001-7788 | 38 56th Street, New York, NY 10002     |
|    2 | Tom Cruise  | 2222 4444 5555 6666 | 12/14      | 718-817-3333  | 441 East Fordham Road, Bronx, NY 10458 |
|    1 | Tom Hunks   | 9999 9999 8888 8888 | 08/17      | 212-400-0001  | 1100 Grand Road, New York, NY 10001    |
+------+-------------+---------------------+------------+---------------+----------------------------------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select * from Debit;
+------+----------+---------------------+------------+--------------+----------------------------------+
| ID   | Holder   | Card_num            | Expiration | Phone_num    | Bill_Add                         |
+------+----------+---------------------+------------+--------------+----------------------------------+
|    3 | Tina Fei | 1234 1234 5678 5678 | 10/18      | 817-718-0001 | 442 Fordham Road, Bronx, NY10458 |
+------+----------+---------------------+------------+--------------+----------------------------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> create table Bank_Acc
    -> (ID integer,
    -> Holder char(30),
    -> Acc_num char(30),
    -> Acc_Type char(30),
    -> Bank_name char(30),
    -> primary key(Acc_num),
    -> foreign key(ID) references Customers(ID));
Query OK, 0 rows affected (0.14 sec)

MariaDB [mpillco]> insert into Bank_Acc (ID, Holder, Acc_num, Acc_Type, Bank_Name)
    -> values
    -> ("00005","Lisa Warren","9922882","Checking","Chase"),
    -> ("00003","Tom Fei","12667","Checking","Capital One"),
    -> ("00001","Tom Hunks","1112223","Checking","Chase");
Query OK, 3 rows affected (0.08 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [mpillco]> select * from Bank_Acc;
+------+-------------+---------+----------+-------------+
| ID   | Holder      | Acc_num | Acc_Type | Bank_name   |
+------+-------------+---------+----------+-------------+
|    1 | Tom Hunks   | 1112223 | Checking | Chase       |
|    3 | Tom Fei     | 12667   | Checking | Capital One |
|    5 | Lisa Warren | 9922882 | Checking | Chase       |
+------+-------------+---------+----------+-------------+
3 rows in set (0.00 sec)

MariaDB [mpillco]> create table Shopping
    -> (ISBN char(30),
    -> ID integer,;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
ERROR: No query specified

MariaDB [mpillco]> create table Shopping
    -> (ID integer,
    -> ISBN char(30),
    -> Quantity integer,
    -> OrderID char(1),
    -> foreign key(ISBN) references Books(ISBN),
    -> foreign key(ID) references Customers(ID));
Query OK, 0 rows affected (0.15 sec)

MariaDB [mpillco]> insert into Shopping
    -> values
    -> (";;
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00001, "978-0-12-374856-0","1", "1"),
    "> ("00001, "978-0-07-246563-1","2", "1"),
    -> ("00001";;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '978-0-12-374856-0","1", "1"),
("00001, "978-0-07-246563-1","2", "1"),
("00001"' at line 3
ERROR: No query specified

MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00001", "978-0-12-374856-0","1", "1"),
    -> ("00001, "978-0-07-246563-1","2", "1"),
    "> ';
    "> ;'
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '978-0-07-246563-1","2", "1"),
';
;'
"' at line 4
MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00001","978-0-12-374856-0","00001","1","1"),
    -> ("00001","978-0-07-246563-1","2","1");;
ERROR 1136 (21S01): Column count doesn't match value count at row 1
ERROR: No query specified

MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00001","978-0-12-374856-0","1","1"),
    -> ("00001","978-0-07-246563-1","2","1"),
    -> ("00001","978-0-07-246563-1","1","1"),
    -> ("00002","978-0-12-374856-0","1","2"),
    -> ("00002","978-0-07-246563-1","1","2"),
    -> ("00002","0-1153-2555-5","1","2"),
    -> ("00003","978-0-12-374856-0","1","3"),
    -> ("00003","978-0-07-246563-1","1","3"),
    -> ("00003","0-1153-2555-5","1","3"),
    -> ("00003","0-8053-1755-4","1","3"),
    -> ("00004","978-0-12-374856-0","1","4");
Query OK, 11 rows affected (0.18 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00004","978-0-07-246563-1","1","4"),
    -> ("00004","0-1153-2555-5","2","4"),
    -> ("00004","0-8053-1755-4","1","4");
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [mpillco]> select *from Shopping;
+------+-------------------+----------+---------+
| ID   | ISBN              | Quantity | OrderID |
+------+-------------------+----------+---------+
|    1 | 978-0-12-374856-0 |        1 | 1       |
|    1 | 978-0-07-246563-1 |        2 | 1       |
|    1 | 978-0-07-246563-1 |        1 | 1       |
|    2 | 978-0-12-374856-0 |        1 | 2       |
|    2 | 978-0-07-246563-1 |        1 | 2       |
|    2 | 0-1153-2555-5     |        1 | 2       |
|    3 | 978-0-12-374856-0 |        1 | 3       |
|    3 | 978-0-07-246563-1 |        1 | 3       |
|    3 | 0-1153-2555-5     |        1 | 3       |
|    3 | 0-8053-1755-4     |        1 | 3       |
|    4 | 978-0-12-374856-0 |        1 | 4       |
|    4 | 978-0-07-246563-1 |        1 | 4       |
|    4 | 0-1153-2555-5     |        2 | 4       |
|    4 | 0-8053-1755-4     |        1 | 4       |
+------+-------------------+----------+---------+
14 rows in set (0.00 sec)

MariaDB [mpillco]> select distinct C.name
    -> from Customers C, Shopping S
    -> where C.ID not in( select distinct S.ID from Shopping S);
+-------------+
| name        |
+-------------+
| Lisa Warren |
+-------------+
1 row in set (0.01 sec)

MariaDB [mpillco]> select C.name
    -> from Customers C, Shopping S, Books B
    -> where C.ID = S.ID
    -> and B.ISBN=S.ISBN
    -> and B.Title= "Writing Skills";
+------------+
| name       |
+------------+
| Tom Cruise |
| Tina Fei   |
| Rice Brown |
+------------+
3 rows in set (0.00 sec)

MariaDB [mpillco]> insert into Shopping (ID, ISBN, Quantity, OrderID)
    -> values
    -> ("00001", "0-1153-2555-5", "1","1");
Query OK, 1 row affected (0.07 sec)

MariaDB [mpillco]> select C.name from Customers C, Shopping S, Books B where C.ID = S.ID and B.ISBN=S.ISBN and B.Title= "Writing Skills";
+------------+
| name       |
+------------+
| Tom Cruise |
| Tina Fei   |
| Rice Brown |
| Tom Hunks  |
+------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select C.name
    -> from Customers C, ShoppingCart S, Books B
    -> where C.ID=S.ID
    -> and B.ISBN=S.ISBN
    -> group by C.name
    -> having count(S.ISBN) >2;
ERROR 1146 (42S02): Table 'mpillco.ShoppingCart' doesn't exist
MariaDB [mpillco]> select C.name from Customers C, Shopping S, Books B where C.ID=S.ID and B.ISBN=S.ISBN group by C.name having count(S.ISBN) >2;
+------------+
| name       |
+------------+
| Rice Brown |
| Tina Fei   |
| Tom Cruise |
| Tom Hunks  |
+------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select B.title, sum(S.Quantity)
    -> from Books B, Shopping S
    -> where B.ISBN=S.ISBN
    -> group by S.ISBN
    -> order by count(distinct S.Quantity)
    -> desc limit 1;
+----------------+-----------------+
| title          | sum(S.Quantity) |
+----------------+-----------------+
| Writing Skills |               5 |
+----------------+-----------------+
1 row in set (0.05 sec)

MariaDB [mpillco]> select B.Title
    -> from Customers C, Shopping S, Books B
    -> where B.ISBN= S.ISBN
    -> and S.ID=C.ID
    -> and C.Gender= "F"
    -> group by S.ISBN
    -> order by(distinct S.Quantity)
    -> desc limit 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct S.Quantity)
desc limit 1' at line 7
MariaDB [mpillco]> select B.Title from Customers C, Shopping S, Books B where B.ISBN= S.ISBN and S.ID=C.ID and C.Gender= "F" group by S.ISBN order by count(distinct S.Quantity) desc limit 1;
+----------------+
| Title          |
+----------------+
| Writing Skills |
+----------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> select count(distinct S.ID)
    -> from Customers C, Shopping S
    -> where C.ID = S.ID
    -> and C.Payment_Method = "Credit";
+----------------------+
| count(distinct S.ID) |
+----------------------+
|                    3 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> delete from Shopping
    -> where ID="1"
    -> AND ;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
ERROR: No query specified

MariaDB [mpillco]> delete from Shopping s
    -> where s.ID="1"
    -> and s.ISBN= "978-0-07-246563-1"
    -> and s.quantity="1";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 's
where s.ID="1"
and s.ISBN= "978-0-07-246563-1"
and s.quantity="1"' at line 1
MariaDB [mpillco]> delete from Shopping where ID="1" and ISBN= "978-0-07-246563-1" and Quantity="1";
Query OK, 1 row affected (0.05 sec)

MariaDB [mpillco]> select count(distinct S.ID) from Customers C, Shopping S where C.ID = S.ID and C.Payment_Method = "Credit";
+----------------------+
| count(distinct S.ID) |
+----------------------+
|                    3 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> select * from Shopping;
+------+-------------------+----------+---------+
| ID   | ISBN              | Quantity | OrderID |
+------+-------------------+----------+---------+
|    1 | 978-0-12-374856-0 |        1 | 1       |
|    1 | 978-0-07-246563-1 |        2 | 1       |
|    2 | 978-0-12-374856-0 |        1 | 2       |
|    2 | 978-0-07-246563-1 |        1 | 2       |
|    2 | 0-1153-2555-5     |        1 | 2       |
|    3 | 978-0-12-374856-0 |        1 | 3       |
|    3 | 978-0-07-246563-1 |        1 | 3       |
|    3 | 0-1153-2555-5     |        1 | 3       |
|    3 | 0-8053-1755-4     |        1 | 3       |
|    4 | 978-0-12-374856-0 |        1 | 4       |
|    4 | 978-0-07-246563-1 |        1 | 4       |
|    4 | 0-1153-2555-5     |        2 | 4       |
|    4 | 0-8053-1755-4     |        1 | 4       |
|    1 | 0-1153-2555-5     |        1 | 1       |
+------+-------------------+----------+---------+
14 rows in set (0.00 sec)

MariaDB [mpillco]> select* from credit;
ERROR 1146 (42S02): Table 'mpillco.credit' doesn't exist
MariaDB [mpillco]> select* from Credit;
+------+-------------+---------------------+------------+---------------+----------------------------------------+
| ID   | Holder      | Card_num            | Expiration | Phone_num     | Bill_Add                               |
+------+-------------+---------------------+------------+---------------+----------------------------------------+
|    5 | Lisa Warren | 1111 2222 3333 4444 | 1/17       | 212-300-1199  | 1 Fordham Road, Bronx, NY 10458        |
|    4 | Rice Brown  | 1122 3344 5566 7788 | 1/16       | 212-0001-7788 | 38 56th Street, New York, NY 10002     |
|    2 | Tom Cruise  | 2222 4444 5555 6666 | 12/14      | 718-817-3333  | 441 East Fordham Road, Bronx, NY 10458 |
|    1 | Tom Hunks   | 9999 9999 8888 8888 | 08/17      | 212-400-0001  | 1100 Grand Road, New York, NY 10001    |
+------+-------------+---------------------+------------+---------------+----------------------------------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select C.Address
    -> from Customers C, ShoppingCart S
    -> ;;
ERROR 1146 (42S02): Table 'mpillco.ShoppingCart' doesn't exist
ERROR: No query specified

MariaDB [mpillco]> select C.Address
    -> from Customers C, Shopping S
    -> where S.ID=C.ID
    -> group by C.Address
    -> desc limit 1;
+-----------------------------------+
| Address                           |
+-----------------------------------+
| 442 Fordham Road, Bronx, NY 10458 |
+-----------------------------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> select C.name
    -> from Customers C, Shopping S, Books B
    -> where S.ID = C.ID
    -> and B.ISBN = S.ISBN
    -> group by C.name
    -> order by sum(B.Price*S.Quantity);
+------------+
| name       |
+------------+
| Tom Cruise |
| Tina Fei   |
| Tom Hunks  |
| Rice Brown |
+------------+
4 rows in set (0.00 sec)

MariaDB [mpillco]> select C.name from Customers C, Shopping S, Books B where S.ID = C.ID and B.ISBN = S.ISBN group by C.name order by sum(B.Price*S.Quantity) desc limit 1;
+------------+
| name       |
+------------+
| Rice Brown |
+------------+
1 row in set (0.00 sec)

MariaDB [mpillco]> notee;
