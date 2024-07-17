# Calculate the total revenue generated from pizza sales.
# formula: Revenue=Price per Unit×Quantity Sold
# We have quantity in order_details table
# We have Price in Pizzas table
# Lets use join to join these two tables and solve our problem
# SUM --> to calculate total sales 
# ROUND--> To round the decimal places 
# ON--> To which table we are joining the first table with.

select * from pizzas;
select * from order_details;

# Method 1
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;


# Method 2
SELECT 
    ROUND(SUM(pizzas.price * order_details.quantity),
            2) AS total_sales
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id;