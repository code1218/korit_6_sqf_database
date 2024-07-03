# 데이터 수정(DML - UPDATE

select * from student_tb;

select
	student_id
from
	student_tb
where
	student_name = "김준오";

update
	student_tb
set
	email = "skjil1218@gmail.com"
where
	student_id in ( select
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb
					where
						temp_student_tb.student_name = "김준오");
                        
update
	student_tb
set
	phone = "010-1234-4321",
    email = "skjil1218@naver.com"
where
	student_id = 3;
    