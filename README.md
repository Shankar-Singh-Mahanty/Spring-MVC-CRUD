# Spring MVC CRUD Application

This is a simple Spring MVC CRUD (Create, Read, Update, Delete) application. It demonstrates basic user management functionalities such as adding a new user, viewing users, updating user details, and deleting users. The project uses Spring Boot for easy setup and development.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [Built With](#built-with)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## Getting Started

These instructions will guide you through setting up and running the Spring MVC CRUD application on your local machine for development and testing purposes.

### Prerequisites

- Java Development Kit (JDK) 8 or later
- Apache Maven
- A relational database (e.g., MySQL, ORACLE)

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/shankar-singh-mahanty/spring-mvc-crud.git
    cd spring-mvc-crud
    ```

2. **Configure the database:**

    Update the `application.properties` file located in `src/main/resources` with your database configurations:

    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/your_database
    spring.datasource.username=your_username
    spring.datasource.password=your_password
    ```

3. **Build the project:**

    ```bash
    mvn clean install
    ```

### Running the Application

1. **Start the application:**

    ```bash
    mvn spring-boot:run
    ```

2. **Access the application:**

    Open your web browser and navigate to `http://localhost:8080`.

## Built With

- [Spring Boot](https://spring.io/projects/spring-boot) - Framework for building Java applications
- [Maven](https://maven.apache.org/) - Dependency management and build tool

## Contributing

Please explore the repository for details on the code of conduct and the process for submitting pull requests.

## Acknowledgments

- Inspired by the [Spring Framework Documentation](https://spring.io/guides)
- Thanks to the open-source community for their valuable contributions and resources.
