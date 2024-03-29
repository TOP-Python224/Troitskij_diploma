INSERT INTO `carrier` (`name`)
VALUES
('Maersk'),
('MSC'),
('CMA CGM'),
('Evergreen'),
('Hapag-Lloyd');

INSERT INTO `port_of_loading` (`name`)
VALUES
('Shanghai'),
('Ningbo'),
('Qingdao'),
('Dalian'),
('Shenzhen');

INSERT INTO `container_type` (`name`)
VALUES
('20ft Standard'),
('40ft Standard'),
('40ft High Cube'),
('20ft Reefer'),
('40ft Reefer');

INSERT INTO `freight_tariffs` (`carrier_id`, `port_id`, `container_id`, `price`)
VALUES
(1, 1, 1, 1000.00),
(1, 1, 2, 1500.00),
(1, 1, 3, 1500.00),
(1, 1, 4, 1500.00),
(1, 1, 5, 1500.00),
(1, 2, 1, 1200.00),
(1, 2, 2, 1800.00),
(1, 2, 3, 1500.00),
(1, 2, 4, 1500.00),
(1, 2, 5, 1500.00),
(1, 3, 1, 1200.00),
(1, 3, 2, 1800.00),
(1, 3, 3, 1500.00),
(1, 3, 4, 1500.00),
(1, 3, 5, 1500.00),
(1, 4, 1, 1200.00),
(1, 4, 2, 1800.00),
(1, 4, 3, 1500.00),
(1, 4, 4, 1500.00),
(1, 4, 5, 1500.00),
(1, 5, 1, 1200.00),
(1, 5, 2, 1800.00),
(1, 5, 3, 1500.00),
(1, 5, 4, 1500.00),
(1, 5, 5, 1500.00),
(2, 1, 1, 1000.00),
(2, 1, 2, 1500.00),
(2, 1, 3, 1500.00),
(2, 1, 4, 1500.00),
(2, 1, 5, 1500.00),
(2, 2, 1, 1200.00),
(2, 2, 2, 1800.00),
(2, 2, 3, 1500.00),
(2, 2, 4, 1500.00),
(2, 2, 5, 1500.00),
(2, 3, 1, 1200.00),
(2, 3, 2, 1800.00),
(2, 3, 3, 1500.00),
(2, 3, 4, 1500.00),
(2, 3, 5, 1500.00),
(2, 4, 1, 1200.00),
(2, 4, 2, 1800.00),
(2, 4, 3, 1500.00),
(2, 4, 4, 1500.00),
(2, 4, 5, 1500.00),
(2, 5, 1, 1200.00),
(2, 5, 2, 1800.00),
(2, 5, 3, 1500.00),
(2, 5, 4, 1500.00),
(2, 5, 5, 1500.00),
(3, 1, 1, 1000.00),
(3, 1, 2, 1500.00),
(3, 1, 3, 1500.00),
(3, 1, 4, 1500.00),
(3, 1, 5, 1500.00),
(3, 2, 1, 1200.00),
(3, 2, 2, 1800.00),
(3, 2, 3, 1500.00),
(3, 2, 4, 1500.00),
(3, 2, 5, 1500.00),
(3, 3, 1, 1200.00),
(3, 3, 2, 1800.00),
(3, 3, 3, 1500.00),
(3, 3, 4, 1500.00),
(3, 3, 5, 1500.00),
(3, 4, 1, 1200.00),
(3, 4, 2, 1800.00),
(3, 4, 3, 1500.00),
(3, 4, 4, 1500.00),
(3, 4, 5, 1500.00),
(3, 5, 1, 1200.00),
(3, 5, 2, 1800.00),
(3, 5, 3, 1500.00),
(3, 5, 4, 1500.00),
(3, 5, 5, 1500.00),
(4, 1, 1, 1000.00),
(4, 1, 2, 1500.00),
(4, 1, 3, 1500.00),
(4, 1, 4, 1500.00),
(4, 1, 5, 1500.00),
(4, 2, 1, 1200.00),
(4, 2, 2, 1800.00),
(4, 2, 3, 1500.00),
(4, 2, 4, 1500.00),
(4, 2, 5, 1500.00),
(4, 3, 1, 1200.00),
(4, 3, 2, 1800.00),
(4, 3, 3, 1500.00),
(4, 3, 4, 1500.00),
(4, 3, 5, 1500.00),
(4, 4, 1, 1200.00),
(4, 4, 2, 1800.00),
(4, 4, 3, 1500.00),
(4, 4, 4, 1500.00),
(4, 4, 5, 1500.00),
(4, 5, 1, 1200.00),
(4, 5, 2, 1800.00),
(4, 5, 3, 1500.00),
(4, 5, 4, 1500.00),
(4, 5, 5, 1500.00),
(5, 1, 1, 1000.00),
(5, 1, 2, 1500.00),
(5, 1, 3, 1500.00),
(5, 1, 4, 1500.00),
(5, 1, 5, 1500.00),
(5, 2, 1, 1200.00),
(5, 2, 2, 1800.00),
(5, 2, 3, 1500.00),
(5, 2, 4, 1500.00),
(5, 2, 5, 1500.00),
(5, 3, 1, 1200.00),
(5, 3, 2, 1800.00),
(5, 3, 3, 1500.00),
(5, 3, 4, 1500.00),
(5, 3, 5, 1500.00),
(5, 4, 1, 1200.00),
(5, 4, 2, 1800.00),
(5, 4, 3, 1500.00),
(5, 4, 4, 1500.00),
(5, 4, 5, 1500.00),
(5, 5, 1, 1200.00),
(5, 5, 2, 1800.00),
(5, 5, 3, 1500.00),
(5, 5, 4, 1500.00),
(5, 5, 5, 1500.00);