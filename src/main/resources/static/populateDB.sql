INSERT INTO departments
(id, name) VALUES
  (1, 'Java'),
  (2, 'C++'),
  (3, 'Lisp'),
  (4, 'Python');

INSERT INTO employees
(id, first_name, last_name) VALUES
  (1, 'Adam', 'Abrams'),
  (2, 'Bernard', 'Bach'),
  (3, 'Clarice', 'Carlton'),
  (4, 'Donald', 'Davidson');

INSERT INTO statuses
(id, description) VALUES
  (1, 'working'),
  (2, 'detached'),
  (3, 'sick_leave'),
  (4, 'vacation');

INSERT INTO positions
(id, name, description) VALUES
  (1, 'Junior', 'Junior software developer'),
  (2, 'Middle', 'Middle software developer'),
  (3, 'Senior', 'Senior software developer'),
  (4, 'Project Manager', 'Manager of a project');

INSERT INTO employee_salary
(employee_id, salary, start_date) VALUES
  (1, 500, '2017-01-01'),
  (1, 600, '2017-05-01'),
  (1, 800, '2017-12-01'),
  (2, 600, '2017-02-01'),
  (2, 700, '2017-06-15'),
  (2, 800, '2017-12-01'),
  (3, 1000, '2017-02-01'),
  (3, 1600, '2017-05-01'),
  (3, 1800, '2017-12-01'),
  (4, 1200, '2017-01-18'),
  (4, 1600, '2017-04-15'),
  (4, 2000, '2017-12-01');

INSERT INTO employee_position
(employee_id, position_id, start_date) VALUES
  (1, 1, '2017-01-01'),
  (2, 1, '2017-02-01'),
  (2, 2, '2017-12-01'),
  (3, 2, '2017-02-01'),
  (3, 3, '2017-05-01'),
  (3, 4, '2017-12-01'),
  (4, 3, '2017-01-18'),
  (4, 4, '2017-12-01');

INSERT INTO employee_department
(employee_id, department_id, start_date) VALUES
  (1, 1, '2017-01-01'),
  (2, 2, '2017-02-01'),
  (2, 2, '2017-09-01'),
  (3, 3, '2017-02-01'),
  (4, 2, '2017-01-18'),
  (4, 3, '2017-04-01'),
  (4, 4, '2017-11-25');

INSERT INTO employee_status
(employee_id, date) VALUES
  (1, '2017-01-01');

INSERT INTO events (id, name, date) VALUES
  (1, 'Work-work', '2017-12-01'),
  (2, 'Job-job', '2017-11-01'),
  (3, 'Zog-zog', '2017-12-10'),
  (4, 'Labor', '2017-12-15'),
  (5, 'Duty', '2017-02-01');

INSERT INTO employee_event (employee_id, event_id, hours) VALUES
  (1, 1, 8),
  (1, 2, 4),
  (1, 4, 8),
  (1, 5, 3),
  (2, 1, 4),
  (2, 2, 12),
  (2, 3, 3),
  (2, 4, 4),
  (3, 1, 12),
  (3, 4, 8),
  (4, 3, 8),
  (4, 4, 8),
  (4, 5, 8);


INSERT INTO roles
(id, role) VALUES
  (1, 'Admin'),
  (2, 'Moderator'),
  (3, 'Employee'),
  (4, 'Guest');

INSERT INTO users (id, username, password, email, role_id) VALUES
  (1, 'admin', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG', 'simurashka@gmail.com', 1);
#password = pass