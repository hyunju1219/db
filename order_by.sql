-- order by : 정렬
-- desc : 내림차순 정렬(생략불가능)
-- asc : 오름차순 정렬(생략가능)
select 
	*
from 	
	category_tb
order by
	category_id;
    
-- publisher_id 내림차순, 카테고리 id 오름차순, book_id 내림차순 
select 
	*
from
	book_tb
order by
	publisher_id desc, category_id, book_id desc;