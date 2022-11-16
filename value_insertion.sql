-- SALESPERSON VALUES
insert into salesperson(
	salesperson_id,
	first_name,
	last_name
)VALUES(
	1,
	'Larry',
	'David'
),
(
	2,
	'George',
	'Costanza'
);

-- MECHANIC VALUES
insert into mechanic(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1,
	'David',
	'Puddy'
),
(
	2,
	'Jake',
	'Jarmel'
);

-- INVENTORY VEHICLES VALUES
insert into inventory_vehicle(
	vehicle_id,
	make,
	model,
	year_,
	color,
	vehicle_type
)VALUES(
	1,
	'Toyota',
	'4Runner',
	'2021',
	'Grey',
	'SUV'
),
(
	2,
	'Chrysler',
	'Lebaron',
	'1992',
	'Green',
	'Sedan'
);

-- SERVICE VEHICLE VALUES
insert into service_vehicle(
	serv_vehicle_id,
	make,
	model,
	year_,
	color,
	vehicle_type
)VALUES(
	1,
	'Porsche',
	'911',
	'2022',
	'Silver',
	'Coupe'
),
(
	2,
	'Genesis',
	'G70',
	'2021',
	'Black',
	'Sedan'
);

-- CUSTOMER VALUES
insert into customer(
	customer_id,
	first_name,
	last_name,
	customer_type,
	phone_number,
	address,
	billing_info
)VALUES(
	1,
	'Jerry',
	'Seinfeld',
	'Dealership',
	'4102942799',
	'123 Queens Blvd New York, NY 12345',
	'4430 4730 8899 9988 04/22 045'
),
(
	2,
	'Cosmo',
	'Kramer',
	'Service',
	'4102942798',
	'124 Kings Hwy Baltimore, MD 21009',
	'Cash'
);

-- PARTS INVENTORY VALUES
insert into parts_inventory(
	upc,
	product_name,
	brand,
	quantity
)VALUES(
	45564816,
	'Windshield Wipers',
	'Mopar',
	'56'
),
(
	1531531531,
	'Transmission',
	'Transmission Maker',
	'22'
);

-- INVOICE VALUES
insert into invoice(
	invoice_id,
	invoice_date,
	vehicle_id,
	salesperson_id,
	customer_id
)VALUES(
	1,
	now(),
	1,
	1,
	1
),
(
	2,
	now(),
	2,
	2,
	2
);

-- PARTS VALUES
insert into parts(
	parts_id,
	quantity,
	product_name,
	brand,
	upc
)VALUES(
	1,
	2,
	'Windshield Wipers',
	'Mopar',
	45564816
);

-- SERVICE TICKET VALUES
insert into service_ticket(
	service_ticket_id,
	service_date,
	cost_of_parts,
	service_fee,
	subtotal,
	total,
	mechanic_id,
	customer_id,
	serv_vehicle_id
)VALUES(
	1,
	NOW(),
	750.22,
	50.00,
	800.22,
	862.22,
	2,
	2,
	1
);


