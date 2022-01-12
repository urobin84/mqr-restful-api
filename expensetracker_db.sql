create
user java with password 'java';
create
database restful-api with template=template0 owner=java;
\connect  restful-api;
alter
default privileges  grant all on tables to java;
alter
default privileges  grant all on sequences to java;

create table et_users
(
    user_id    integer primary key not null,
    first_name varchar(20)         not null,
    last_name  varchar(20)         not null,
    email      varchar(30)         not null,
    password   text                not null,
);

create table et_categories
(
    category_id integer primary key not null,
    user_id     integer             not null,
    titel       varchar(20)         not null,
    description varchar(50)         not null
);

alter table et_categories
    add constraint cat_users_fk
        foreign key (user_id) references et_users (user_id);

create table et_ransactions
(
    transaction_id   integer primary key not null,
    category_id      integer             not null,
    user_id          integer             not null,
    amount           numeric(10, 2)      not null,
    note             varchar(50)         not null,
    transaction_date bigint              not null
);
alter table et_transactions
    add constraint trans_cat_fk
        foreign key (category_id) references et_categories (category_id);
alter table et_transactions
    add constraint trans_users_fk
        foreign key (user_id) references et_users (user_id);

create sequence et_users_seq increment 1 start 1;
create sequence et_categories_seq increment 1 start 1;
create sequence et_transaction_seq increment 1 start 1000