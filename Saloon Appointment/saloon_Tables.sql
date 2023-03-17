DROP TABLE appointments;
DROP TABLE services;
DROP TABLE services;
CREATE TABLE customers(customer_id SERIAL PRIMARY KEY,name VARCHAR(20),phone VARCHAR(20) UNIQUE);

CREATE TABLE services(service_id SERIAL PRIMARY KEY,name VARCHAR(20));
CREATE TABLE appointments(appointment_id SERIAL PRIMARY KEY,customer_id INT REFERENCES customers(customer_id),service_id INT REFERENCES services(service_id),time VARCHAR(10));

INSERT INTO services(name) VALUES('cut'),('color'),('perm'),('style'),('trim');