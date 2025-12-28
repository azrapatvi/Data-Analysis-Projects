-- Project: Pizza Sales Analysis
-- Tool: MySQL
-- Description: SQL queries used to analyze pizza sales data
-- Note: Database and tables were already created and populated

-- Q1: Total no. of orders placed
select count(order_id) from orders;

-- Q2: calculate total revenue generated from pizza sales
select round(sum((order_details.quantity*pizzas.price)),2)as total_sales from order_details
join
pizzas
on pizzas.pizza_id=order_details.pizza_id;

-- Q3: identify highest price pizza
select pizza_types.name,pizzas.price from pizzas
join
pizza_types
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc
limit 1;

-- Q4:most common pizza size ordered
select pizzas.size,count(order_details.order_id) as orderd_sizes from pizzas
join 
order_details
on order_details.pizza_id=pizzas.pizza_id
group by size
order by orderd_sizes desc;

-- Q5:list the top5 most orderd pizza types along with thier quantities
select pizza_types.name,
sum(order_details.quantity) as quantity
from pizza_types join pizzas
on
pizzas.pizza_type_id=pizza_types.pizza_type_id
join
order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.name
order by quantity desc
limit 5;

-- Q6:find total quantity of each pizza ordered
select pizza_types.name, sum(order_details.quantity) as quantity
from order_details
join pizzas
on pizzas.pizza_id=order_details.pizza_id
join pizza_types
on pizza_types.pizza_type_id=pizzas.pizza_type_id
group by pizza_types.name;

-- Q7: total qty of each pizza category ordered
select pizza_types.category,sum(order_details.quantity) as qty
from pizza_types
join 
pizzas
on 
pizzas.pizza_type_id=pizza_types.pizza_type_id
join
order_details
on
order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category
order by qty desc;

-- Q8: distribution of orders by hour of the day
select hour(order_time) as hrs,count(order_id) as count from orders
group by hrs
order by count desc;

-- Q9: category wise distribution of pizzas
select pizza_types.category,sum(order_details.quantity) as total_qty from pizza_types
join pizzas
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category;

-- Q10: group the order by date and calculate average no of pizzas orderd per day
select avg(qty) from 
(select order_date,sum(order_details.quantity)as qty from orders
join order_details
on
order_details.order_id=orders.order_id
group by order_date) as daily_orders;

-- Q11:top 3 most ordered pizza based on revenue
select pizza_types.name,sum(pizzas.price*order_details.quantity) as total_Sales from pizza_types
join 
pizzas
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join 
order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.name
order by total_Sales desc
limit 3;

-- Q12:What percentage of total revenue is contributed by each pizza category?
select pizza_types.category, ROUND(
        SUM(pizzas.price * order_details.quantity) /
        (SELECT SUM(pizzas.price * order_details.quantity)
         FROM pizzas
         JOIN order_details 
            ON order_details.pizza_id = pizzas.pizza_id
        ) * 100, 2
    ) AS contribution_percentage
from pizzas
join
pizza_types
on
pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on
order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category
order by contribution_percentage desc;