select * from rents
where (id = (
    select max(id) from rents)
);

select * from orders
where (id = (
    select max(id) from orders)
);

select 'number: ' || cars.car_number || '; price: ' || cars.price || ' rubles ; day payment: ' || 
cars.day_payment || ' rubles; park address: ' || parks.address display_value, cars.id return_value 
from cars, parks
where (cars.id = (
    select max(id) from rents where (clients_id = :P4_CLIENT))
);

select * from rents, orders
where (rents.id = (select max(id) from rents where (clients_id = 17))) and 
(orders.rents_id = rents.id) and
(rownum = 1);

select id from contracts
    where (id = (select max(id) from contracts where (clients_id = 12))) and
    (clients_id = 12) and
    (sysdate between begin_date and end_date);
    
select clients.surname || ' ' || clients.name || ' ' || clients.patronymic as Client, orders.id as Order_id, orders.total_price as Total_price
from orders, clients, rents
where (orders.rents_id = rents.id) and
(rents.clients_id = clients.id) and
(clients.id = 1);