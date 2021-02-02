CREATE TABLE `students`(
  `student_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `student_name` TEXT,
  `courses_id` INTEGER,
  FOREIGN KEY (courses_id) REFERENCES courses(courses_id)
);

CREATE TABLE `courses`(
  `courses_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `title` TEXT,
  `decription` TEXT
);
