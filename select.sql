use project;

select * 
from `Freight_tariffs` as ft
join `carrier` as c
	on ft.`carrier_id` = c.`id`
join `port_of_loading` as pol
	on pol.`id` = ft.`port_id`
join `container_type` as ct
	on ct.`id` = ft.`container_id`;