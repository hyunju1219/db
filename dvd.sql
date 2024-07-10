SELECT * FROM dvd_db.sample_dvd_tb;

insert into producer_tb(producer_name)
select
	distinct
	제작자
from
	sample_dvd_tb;
    
select * from producer_tb;

select * from publisher_tb;
truncate publisher_tb;

-- ifnull() : null이면
-- nullif() : 조건이 맞다면 null
insert into publisher_tb(publisher_name)
select 
    -- 발행자,
    nullif(발행자, "") as publisher_name
    -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자없음")
from
	sample_dvd_tb
group by
	발행자
having 
	publisher_name is not null;

select * from dvd_tb;

insert into dvd_tb(registration_number, title, producer_id, publisher_id, publication_year, database_date)
select 
    등록번호,
    제목,
    pdt.producer_id,
    pbt.publisher_id,
    발행년,
    데이터기준일자
from
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자);
    
truncate dvd_tb;

insert into dvd_tb
select 
	0,
    등록번호,
    제목,
    pdt.producer_id,
    pbt.publisher_id,
    발행년,
    데이터기준일자
from
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자);
    
select 
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from
	dvd_tb dt
    left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
limit 10, 10;

# from -> where -> group by -> select -> having -> order by -> limit
    
    