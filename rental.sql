SELECT * FROM dvd_db.dvd_register_tb;

insert into dvd_register_tb
values
	(0, 1, now()),
	(0, 1, now()),
	(0, 1, now()),
	(0, 1, now());
    
select 
	0,
    dvd_id,
    now()
from 
	dvd_tb
union all
	select 
	0,
    dvd_id,
    now()
from 
	dvd_tb
union all
select 
	0,
    dvd_id,
    now()
from 
	dvd_tb

order by 
	dvd_id;

select * from dvd_register_tb;
insert into dvd_register_tb
select
	0,
	dt1.dvd_id,
    now()
from 
	dvd_tb dt1
    left outer join dvd_tb dt2 on(dt2.dvd_id in (1,2,3));
    
select 
	title,
    producer_id,
    publisher_id,
    count(*) as dvd_count
from
	dvd_tb
group by
	title,
    producer_id,
    publisher_id
having
	dvd_count > 1;
    
-- insert into rental_tb
select
	*
from
	rental_tb rt
    left outer join (select 
						distinct
						0 as rental_id,
						floor(rand() * 3000) + 1 as dvd_id,master_tb,
						"김준일" as customer_name,
						now() as rental_date
					from
						dvd_tb
					where
						dvd_id < 1001
					order by
						dvd_id) rt2 on(rt2.dvd_id)


	
    