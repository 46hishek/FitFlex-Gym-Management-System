CREATE DATABASE IF NOT EXISTS fitflex_gym CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE fitflex_gym;

CREATE TABLE IF NOT EXISTS admins (
 id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(50) NOT NULL UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS plans (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL UNIQUE,
 duration_months INT NOT NULL,
 price DECIMAL(10,2) NOT NULL DEFAULT 0,
 description TEXT NULL
);
CREATE TABLE IF NOT EXISTS trainers (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(120) NOT NULL,
 email VARCHAR(150) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 specialty VARCHAR(120) DEFAULT '',
 salary DECIMAL(10,2) DEFAULT 0
);
CREATE TABLE IF NOT EXISTS members (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(120) NOT NULL,
 email VARCHAR(150) NOT NULL UNIQUE,
 phone VARCHAR(20) NOT NULL,
 gender VARCHAR(30) DEFAULT 'Prefer not to say',
 join_date DATE NOT NULL,
 plan_id INT NULL,
 status ENUM('Active','Inactive') NOT NULL DEFAULT 'Active',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_member_plan FOREIGN KEY (plan_id) REFERENCES plans(id) ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS attendance (
 id INT AUTO_INCREMENT PRIMARY KEY,
 member_id INT NOT NULL,
 attendance_date DATE NOT NULL,
 check_in TIME NOT NULL,
 CONSTRAINT fk_att_member FOREIGN KEY (member_id) REFERENCES members(id) ON DELETE CASCADE,
 UNIQUE KEY unique_daily_attendance (member_id, attendance_date)
);

INSERT IGNORE INTO admins(username,password_hash) VALUES
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2uheWG/igi.');
INSERT IGNORE INTO plans(name,duration_months,price,description) VALUES
('Starter',1,999,'Gym floor and basic equipment access'),
('Quarterly',3,2499,'Three-month membership with fitness assessment'),
('Annual Pro',12,8999,'Full-year access with monthly progress review');
INSERT IGNORE INTO trainers(name,email,phone,specialty,salary) VALUES
('Aarav Sharma','aarav@example.com','9876543210','Strength Training',30000),
('Priya Verma','priya@example.com','9876501234','Yoga & Mobility',28000);
INSERT IGNORE INTO members(name,email,phone,gender,join_date,plan_id,status) VALUES
('Rohan Mehta','rohan@example.com','9810012345','Male',CURDATE(),2,'Active'),
('Sneha Kapoor','sneha@example.com','9810098765','Female',CURDATE(),2,'Active');
