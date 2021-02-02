CREATE TABLE `courses`(
    `courses_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `title` TEXT,
    `description` TEXT
);

CREATE TABLE `lessons`(
    `lesson_id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `title` TEXT,
    `body` TEXT,
    `courses_id` INTEGER,
    FOREIGN KEY (courses_id) REFERENCES courses(courses_id)
);
