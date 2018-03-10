CREATE TABLE IF NOT EXISTS departments (
  id   BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS employees (
  id         BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name  VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS employee_salary (
  employee_id BIGINT(20)     NOT NULL,
  salary      DECIMAL(13, 2) NOT NULL,
  start_date  DATE           NOT NULL,
  PRIMARY KEY (employee_id, start_date)
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS employee_position (
  employee_id BIGINT(20)   NOT NULL,
  position    VARCHAR(255) NOT NULL,
  start_date  DATE         NOT NULL,
  PRIMARY KEY (employee_id, start_date)
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS employee_department (
  employee_id   BIGINT(20) NOT NULL,
  department_id BIGINT(20) NOT NULL,
  start_date    DATE       NOT NULL,
  PRIMARY KEY (employee_id, start_date)
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS roles (
  id   BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS users (
  id       BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role_id  BIGINT(20)   NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles (id),
  UNIQUE (role_id)
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS events (
  id          BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  start_date  DATE         NOT NULL,
  hours       INT          NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS events_employees (
  employee_id BIGINT(20) NOT NULL,
  event_id    BIGINT(20) NOT NULL,
  PRIMARY KEY (employee_id, event_id)
)
  ENGINE = InnoDB;


INSERT INTO roles (name) VALUES
  ('Admin'),
  ('Moderator'),
  ('Guest');

INSERT INTO users VALUES (1, 'test', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG', 1);
#password = pass

