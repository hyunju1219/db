-- Group by 집계, 중복제거
-- distinct  
select
	distinct 
    category_id,
	publisher_id
from 
	book_tb;

-- 카테고리별 도서 카운트
-- 실행순서 : from -> where -> group by -> select
select
	category_id,
    count(*)
from 
	book_tb
where
	book_id > 7000
group by
	category_id;
    
select * from book_tb;
-- 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오. 그리고 카테고리 별로 도서 개수가 출력 
select 
	*
from 
	(select 
		category_id,
		count(*) as category_count
	from 
		book_tb
	where
		book_name like "%돈%"
	group by
		category_id) as temp
where 
	category_count > 10;
   
-- having : 그룹이후의 조건, 그룹의 결과를 사용할 수 있음
-- 실행순서 : 메인쿼리(서브쿼리 -> from -> where -> group by -> select -> having)
select 
	category_id,
	count(*) as category_count
from 
	book_tb
where
	book_name like "%돈%"
group by
	category_id
having
	category_count > 10;
    
    