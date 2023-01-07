with group_num as (

select *,ROW_NUMBER() OVER (order by visit_date) rn,
id-ROW_NUMBER() OVER (order by visit_date) grp
from lc.stadium
where no_of_people>100) 
--select * from group_num
--where grp in(
select grp
from group_num
group by grp
having count(*)>2)

