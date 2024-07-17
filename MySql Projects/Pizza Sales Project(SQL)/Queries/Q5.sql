# List the top 5 most ordered pizza types along with their quantities.
#pizza types , quantities , no.of orders 
# Quantity is in order_details table
# Pizza types is in pizza _types table
# 

SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS pizza_quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY pizza_quantity DESC
LIMIT 5;
