# 데이터 삽입(DML - INSERT)

select * from student_tb;

# insert into `study`.`student_tb` DB가 use되지 않은 경우
# insert into `student_tb` DB가 use상태인 경우
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values 
	(0, "김준일", "010-9988-1916", "aa@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values 
	(0, "김준이", "010-9988-1916", "aa@naver.com", now()),
	(0, "김준삼", "010-9988-1916", "aa@naver.com", now()),
	(0, "김준사", "010-9988-1916", "aa@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
values 
	(0, "김준오", "010-9988-1916", "aa@naver.com", null, now());
    
insert into student_tb
	(student_id, student_name, phone, introduce, email, admission_date)
values 
	(0, "김준육", "010-9988-1916", null, "aa@naver.com", now());
    
insert into student_tb
values
	(0, "김준칠", "010-9988-1916", "aa@naver.com", null, now());
    
select * from car_tb;
truncate car_tb;
insert into car_tb
values
	(0, "자동차1", "블랙", now());
    
insert into car_tb
values
	(0, "자동차2", "화이트", curdate());
    
insert into car_tb
	(car_id, car_model, car_date)
values 
	(0, "자동차3", now());