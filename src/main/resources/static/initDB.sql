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

CREATE TABLE IF NOT EXISTS statuses (
  id          BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS positions (
  id          BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL
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
  employee_id BIGINT(20) NOT NULL,
  position_id BIGINT(20) NOT NULL,
  start_date  DATE       NOT NULL,
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
  employee_id BIGINT(20) NOT NULL,
  status_id   BIGINT(20) NOT NULL DEFAULT '1',
  date        DATE       NOT NULL,
  PRIMARY KEY (employee_id, status_id, date)
)
  ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS events (
  id   BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  date DATE         NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS employee_event (
  employee_id BIGINT(20) NOT NULL,
  event_id    BIGINT(20) NOT NULL,
  hours       INT        NOT NULL,
  PRIMARY KEY (employee_id, event_id)
)
  ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS roles (
  id   BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  role VARCHAR(255) NOT NULL

)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users (
  id       BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email    VARCHAR(255) NOT NULL,
  role_id  BIGINT(20)   NOT NULL
)
  ENGINE = InnoDB;