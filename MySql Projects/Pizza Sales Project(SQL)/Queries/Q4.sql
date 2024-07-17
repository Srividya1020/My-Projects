# Identify the most common pizza size ordered.

select * from order_details;
select * from pizzas;

select quantity, count(order_details_id) from order_details
group by quantity;

SELECT 
    size,
    COUNT(order_details.order_details_id) AS order_count,
    pizza_types.name
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizzas.size , pizza_types.name
ORDER BY order_count DESC
#

