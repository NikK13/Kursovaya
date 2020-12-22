INSERT INTO STAVKA (stavka, months) VALUES
  (5.0, 12),
  (7.0, 13),
  (4.0, 24),
  (7.2, 48),
  (8.0, 3),
  (16.0, 7);

INSERT INTO CURRENCY (currency) VALUES
    ('BYN'),
    ('RUB'),
    ('EUR'),
    ('USD');

INSERT INTO BANK (currency_id, name) VALUES
  (1, 'Беларусбанк'),
  (2, 'АльфаБанк'),
  (3, 'Белинвестбанк'),
  (4, 'Белагропромбанк');

INSERT INTO CLIENT (name) VALUES
  ('Viktor Vasin'),
  ('Egor Sharangovich'),
  ('Petya Blokhin'),
  ('Anton Bratskiy');

INSERT INTO CREDIT (client_id, stavka_id, summa) VALUES
  (1, 1, 12000),
  (2, 2, 17000),
  (3, 3, 123000),
  (4, 4, 7500);

INSERT INTO USER_DATA (username, password, active) VALUES
  ('nik', 'nik', true),
  ('admin', 'admin', true),
  ('1', '1', true);

INSERT INTO USER_ROLE (user_id, roles) VALUES
  (1, 'USER'),
  (2, 'ADMIN'),
  (3, 'USER');



