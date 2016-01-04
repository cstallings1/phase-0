####Challeng 8.5 Release 2:
![One-to-one schema design](imgs/8.5.2.png "One-to-one")
I used to work in the wine industry so I used the example of wine brands as a one-to-one relationship. There are many wine brands out there and the most important attributes are the brand name and supplier. There is a long list of other attributes such as distributor, vintage, category, etc. but this information would often be NULL. Instead of having a lot of missing information in the brands table, I created a table for additional information where these attributes could go. This is a one-to-one relationship beause each entry in the additional_info table corresponds to one entry in the brands table.

####Challenge 8.5 Release 4:
![Many-to-many schema design](imgs/8.5.4.png "Many-to-many")

####Reflection:
1. What is a one-to-one database?
  A database in which the fields in one table have a pair in another table. An example is each state in the US has one capital city, this is a one-to-one relationship.
2. When would you use a one-to-one database? (Think generally, not in terms of the example you created).
  A good time to use this type of database is when you have a long list of attributes that may have a value of NULL. Instead of making a really large table with many NULL values, you could move the lesser used attributes to an entirely different table. You would then have a one-to-one relationship between these tables.
3. What is a many-to-many database?
  A database where you have relationships between multiple entries in one table to multiple entries in another table. An example would be teachers and courses. Teachers teach multiple courses and courses can be taught by different teachers. You would use a join table to link the teacher id and course id.
4. When would you use a many-to-many database? (Think generally, not in terms of the example you created).
  When you have multiple entries in a table that relate to many entries of another table, you would use a many-to-many database.
5. What is confusing about database schemas? What makes sense?
  I don't find it that confusing at this point, but I know that when talking about large databases these general concepts will be harder to understand. It just takes me a little time to really think through the relationship to determine what it is. The many-to-many and one-to-many relationships make the most sense to me because I can think of more instances where it would be necessary.