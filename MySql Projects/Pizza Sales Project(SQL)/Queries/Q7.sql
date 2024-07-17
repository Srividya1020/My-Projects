# Join the necessary tables to find the total quantity of each pizza category ordered.
# Quantity , Pizza category 
# Quantity is in order_details table & Category is in pizza_types table
# we dont have anything common to join these two tables
# we need a 3rd table which is pizzas which has pizza type id and pizza types aslo has pizzatype id column  and order_detals has pizza id

select pizza_types.category, sum(order_details.quantity) as total_quantity 
from pizza_types
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on pizzas.pizza_id = order_details.pizza_id
group by pizza_types.category 
order by total_quantity desc;




