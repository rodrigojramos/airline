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

INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T10:50:00Z', 500.0, 13, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-21T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-22T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-23T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-24T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-25T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T09:30:00Z', 450.0, 15, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-11T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-12T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-13T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-14T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-15T09:30:00Z', 450.0, 16, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-20T09:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Recife', '2024-11-21T09:30:00Z', 650.0, 23, 2);
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
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2024-11-25T14:30:00Z', 580.0, 23, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-10T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-11T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-12T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-13T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-14T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-12-15T19:30:00Z', 530.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2024-10-01T19:30:00Z', 530.0, 23, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'Salvador', '2024-10-18T20:30:00Z', 620.0, 30, 3);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T10:50:00Z', 500.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T14:50:00Z', 600.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'São Paulo', '2024-11-20T19:50:00Z', 700.0, 16, 1);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T19:30:00Z', 550.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T12:30:00Z', 650.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Uberlândia', '2024-12-10T15:30:00Z', 750.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Uberlândia', 'Salvador', '2024-10-14T12:30:00Z', 630.0, 32, 3);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-01T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-01T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-02T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-02T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-03T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-03T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-04T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-04T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-05T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-05T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-06T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-06T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-07T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-07T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-08T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-08T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-09T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-09T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-10T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-10T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-11T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-11T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-12T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-12T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-13T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-13T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-14T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-14T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-15T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-15T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-16T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-16T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-17T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-17T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-18T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-18T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-19T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-19T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-20T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-20T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-21T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-21T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-22T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-22T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-23T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-23T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-24T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-24T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-25T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-25T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-26T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-26T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-27T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-27T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-28T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-28T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-29T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-29T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-30T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-30T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-01-31T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-01-31T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-01T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-01T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-02T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-02T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-03T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-03T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-04T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-04T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-05T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-05T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-06T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-06T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-07T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-07T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-08T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-08T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-09T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-09T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-10T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-10T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-11T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-11T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-12T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-12T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-13T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-13T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-14T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-14T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-15T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-15T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-16T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-16T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-17T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-17T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-18T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-18T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-19T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-19T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-20T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-20T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-21T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-21T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-22T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-22T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-23T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-23T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-24T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-24T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-25T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-25T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-26T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-26T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-27T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-27T19:30:00Z', 850.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('Porto Alegre', 'São Paulo', '2025-02-28T10:30:00Z', 800.0, 24, 2);
INSERT INTO tb_flight(departure, arrival, flight_day, price, available_seats, plane_id) VALUES ('São Paulo', 'Porto Alegre', '2025-02-28T19:30:00Z', 850.0, 24, 2);

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

