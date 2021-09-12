CREATE SEQUENCE hibernate_sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE tb_transacao (
    id          NUMBER(19, 0) NOT NULL,
    description VARCHAR2(255),
    points      NUMBER(10, 0) NOT NULL CHECK ( points <= 500
                                          AND points >= 10 ),
    title       VARCHAR2(255),
    PRIMARY KEY ( id )
);

CREATE TABLE tb_user (
    id       NUMBER(19, 0) NOT NULL,
    email    VARCHAR2(255),
    name     VARCHAR2(255),
    password VARCHAR2(255),
    PRIMARY KEY ( id )
);