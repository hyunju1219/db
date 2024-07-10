# 데이터 수정(DML - UPDATE)

select * from student_tb;

select 
	student_id
from 
	student_tb
where 
	student_name = "김준삼";
# 1    
update 
	student_tb
set
	email = "aaa@gmail.com"
where
	student_id = (	select 
						temp.student_id
					from (	select 
								student_id
							from 
								student_tb
							where 
								student_name = "김준삼") as temp);
# 2
update 
	student_tb
set
	email = "aaa@gmail.com"
where
	student_id = (	select 
						temp_student_tb.student_id
					from 
						(select * from student_tb) as temp_student_tb
					where 
						student_name = "김준삼");

update 
	student_tb
set
	phone = "010-1234-5678",
    email = "qwer@kakao.com"
where 
	student_id = 3;