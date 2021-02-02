CREATE TABLE `users`(
  `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `news`(
  `news_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `url_news` TEXT
);

CREATE TABLE `comments`(
  `comment_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `news_id` INTEGER,
  `user_id` INTEGER,
  `body_comment` TEXT, 
  FOREIGN KEY (news_id) REFERENCES news(news_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
