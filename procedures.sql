call usp_add_master("이병안", "010-8888-8888");

set @total = 0;
call usp_mod_score("박현주", 90, 70, 80, @total);

select @total;
