DROP DATABASE catlister_db;

CREATE DATABASE IF NOT EXISTS catlister_db;

USE catlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;


CREATE TABLE users
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username    VARCHAR(240) NOT NULL,
    email       VARCHAR(240) NOT NULL,
    password    VARCHAR(255) NOT NULL,
    preferences VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_id INT UNSIGNED NOT NULL,
    category VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id) REFERENCES ads (id)
        ON DELETE CASCADE
);

CREATE TABLE ads
(
    id               INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id          INT UNSIGNED NOT NULL,
    title            VARCHAR(255) NOT NULL,
    personality_type VARCHAR(255) NOT NULL,
    images           VARCHAR(255),
    description      TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE
);
