-- Project
-- Bookstore Sales & Inventory Analysis using SQL

use company;
select * from books;
select * from customers;
select * from orders;

-- 1) Retrieve all books in the "Fiction" genre
Select * from books
where Genre = "Fiction";


-- 2) Find books published after the year 1950
select * from books 
where published_year > "1950";


-- 3) List all customers from Canada
select * from customers
where Country = "Canada";


-- 4) Show orders placed in November 2023
select * from orders 
where Order_date between "2023-11-01" and "2023-11-30";


-- 5) Retrieve the total stock of books available
select sum(Stock) as total_stock from books;


-- 6) Find the details of the most expensive book
select * from books
order by price desc
limit 1;


-- 7) Show all customers who ordered more than 1 quantity of a book
select c.Name , o.Quantity
from customers c
join orders o
on c.customer_id = o.customer_id
where Quantity > 1;


-- 8) Retrieve all orders where the total amount exceeds $20
select * from books
where Price > 20;


-- 9) List all genres available in the Books table
select distinct(Genre) from books;


-- 10) Find the book with the lowest stock
select * from books 
where stock = (select min(Stock) from books);


-- 11) Calculate the total revenue generated from all orders
select round(sum(Total_amount),2) as total_revinue from orders;


-- 12) Retrieve the total number of books sold for each genre
select b.Genre , sum(o.Quantity) as sum_of_qty
from books b
join orders o
on b.book_ID = o.book_ID
group by b.Genre
order by sum_of_qty;


-- 13) Find the average price of books in the "Fantasy" genre
select round(avg(Price),2) as average_price from books
where Genre = "Fantasy";


-- 14) List customers who have placed at least 2 orders
select c.Name, count(o.Order_ID) as total_count
from orders o
join customers c
on c.Customer_ID = o.Customer_ID
group by c.Name
having total_count >= 2;


-- 15) Find the most frequently ordered book
select b.Title, count(o.Order_ID) as count_of_orders
from orders o
join Books b
on b.Book_ID = o.Book_ID
group by b.Title
order by count_of_orders desc
limit 1;


-- 16) Show the top 3 most expensive books of 'Fantasy' genre
select Title, max(Price) as Expensive_books from books
group by Title
order by Expensive_books desc
limit 3;


-- 17) Retrieve the total quantity of books sold by each author
select b.Author, sum(o.Quantity) as total_quantity_sold
from books b
join orders o
on b.Book_ID = o.Book_ID
group by b.Author;


-- 18) List the cities where customers who spent over $30 are located
select distinct(c.City), o.Total_Amount
from customers c
join orders o
on c.Customer_ID = o.Customer_ID
where Total_Amount > 30;


-- 8) Find the customer who spent the most on orders
select c.Name, round(sum(o.Total_Amount),2) as total_spends
from customers c
join orders o
on c.Customer_ID =o.Customer_ID
group by c.Name
order by total_spends desc
limit 1;


-- 9) Calculate the stock remaining after fulfilling all orders
Select b.Book_ID, b.Title, b.Stock, coalesce(sum(o.quantity),0) as order_qty,
b.Stock - coalesce(sum(o.quantity),0) as remaining_qty
from books b
left join orders o
on b.Book_ID = o.Book_ID
group by b.Book_ID, b.Title, b.Stock
order by b.Book_ID;

