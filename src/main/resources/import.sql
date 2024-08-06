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

INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-21T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-22T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-23T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-24T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-25T10:50:00Z', 500.0, 72, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-11T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-12T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-13T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-14T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-15T09:30:00Z', 450.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-20T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-21T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-22T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-23T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-24T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-25T09:30:00Z', 650.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-10T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-11T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-12T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-13T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-14T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-15T09:30:00Z', 600.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-20T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-21T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-22T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-23T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-24T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-25T14:30:00Z', 580.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-10T19:30:00Z', 530.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-11T19:30:00Z', 530.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-12T19:30:00Z', 530.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-13T19:30:00Z', 530.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-14T19:30:00Z', 530.0, 150, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-15T19:30:00Z', 530.0, 150, 2);


INSERT INTO tb_ticket(seat, user_id) VALUES ('23C', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('24C', 2);
INSERT INTO tb_ticket(seat, user_id) VALUES ('09C', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('16D', 1);

INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (1, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (1, 7);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (2, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (2, 7);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (3, 30);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (3, 32);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (4, 14);
