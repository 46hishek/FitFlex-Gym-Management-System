# FitFlex Gym Management System (PHP + MySQL)

## Requirements
- XAMPP (Apache + MySQL)
- PHP 8.x and MySQL/MariaDB, included in XAMPP
- Browser

## Installation (Windows / XAMPP)
1. Extract this project folder.
2. Copy the `FitFlex_PHP_Gym_Management` folder into `C:\xampp\htdocs\`.
3. Open XAMPP Control Panel. Click **Start** for Apache and MySQL.
4. Open `http://localhost/phpmyadmin`.
5. Choose **Import**, select the included `database.sql`, then click **Import/Go**. The script creates `fitflex_gym` and demo records.
6. Open `http://localhost/FitFlex_PHP_Gym_Management/` in your browser.
7. Login with username `admin` and password `password`.

## Modules
- Admin login/logout and password change
- Dashboard metrics
- Member add/list/search/filter/edit/delete
- Trainer add/list/search/delete
- Membership plan add/list/delete
- Attendance mark and date/member search; duplicate per-day check-in prevented by unique key
- Member report with browser Print / Save as PDF
- Responsive UI

## Database tables
`admins`, `members`, `trainers`, `plans`, `attendance`.

## Security / project scope
PDO prepared statements are used for database operations and passwords are hashed. This is an educational demo; before public deployment, add CSRF protection, rate limiting, role management, HTTPS, and backups.
