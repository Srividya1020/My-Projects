# Determine the top 3 most ordered pizza types based on revenue.
# Revenue = Quantity * Price
# quantity is in order_details 
# price is in pizzas 
# we have pizza_id in common
# we want pizza name also 

SELECT 
    pizza_types.name AS pizza_name,
    SUM(pizzas.price * order_details.quantity) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_name
ORDER BY revenue DESC
LIMIT 3;