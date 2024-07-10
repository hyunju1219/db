# group by - 그룹
# 집계 -> count, max, min, sum, avg
# 값의 null은 카운트안됨
select
	admission_date,
	count(*)
from
	student_tb
group by
	admission_date;