#Determine the top 3 most ordered pizza types based on revenue for each pizza category.
# Wrote subqueries for this
# first calculates the data with revenue 
# second assigned rank
# thirdly based on rank calcukated the 3 most ordered pizzas



select names, revenue from
(select category, names,revenue, rank() 
over(partition by category order by revenue desc) as rn
from
(select pizza_types.category as category, pizza_types.name as names, sum(order_details.quantity * pizzas.price) as revenue
from pizza_types
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id
group by category,names) as CNR ) as Rank_Data 
where rn <= 3;