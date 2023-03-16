use project;

select * 
from `freight_tariffs` as ft
join `carrier` as c
	on ft.`carrier_id` = c.`id`
join `port_of_loading` as pol
	on pol.`id` = ft.`port_id`
join `container_type` as ct
	on ct.`id` = ft.`container_id`
order by ft.`id`;