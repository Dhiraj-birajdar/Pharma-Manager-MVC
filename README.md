# Pharma Manager

Pharma Manager is an MVC web application designed for pharmacies to manage billing and inventory. The application provides an intuitive interface for pharmacists to handle daily operations efficiently.

## Tech Stack

- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Backend**: PHP
- **Database**: MySQL
- **Server**: Apache (included with XAMPP)

## Additional Technologies

- **XAMPP**: A free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB (MySQL), and interpreters for scripts written in PHP and Perl.

## Requirements

To run the Pharma Manager application, you will need:

- **PHP**: Version 7.4 or later
- **XAMPP**: Includes Apache, MySQL, and PHP
- **Web Browser**: For accessing the web application

## Installation and Setup

1. **Install XAMPP**:
   - Download and install XAMPP from [Apache Friends](https://www.apachefriends.org/index.html).
   - Ensure Apache and MySQL services are running.

2. **Database Setup**:
   - Create a new database named `pharmacy` in MySQL.
   - Import the `data.sql` file located in the project's root directory into the `pharmacy` database. This will set up the necessary tables and initial data.

3. **Project Setup**:
   - Place the project files in the `htdocs` directory of your XAMPP installation.
   - Update the database connection settings in `config.php` if necessary.

4. **Accessing the Application**:
   - Open your web browser and navigate to `http://localhost/pharma-manager` (replace `pharma-manager` with the directory name of your project).

## Usage

- **Admin Credentials**: Use the default admin credentials to log in:
  - **Username**: `admin`
  - **Password**: `admin`

- Alternatively, you can register a new account.

## Features

- **Billing Management**: Handle transactions and generate invoices.
- **Inventory Management**: Track stock levels, manage product details, and view inventory reports.
- **User Management**: Admin can manage users and monitor activities.

## Contributions

- **Lankesh Renuse**: [GitHub Profile](https://github.com/lankesh-renuse)

## License

This project is free to use, modify, and sell. It is licensed under the MIT License - see the [LICENSE](https://www.apache.org/licenses/LICENSE-2.0.html) file for details.
