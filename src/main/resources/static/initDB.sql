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

CREATE TABLE IF NOT EXISTS status (
  id          BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description        VARCHAR(100) NOT NULL
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

CREATE TABLE IF NOT EXISTS employee_status (
  employee_id BIGINT(20)     NOT NULL,
  status_id     DECIMAL(13, 2) NOT NULL,
  date  DATE           NOT NULL,
  PRIMARY KEY (employee_id, status_id, date)
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


CREATE TABLE IF NOT EXISTS users (
  id       BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role_id  BIGINT(20)   NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles (id),
  UNIQUE (role_id)
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS roles (
  id       BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  role VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role_id  BIGINT(20)   NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles (id),
  UNIQUE (role_id)
)
  ENGINE = InnoDB;