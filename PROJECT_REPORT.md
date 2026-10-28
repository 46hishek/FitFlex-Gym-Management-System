# FitFlex — Gym & Fitness Management System
## Project 2: Web Application Development

### Abstract
FitFlex is a web-based gym administration system developed with PHP, MySQL, HTML, CSS and JavaScript. It centralizes member records, trainers, membership plans, attendance and member reports in one responsive interface.

### Problem Statement
Manual management of gym records can lead to duplicate entries, slow searching and attendance mistakes. This project provides a centralized system to make these daily tasks easier.

### Objectives
- Build an easy-to-use responsive web application.
- Authenticate the administrator.
- Manage members, trainers and membership plans.
- Record and search daily attendance.
- Store data in a relational database.
- Validate user input and provide member reports.

### Technology Stack
- Frontend: HTML5, CSS3, JavaScript
- Backend: PHP 8+ with PDO
- Database: MySQL/MariaDB
- Local server: XAMPP (Apache and MySQL)

### Modules
1. Admin login/logout
2. Dashboard summary
3. Member CRUD, search and status filter
4. Trainer creation, search and deletion
5. Membership plan management
6. Attendance check-in and date search
7. Member report and print-to-PDF
8. Change administrator password

### Database Design
- `admins`: username and password hash.
- `members`: profile, contact, join date, plan and status.
- `trainers`: trainer contact details, specialty and salary.
- `plans`: membership duration, price and description.
- `attendance`: member, date and check-in time. A unique constraint prevents duplicate daily attendance.

### Validation and Security
PDO prepared statements are used for SQL operations, form inputs are validated, output is escaped with `htmlspecialchars`, and password hashes are stored rather than plain-text passwords. A production deployment should add CSRF protection, HTTPS, rate limiting and regular backups.

### Installation
1. Copy the project folder to `C:\\xampp\\htdocs\\`.
2. Start Apache and MySQL in XAMPP.
3. Import `database.sql` using phpMyAdmin.
4. Visit `http://localhost/FitFlex_PHP_Gym_Management/`.
5. Sign in using `admin` / `password`.
6. Change the demo password.

### Testing
- Successful and unsuccessful login
- Add member with valid and invalid fields
- Reject duplicate member email
- Search/filter, edit and delete member
- Add/search/delete trainers
- Create/delete membership plan
- Mark attendance and reject duplicate same-day check-in
- Change password
- Print member report
- Check mobile responsive layout

### Conclusion
FitFlex demonstrates the practical use of PHP, MySQL, frontend technologies, authentication, CRUD operations, validation and relational data storage for a gym management workflow.
