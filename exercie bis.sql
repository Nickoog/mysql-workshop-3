SELECT MAX(accountId)
FROM AddressBook;

mysql> SELECT MAX(accountId) from AddressBook;
+----------------+
| MAX(accountId) |
+----------------+
|            100 |
+----------------+
1 row in set (0.00 sec)

SELECT MAX(addressBookId)
FROM Entry;

mysql> SELECT MAX(addressBookId)
    -> FROM Entry;
+--------------------+
| MAX(addressBookId) |
+--------------------+
|                110 |
+--------------------+
1 row in set (0.00 sec)

SELECT COUNT(*)
FROM Entry
WHERE subtype = "phone" AND contentLineOne LIKE '1_3%' OR contentLineOne LIKE "_3%";

mysql> SELECT COUNT(*)
    -> FROM Entry
    -> WHERE subtype = "phone" AND contentLineOne LIKE '1_3%' OR contentLineOne LIKE "_3%";
+----------+
| COUNT(*) |
+----------+
|      155 |
+----------+
1 row in set (0.01 sec)

SELECT COUNT(*)
FROM Entry
WHERE type = "home" AND subtype = "phone" AND contentLineOne NOT LIKE "%5%";

mysql> SELECT COUNT(*)
    -> FROM Entry
    -> WHERE type = "home" AND subtype = "phone" AND contentLineOne NOT LIKE "%5%";
+----------+
| COUNT(*) |
+----------+
|       76 |
+----------+
1 row in set (0.00 sec)

SELECT COUNT(*)
FROM Entry
WHERE type = "work" AND subtype = "phone" AND contentLineOne LIKE "1_%";

mysql> SELECT COUNT(*)
    -> FROM Entry
    -> WHERE type = "work" AND subtype = "phone" AND contentLineOne LIKE "1_%";
+----------+
| COUNT(*) |
+----------+
|       60 |
+----------+
1 row in set (0.00 sec)


