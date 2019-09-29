#drop table fltbycity
create table fltbycity (
id int not null,
airline varchar(45), 
time_perf varchar(45),
la_rpt int(10),
phi_rpt int(10),
sd_rpt int(10),
sf_rpt int(10),
sea_rpt int(10),
Unique key (id)
);

insert into fltbycity values
(1, 'ALASKA', 'on time', 497, 221, 212, 503, 1841);

select * from fltbycity; 
insert into fltbycity values
(2, 'ALASKA', 'delayed', 62, 12, 20, 102, 305),
(3, 'AM WEST', 'on time', 694, 4840, 383, 320, 201),
(4, 'AM WEST', 'delayed', 117, 415, 65, 129, 61);
commit; 

UPDATE fltbycity
SET time_perf = 'on_time'
WHERE id = 1 or id = 3 and time_perf = 'on time';

commit;

select * from fltbycity; 