# 출판사를 기준으로 category의 count를 집계한다.


select
	*
from
	(select 
		# rank() over(partition by publisher_id order by book_count desc) as `rank`, 공동순위 존재 1 2 2 4
		# dense_rank() over(partition by publisher_id order by book_count desc) as `denserank`, 공동순위 존재 1 2 2 3
		row_number() over(partition by publisher_id order by book_count desc) as `num`, #순위에 중복 없음 1 2 3 4
		pc_count_tb.*
	from 
		(select 
			publisher_id,
			category_id,
			count(*) as book_count
		from
			book_tb
		group by
			publisher_id,
			category_id	) as pc_count_tb) as book_row_number_tb
where
	num = 1;

select * from student_tb;

-- class 별로 score를 오름차순으로 정렬해 순위를 매긴다
select
	row_number() over(partition by class order by score) as `rank`,
    student_name,
    class,
    score
from
	student_tb;
-- --------------------------    
select
	*
from
	(select
		row_number() over(partition by class order by score) as `rank`,
		student_name,
		class,
		score
	from
		student_tb) as tb
where
	`rank` = 1;

    
