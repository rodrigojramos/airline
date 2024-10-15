INSERT INTO tb_plane(name, seats) VALUES ('ATR', 16);
INSERT INTO tb_plane(name, seats) VALUES ('Embraer', 24);
INSERT INTO tb_plane(name, seats) VALUES ('Airbus', 32);

INSERT INTO tb_user(name, email, document, password) VALUES ('Rodrigo', 'rodrigo@gmail.com', '11122233344', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');
INSERT INTO tb_user(name, email, document, password) VALUES ('Cinthia', 'cinthia@gmail.com', '55566677788', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');
INSERT INTO tb_user(name, email, document, password) VALUES ('Administrador', 'adm@airline.com', '00099955511', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');
INSERT INTO tb_user(name, email, document, password) VALUES ('João', 'joao@gmail.com', '12345612345', '$2a$10$3oVy0S136m/Tr66NLE2AUu/fFM64pC5dmjKPOm4Hxt33uW7ons3Ru');

INSERT INTO tb_role (authority) VALUES ('ROLE_CLIENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4,2);

INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-21T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-22T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-23T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-24T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-25T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-11T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-12T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-13T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-14T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-15T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-20T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-21T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-22T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-23T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-24T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-25T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-10T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-11T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-12T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-13T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-14T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Recife', 'São Paulo', '2024-12-15T09:30:00Z', 600.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-20T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-21T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-22T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-23T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-24T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-25T14:30:00Z', 580.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-10T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-11T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-12T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-13T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-14T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-15T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-10-01T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'Salvador', '2024-10-15T20:30:00Z', 620.0, 32, 3);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T14:50:00Z', 600.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T19:50:00Z', 700.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T19:30:00Z', 550.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T12:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T15:30:00Z', 750.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'Salvador', '2024-10-14T12:30:00Z', 630.0, 32, 3);



INSERT INTO tb_ticket(seat, user_id) VALUES ('', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 2);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 1);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 2);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 4);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 4);
INSERT INTO tb_ticket(seat, user_id) VALUES ('', 4);

INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (1, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (2, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (3, 30);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (4, 14);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (5, 37);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (6, 38);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (7, 1);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (8, 7);
INSERT INTO tb_ticket_flight(ticket_id, flight_id) VALUES (9, 38);

