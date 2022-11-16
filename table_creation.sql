-- SALESPERSON TABLE CREATION
create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

-- MECHANIC TABLE CREATION 
create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

-- INVENTORY VEHICLE TABLE CREATION 
create table inventory_vehicle(
	vehicle_id SERIAL primary key,
	make VARCHAR(40),
	model VARCHAR(40),
	year_ NUMERIC(4),
	color VARCHAR(20),
	vehicle_type VARCHAR(20)
);

-- SERVICE VEHICLE TABLE CREATION
create table service_vehicle(
	serv_vehicle_id SERIAL primary key,
	make VARCHAR(20),
	model VARCHAR(20),
	year_ NUMERIC(4),
	color VARCHAR(20),
	vehicle_type VARCHAR(20)
);

-- CUSTOMER TABLE CREATION 
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	customer_type VARCHAR(50),
	phone_number NUMERIC(10),
	address VARCHAR(150),
	billing_info VARCHAR(100)
);

-- PARTS INVENTORY TABLE CREATION 
create table parts_inventory(
	upc SERIAL primary key,
	product_name VARCHAR(50),
	brand VARCHAR(50),
	quantity INTEGER
);

-- INVOICE TABLE CREATION 
create table invoice(
	invoice_id SERIAL primary key,
	invoice_date DATE default CURRENT_DATE,
	vehicle_id INTEGER not null,
	salesperson_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(vehicle_id) references inventory_vehicle(vehicle_id),
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id)
);

-- PARTS TABLE CREATION 
create table parts(
	parts_id SERIAL primary key,
	quantity INTEGER,
	product_name VARCHAR(50) not null,
	brand VARCHAR(50) not null,
	upc INTEGER not null,
	foreign key(product_name) references parts_inventory(product_name),
	foreign key(brand) references parts_inventory(brand),
	foreign key(upc) references parts_inventory(upc)
);

-- SERVICE TICKET TABLE CREATION 
create table service_ticket(
	service_ticket_id SERIAL primary key,
	service_date DATE default CURRENT_DATE,
	cost_of_parts NUMERIC(10,2),
	service_fee NUMERIC(10,2),
	subtotal NUMERIC(10,2),
	total NUMERIC(10,2),
	mechanic_id INTEGER not null,
	customer_id INTEGER not null,
	serv_vehicle_id INTEGER not null,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(serv_vehicle_id) references service_vehicle(serv_vehicle_id)
);
















