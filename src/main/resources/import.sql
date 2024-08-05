INSERT INTO tb_plane(name, seats) VALUES ('ATR', 72);
INSERT INTO tb_plane(name, seats) VALUES ('Embraer', 150);
INSERT INTO tb_plane(name, seats) VALUES ('Airbus', 288);

INSERT INTO tb_user(name, email, document, password) VALUES ('Rodrigo', 'rodrigo@gmail.com', '11122233344', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');
INSERT INTO tb_user(name, email, document, password) VALUES ('Cinthia', 'cinthia@gmail.com', '55566677788', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');
INSERT INTO tb_user(name, email, document, password) VALUES ('Administrador', 'adm@airline.com', '00099955511', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');

INSERT INTO tb_role (authority) VALUES ('ROLE_CLIENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,2);

INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-08-20T10:50:00Z', 500.0, 71, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-09-10T09:30:00Z', 450.0, 149, 2);

INSERT INTO tb_ticket(seat, user_id) VALUES ('23C', 1);

INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (1, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (1, 2);