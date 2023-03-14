SELECT movies.title FROM movies JOIN ratings ON movies.id = ratings.movie_id WHERE movies.id IN (SELECT movie_id FROM stars WHERE person_id IN (SELECT id FROM people WHERE name = "Chadwick Boseman")) ORDER BY ratings.rating DESC LIMIT 5;

/*
In 11.sql, write a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.
Your query should output a table with a single column for the title of each movie.
You may assume that there is only one person in the database with the name Chadwick Boseman.

+--------------------------+
|          title           |
+--------------------------+
| 42                       |
| Black Panther            |
| Get on Up                |
| Marshall                 |
| Ma Rainey's Black Bottom |

+----------+--------+
| movie_id | rating |
+----------+--------+
| 453562   | 7.5    |
| 1825683  | 7.3    |
| 5301662  | 7.3    |
| 10514222 | 6.9    |
| 2473602  | 6.9    |
+----------+--------+
*/

/*
These are 5 top rated movies:
SELECT title FROM movies WHERE id IN (SELECT movie_id FROM ratings ORDER BY rating DESC LIMIT 5);
*/