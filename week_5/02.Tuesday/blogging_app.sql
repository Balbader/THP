CREATE TABLE `users`(
    `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT
);

CREATE TABLE `articles`(
    `article_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `content` TEXT,
    `user_id` INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE `category`(
    `category_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `title` TEXT
);

CREATE TABLE `articles_categories`(
    `category_id` INTEGER,
    `article_id` INTEGER,
    FOREIGN KEY(category_id) REFERENCES category(category_id), 
    FOREIGN KEY(article_id) REFERENCES articles(article_id)
);

CREATE TABLE `tag`(
    `tag_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `title` TEXT,
    `color` TEXT
);

INSERT INTO users (name) VALUES ("Dentist");
INSERT INTO articles (content, user_id) VALUES ("J'adore les dents.", 1);
INSERT INTO category (title) VALUES ("TEETH");
INSERT INTO tag (title, color) VALUES ("POO", "green");
