CREATE DATABASE tovar
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

DROP TABLE IF EXISTS tovar;
DROP TABLE IF EXISTS category;

CREATE TABLE IF NOT EXISTS category (
	category_id SERIAL PRIMARY KEY,
	name_category VARCHAR(50) NOT NULL UNIQUE,
	translation VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS tovar (
	tovar_id SERIAL PRIMARY KEY,
	title TEXT NOT NULL CHECK(LENGTH(title) > 0),
	category_id INTEGER NOT NULL,
	description TEXT NOT NULL DEFAULT 'Без описания',
	rating NUMERIC(3,2) NOT NULL CHECK(rating BETWEEN 0 and 5) DEFAULT 0,
	count_load INTEGER NOT NULL DEFAULT 0,
	cover INTEGER NOT NULL DEFAULT 0,
	FOREIGN KEY(category_id)
        REFERENCES category(category_id)
            ON DELETE NO ACTION
);


INSERT INTO category(name_category, translation)
VALUES
('Мужская одежда', 'm'),
('Женская одежда', 'w'),
('Аксессуары', 'a');

INSERT INTO tovar(title, category_id, description, rating, count_load)
VALUES
('Толстовка Самец', 1, 'Описание', ' Хлопковая нить', 4.9, 20),
('Белая мужская рубашка Мачо', 2, 'Описание', 'Хлопок', 4.7, 20),
('Розовая рубашка-поло Маменькин сыночек', 3, 'Описание', ' Хлопок', 4, 20),
('Свитшот Альфонс', 4, 'Описание', ' Флис', 4.9, 20),
('Футболка Пиздюк', 5, 'Описание', ' Хлопковая нить', 4.9, 20),
('Спортивные штаны Бродяга', 6, 'Описание', ' Хлопковая нить', 4.9, 20),
('Шорты Мага побрейся', 7, 'Описание', ' Хлопковая нить', 4.9, 20),
('Брюки И все женщины твои', 8, 'Описание', ' Хлопковая нить', 4.9, 20),
('Футболка Качок в здании', 9, 'Описание', ' Хлопковая нить', 4.9, 20),
('Рубашка черная А мы на похороны?', 10, 'Описание', ' Хлопковая нить', 4.9, 20),
('Мужская тостовка Оффник', 11, 'Описание', ' Хлопковая нить', 4.9, 20),
('Футболка бежевая Я не голый', 12, 'Описание', ' Хлопковая нить', 4.9, 20);