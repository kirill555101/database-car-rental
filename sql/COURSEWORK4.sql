insert into orders (orders.rents_id, orders.total_price)
select rents.id, 
floor((damages.sum + cars.price + cars.day_payment*(extract(day from rents.begin_date) - extract(day from rents.end_date) + 1))*cars.produced_year/extract(year from current_date))
from rents, cars, damages
where (rents.damages_id = damages.id)
and (rents.cars_id = cars.id);