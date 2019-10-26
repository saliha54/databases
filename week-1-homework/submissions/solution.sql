select id from cars_data where accelerate = (select max(accelerate) from cars_data);  // 307, 403
select model, make from car_names where id=403 or id = 307;

select weight from cars_data where year>1980;

select make from car_names where model= "chevrolet";

select full_name from car_makers where id =(select maker from models where name="plymouth");

select continent from continents where id = (select continent from countries where id = (select country from car_makers where maker="volvo"));

select count(*) from car_names where model="audi";

 select maker from car_makers where maker like 's%';

select count(*) from cars_data where horsepower>100 and horsepower<200;

 select count(*) from car_makers where country = (select id from countries where name="australia");

select maker from car_makers where country not in (select id from countries where name in ('sweden','japan','france','germany'));
