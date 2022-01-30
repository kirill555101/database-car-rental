create sequence time_min
start with 1
increment by 1
maxvalue 1140
minvalue 0
cycle
nocache
order;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

insert into rents (clients_id, cars_id, damages_id, begin_date, end_date)
select clients.id, cars.id, damages.id,
to_date(
    concat('16.03.21 ', concat(floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
),
to_date(
    concat('16.03.21 ', concat(4 + floor(time_min.nextval/60), concat(':', concat(mod(time_min.currval, 60), ':00')))),
    'DD.MM.YYYY HH24:MI:SS'
)
from clients, cars, damages;

select max(id) from rents;

