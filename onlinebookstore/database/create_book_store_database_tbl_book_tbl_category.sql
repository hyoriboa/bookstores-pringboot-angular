 -- create db book store --
drop schema if exists `book-store-dev`;
create schema `book-store-dev`;

-- select the database --
use `book-store-dev`;

-- create category table tbl_category--
create table if not exists `book-store-dev`.`tbl_category` (
	`id` bigint(20) not null auto_increment primary key,
    `category_name` varchar(255) null default null
);

-- create book table tbl_book --
create table if not exists `book-store-dev`.`tbl_book` (
	`id` bigint(20) not null auto_increment primary key,
    `sku` varchar(255) default null,
    `name` varchar(255) default null,
    `description` varchar(255) default null,
    `unit_price` decimal(13,2) default null,
    `image_url` varchar(255) default null,
    `active` bit default 1,
    `units_in_stock` int(11) default null,
    `date_created` datetime default null,
    `last_updated` datetime default null,
    `category_id` bigint not null,
    foreign key (`category_id`) references `tbl_category`(`id`)
);

-- insert sample data to category table --
insert into tbl_category(category_name) values ('Text book');
insert into tbl_category(category_name) values ('Fantacy');


-- insert sample data to book table --
insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-100',
    'C programming language',
    'Learn C programming language',
    'asset/images/book/text-100.png',
    1,
    100,
    600,
    1,
    '2020-12-15 16:13:45'
);

insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-101',
    'C# programming language',
    'Learn C# programming language',
    'asset/images/book/text-101.png',
    1,
    100,
    900,
    1,
    '2020-12-15 16:13:45'
);
insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-102',
    'C++ programming language',
    'Learn C++ programming language',
    'asset/images/book/text-102.png',
    1,
    100,
    950,
    1,
    '2020-12-15 16:13:45'
);
insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-103',
    'Java programming language',
    'Learn Java programming language',
    'asset/images/book/text-103.png',
    1,
    100,
    1000,
    1,
    '2020-12-15 16:13:45'
);

insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-104',
    'PHP programming language',
    'Learn PHP programming language',
    'asset/images/book/text-104.png',
    1,
    100,
    900,
    1,
    '2020-12-15 16:13:45'
);
insert into tbl_book(
	sku,
    name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
) values (
	'text-105',
    'GoLang programming language',
    'Learn GoLang programming language',
    'asset/images/book/text-105.png',
    1,
    100,
    900,
    1,
    '2020-12-15 16:13:45'
);








