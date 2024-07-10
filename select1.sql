# 데이터 조회(DML - SELECT)

select * from student_tb;
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name from student_tb;
select student_name, student_id from student_tb; # 순서변경
select student_id, student_name as s_name from student_tb;

# union : select의 결과를 중복을 제거하고 병합
# union all : 중복 제거없이 결과 병합
# 병합 조건 : 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능
select 1 as number, "김준일" as name, 31 as age
union
select 2 as number, "김준이" as name, 32 as age
union
select 2 as number, "김준이" as name, 32 as age;

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;

select 
	number, name
from
	(select 1 as number, "김준일" as name, 31 as age
	union 
	select 2 as number, "김준이" as name, 32 as age
	union all
	select 2 as number, "김준이" as name, 32 as age) as temp_tb; # 가상의 테이블명 지정해야함