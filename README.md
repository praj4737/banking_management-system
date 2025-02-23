# MyBank - Client-Side Banking Application

## Table of Contents
- [About the Project](#about-the-project)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [System Requirements](#system-requirements)
- [Installation](#installation)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Set Up the Database](#2-set-up-the-database)
  - [3. Configure the Application](#3-configure-the-application)
  - [4. Run the Application](#4-run-the-application)

---

## About the Project
**MyBank** is a client-side banking application designed to streamline all essential banking processes. It provides users with seamless access to account management, fund transfers (without payment gateways), loan processing, and profile management. Built using **Spring MVC**, MyBank ensures a smooth and secure banking experience.

The project is maintained by **Pranav Raj** and is currently in its **first version**.

## Features
- **User Authentication**: Secure login and registration system.
- **Account Management**: View account details and balance.
- **Fund Transfers**: Transfer funds between accounts (without payment gateway integration).
- **Account Overview**: View transaction history and balance insights.
- **Loan Management**: Apply for and manage loans.
- **Profile Settings**: Update user details and preferences.
- **Account Deactivation**: Users can deactivate their accounts.

## Technologies Used
- **Backend**: Spring MVC, Java
- **Frontend**: JSP, HTML, CSS, JavaScript
- **Database**: MySQL Community Server

## System Requirements
- Windows 10/11, macOS, or Linux
- JDK 11 or later
- Apache Tomcat Server
- MySQL Community Server
- MySQL Workbench (optional for database management)

## Installation

### 1. Clone the Repository
```sh
git clone https://github.com/your-username/mybank.git
cd mybank
```

### 2. Set Up the Database
1. Install MySQL Community Server if not already installed.
2. Open MySQL Workbench (or any MySQL client) and create a new database:
   ```sql
   CREATE DATABASE banking_db;
   ```
3. Import the provided SQL file located in the `database_file` folder:
   ```sh
   mysql -u root -p banking_db < database_file/banking-db.sql
   ```

### 3. Configure the Application
1. Open the project in your preferred IDE (Eclipse, IntelliJ, etc.).
2. Locate the `application.properties` file in the `src/main/resources` folder.
3. Update the database connection settings:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/banking_db
   spring.datasource.username=root
   spring.datasource.password=yourpassword
   spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
   ```

### 4. Run the Application
1. Build and package the project:
   ```sh
   mvn clean install
   ```
2. Run the Spring Boot application:
   ```sh
   mvn spring-boot:run
   ```
3. Access the application in your browser:
   ```
   http://localhost:8080/
   ```

Now, you can log in or register to start using **MyBank**!

