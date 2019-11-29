# Bookmark Manager

Makers Academy Module 6 - [Databases](https://github.com/makersacademy/course/blob/master/apprenticeship_module_outlines.md#module-6-databases), afternoon challenge [Bookmark Manager](https://github.com/makersacademy/course/tree/master/bookmark_manager)

# User Stories
```
As a user
So that I can see my favourite websites
I would like to see a list of my bookmarks

As a user
So that I don't forget my favourite websites
I would like to add new bookmarks

As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager
```

#User Instruction
```
1) In the terminal open the psql repl -
psql postgres

2)Create a database
CREATE DATABASE bookmarks;

3)Check you have created the database
\l

4)Connect to the database
\c bookmarks

5)Create a table in the bookmarks database
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

6)Insert 

```
# Domain Model Diagram
![Domain Model](img/domain-model.jpg)
Click link to see what the domain model should look like [domain-model_2](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png)


***** Need to Elaborate more***********
Set up a database from scratch you will need to:
1.Connect to psql
2.Create the database using the psql command CREATE DATABASE bookmark_manager;
3.Connect to the database using the pqsl command \c bookmark_manager;
4.Run the query we have saved in the file 01_create_bookmarks_table.sql
