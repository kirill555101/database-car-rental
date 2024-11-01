update rents
set cars_id = 1
where (rownum <= 5000);

select * from rents
where (rownum <= 100);

select cars.mark, count(*)
from cars, rents
where (rents.cars_id = cars.id)
group by cars.mark
order by 2 desc;