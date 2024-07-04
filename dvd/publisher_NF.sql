-- insert into publisher_tb(publisher_name) 
select
	-- 발행자,
	nullif(발행자, "")
    -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자없음")
from
	sample_dvd_tb
group by
	발행자
having
	nullif(발행자, "") is not null ;
    
    
insert into publisher_tb(publisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null;





