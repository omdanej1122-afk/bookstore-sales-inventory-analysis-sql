# bookstore-sales-inventory-analysis-sql

# Bookstore Sales & Inventory Analysis using SQL

I made this project to practice SQL on something that feels like a real business. It's a small online bookstore with books, customers and orders, and I wrote queries to answer 20 questions a store owner might actually ask. Which books are selling? Who are the best customers? How much stock is left after all the orders?

## What the project is about

The idea was simple: take the raw tables and turn them into answers. Along the way I looked at things like:

- which genres and authors sell the most
- which customers spend the most, and where they live
- which books are running low on stock
- how much revenue the store made
- how much stock is left once every order is fulfilled

## The tables

There are three tables in a MySQL database.

- **books** has Book_ID, Title, Author, Genre, Published_year, Price and Stock
- **customers** has Customer_ID, Name, City and Country
- **orders** has Order_ID, Customer_ID, Book_ID, Order_date, Quantity and Total_Amount

Orders connect to customers through Customer_ID and to books through Book_ID, so most of the interesting queries are joins between these tables.

## Questions I solved

I started with the basics and moved on to the harder ones.

**Basic**
1. Retrieve all books in the "Fiction" genre
2. Find books published after the year 1950
3. List all customers from Canada
4. Show orders placed in November 2023
5. Retrieve the total stock of books available
6. Find the details of the most expensive book
7. Show all customers who ordered more than 1 quantity of a book
8. Retrieve all orders where the total amount exceeds $20
9. List all genres available in the Books table
10. Find the book with the lowest stock
11. Calculate the total revenue generated from all orders

**Advanced**
12. Retrieve the total number of books sold for each genre
13. Find the average price of books in the "Fantasy" genre
14. List customers who have placed at least 2 orders
15. Find the most frequently ordered book
16. Show the top 3 most expensive books of the "Fantasy" genre
17. Retrieve the total quantity of books sold by each author
18. List the cities where customers who spent over $30 are located
19. Find the customer who spent the most on orders
20. Calculate the stock remaining after fulfilling all orders

## SQL topics I used

Filtering with WHERE, sorting and LIMIT, DISTINCT, inner and left joins, aggregate functions (SUM, AVG, COUNT, MIN, MAX), GROUP BY with HAVING, subqueries, and COALESCE and ROUND for cleaner results.

## How to run it

1. Open MySQL Workbench (or any MySQL client).
2. Create the three tables and load your data into them.
3. Open `Bookstore Sales & Inventory Analysis using SQL.sql`.
4. Run the queries one at a time and check the results.

## Files

- `Bookstore Sales & Inventory Analysis using SQL.sql` has all 20 queries
- `README.md` is this file

## About me

I'm Om Danej, a BCA graduate from Savitribai Phule Pune University, learning data analytics. Feedback on my queries is always welcome.
