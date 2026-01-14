<h1 align="center"> Expense Tracker </h1>
<p align="center">The Comprehensive, Self-Hosted Financial Management Solution Built on Spring Boot 3</p>

<p align="center">
  <img alt="Build" src="https://img.shields.io/badge/Build-Passing-brightgreen?style=for-the-badge">
  <img alt="Issues" src="https://img.shields.io/badge/Issues-0%20Open-blue?style=for-the-badge">
  <img alt="Contributions" src="https://img.shields.io/badge/Contributions-Welcome-orange?style=for-the-badge">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge">
</p>
<!-- 
  **Note:** These are static placeholder badges. Replace them with your project's actual badges.
  You can generate your own at https://shields.io
-->

## 📑 Table of Contents

- [⭐ Overview](#-overview)
- [✨ Key Features](#-key-features)
- [🛠️ Tech Stack & Architecture](#-tech-stack--architecture)
- [📁 Project Structure](#-project-structure)
- [🚀 Getting Started](#-getting-started)
- [🔧 Usage](#-usage)
- [🤝 Contributing](#-contributing)
- [📝 License](#-license)

---

## ⭐ Overview

Expense Tracker is a robust, self-hosted web application designed to give users granular control over their personal or small business expenditures. Developed using the modern Spring Boot framework, this application provides a structured, secure, and visually appealing environment for recording, categorizing, and analyzing all financial transactions.

### The Problem

> Tracking finances across fragmented systems, such as complicated spreadsheets, scattered notes, or relying solely on bank statements, is inefficient, prone to human error, and severely lacks real-time, actionable insights. Users struggle to identify spending patterns, adhere to budgets, or generate rapid reports necessary for financial review or tax preparation. The lack of a centralized, secure system often leads to financial ambiguity and poor decision-making regarding personal or operational capital.

### The Solution

Expense Tracker eliminates the financial tracking burden by providing a singular, centralized platform built for stability and ease of use. It utilizes Java Persistence API (JPA) for reliable data storage and employs a clear, interactive dashboard rendered via Thymeleaf templates. This application ensures data integrity, offers comprehensive categorization tools, and generates visual reports immediately, transforming raw transaction data into meaningful financial intelligence. By focusing on essential CRUD operations for transactions and categories, Expense Tracker empowers users to achieve true financial clarity.

### Architecture Overview

This project follows a classic server-side rendered **Monolithic Architecture** powered entirely by **Spring Boot**. The backend handles business logic (Services), persistence (JPA Repositories), and routing (Controllers). The frontend is built using **Thymeleaf**, ensuring server-rendered HTML pages, enhanced by client-side JavaScript for dynamic elements like data tables and interactive charts. Persistence is handled by connecting to a relational database using the robust **MySQL Connector/J**. The entire application is packaged for convenient distribution using **Docker**.

---

## ✨ Key Features

The Expense Tracker application provides core financial management functionalities centered around accuracy, visualization, and user control. These features are enabled by dedicated controllers, data models, and specialized static assets designed for reporting.

### 💸 Core Transaction Management (CRUD)
The system is built around comprehensive management of individual financial entries.
*   **Input & Tracking:** Users can rapidly **add** new transactions, capturing essential details such as amount, date, description, and associated category (implemented via `add-transaction.html` and `Transaction.java`).
*   **Modification:** Easily **edit** existing transactions to correct errors or update details, ensuring accuracy in long-term financial records (enabled by `edit-transaction.html`).
*   **Detailed Views:** Review the complete history of all expenditures and incomes in a well-structured format (served by `transactions.html`, leveraging datatable scripts for filtering and sorting).

### 🏷️ Customizable Category Organization
Effective financial tracking requires structured organization, which is provided through robust category management.
*   **Creation:** Define custom spending categories tailored to specific needs (e.g., 'Groceries', 'Utilities', 'Software Subscriptions') via the dedicated interface (`create-new-category.html`).
*   **Administration:** View, update, or remove existing categories quickly, maintaining an organized and relevant classification system (managed by `categories.html` and `edit-category.html`, controlled by `CategoryController.java`).

### 📊 Interactive Dashboard & Reporting
The application’s strength lies in transforming raw data into meaningful insights.
*   **Financial Snapshot:** A central dashboard provides an immediate, high-level overview of recent activity and overall financial status (driven by `DashboardController.java` and displayed in `index.html`).
*   **Visual Analytics:** Generate dynamic, high-impact financial reports utilizing various chart types—including area, bar, and pie—to visualize spending distributions and trends over time (supported by `reports.html` and assets like `chart-pie-demo.js`, `chart-bar-demo.js`, and `chart-area-demo.js`).
*   **Detailed Data Display:** All reports and transaction lists leverage dedicated JavaScript for interactive, paginated data tables, allowing users to quickly search and filter large datasets efficiently (utilizing `datatables-simple-demo.js` and `datatables-demo.js`).

### 🚀 Consistent Deployment
*   **Docker Ready:** The inclusion of a dedicated `Dockerfile` ensures that the application can be built and deployed consistently across various environments with minimal setup configuration, guaranteeing reproducible results for both development and production use.

---

## 🛠️ Tech Stack & Architecture

Expense Tracker is engineered for performance and scalability using proven enterprise technologies centered around the Spring framework ecosystem and Java 17.

| Technology | Purpose | Why it was Chosen |
| :--- | :--- | :--- |
| **Primary Language** | Java 17 | Provides long-term support (LTS), robust performance, and a massive ecosystem ideal for enterprise-grade web applications. |
| **Framework** | Spring Boot 3.3.5 | Simplifies the setup and configuration of Spring applications, enabling rapid development and providing built-in features like auto-configuration and production-ready monitoring. |
| **Data Persistence** | Spring Boot Starter Data JPA | Offers a powerful object-relational mapping (ORM) layer, making it easy to interact with the database using Java objects rather than raw SQL. |
| **Web Rendering** | Spring Boot Starter Thymeleaf | A modern, server-side template engine that processes HTML efficiently, enabling dynamic content rendering directly on the server before delivery to the client. |
| **Database Connector** | MySQL Connector/J | The verified, official JDBC driver for MySQL, ensuring reliable, high-performance connectivity to the relational database back-end for persistent storage. |
| **API & Web Handling** | Spring Boot Starter Web | Provides the necessary libraries (like Tomcat and Spring MVC) to build robust, scalable web applications and handle HTTP requests and routing. |
| **Validation** | Spring Boot Starter Validation | Integrates the Bean Validation API (JSR 380), allowing developers to easily enforce data integrity and constraints directly on data models (`Category.java`, `Transaction.java`). |
| **Development** | Spring Boot Devtools | Enhances the developer experience by providing automatic application restarts, live reload capabilities, and sensible defaults during development phases. |
| **Build Tool** | Maven (`pom.xml`) | A robust project management and comprehension tool that provides dependency management, standard build lifecycle, and simplified project structure definition. |
| **Deployment** | Docker (`Dockerfile`) | Facilitates lightweight, portable, and self-sufficient containerization of the application, standardizing the execution environment. |

---

## 📁 Project Structure

The project follows a standard Spring Boot application structure, clearly segregating web resources (Thymeleaf templates, static assets) from the core Java business logic (models, services, and controllers).

```
Ravindra-singh-pokhriyal-Expense-Tracker-dc15dda/
├── 📄 Dockerfile                                    # Configuration file for creating a repeatable Docker image
├── 📄 .gitignore                                    # Specifies intentionally untracked files to ignore
├── 📄 pom.xml                                       # Maven Project Object Model file (defines dependencies and build process)
├── 📂 src/                                          # Main source directory
│   ├── 📂 test/                                     # Test resources
│   │   └── 📂 java/                                 
│   │       └── 📂 com/
│   │           └── 📂 expensetracker/
│   │               └── 📂 expensetracker/
│   │                   └── 📄 ExpensetrackerApplicationTests.java # Spring Boot test file
│   └── 📂 main/                                     # Main application source code
│       ├── 📂 resources/                            # Non-Java resources (config, templates, static assets)
│       │   ├── 📄 application.properties             # Spring Boot configuration file (used for database connection, etc.)
│       │   ├── 📂 static/                           # Publicly accessible static web assets
│       │   │   ├── 📂 js/
│       │   │   │   ├── 📄 datatables-simple-demo.js # JavaScript for initializing and customizing data tables
│       │   │   │   └── 📄 scripts.js                 # General front-end scripting for layout and interactivity
│       │   │   ├── 📂 assets/
│       │   │   │   ├── 📂 demo/                      # JavaScript files for chart demonstrations
│       │   │   │   │   ├── 📄 chart-pie-demo.js
│       │   │   │   │   ├── 📄 datatables-demo.js
│       │   │   │   │   ├── 📄 chart-bar-demo.js
│       │   │   │   │   └── 📄 chart-area-demo.js
│       │   │   │   └── 📂 img/
│       │   │   │       └── 📄 error-404-monochrome.svg # Error page asset
│       │   │   └── 📂 css/
│       │   │       ├── 📄 styles.css                  # Core application CSS styles
│       │   │       └── 📄 dashboard.css               # Specific styles for the dashboard view
│       │   └── 📂 templates/                         # Thymeleaf HTML templates for server-side rendering
│       │       ├── 📄 transactions.html              # Page for listing and managing transactions
│       │       ├── 📄 categories.html                # Page for category management
│       │       ├── 📄 add-transaction.html           # Form for creating a new transaction
│       │       ├── 📄 create-new-category.html       # Form for creating a new category
│       │       ├── 📄 edit-transaction.html          # Form for editing an existing transaction
│       │       ├── 📄 index.html                     # The main application dashboard view
│       │       ├── 📄 edit-category.html             # Form for editing an existing category
│       │       ├── 📄 reports.html                   # Page for displaying financial reports and charts
│       │       └── 📂 layouts/
│       │           └── 📄 master.html                # Base layout template used by other pages
│       └── 📂 java/
│           └── 📂 com/
│               └── 📂 expensetracker/
│                   └── 📂 expensetracker/
│                       ├── 📄 ExpensetrackerApplication.java # Spring Boot application entry point
│                       ├── 📂 models/                        # Data Transfer Objects and JPA entities
│                       │   ├── 📄 Category.java
│                       │   └── 📄 Transaction.java
│                       ├── 📂 services/                      # Business logic layer
│                       │   ├── 📄 TransactionRepository.java # JPA Repository for transaction data access
│                       │   ├── 📄 CategoryRepository.java    # JPA Repository for category data access
│                       │   ├── 📄 TransactionService.java    # Service component for transaction logic
│                       │   └── 📄 CategoryService.java       # Service component for category logic
│                       └── 📂 controllers/                   # Web interface controllers (Spring MVC)
│                           ├── 📄 CategoryController.java    # Handles category related requests
│                           ├── 📄 DashboardController.java   # Handles the main dashboard view
│                           └── 📄 TransactionsController.java # Handles transaction related requests
└── 📂 .mvn/                                         # Maven wrapper configuration files
    └── 📂 wrapper/
        └── 📄 maven-wrapper.properties
```

---

## 🚀 Getting Started

To get the Expense Tracker application running locally, you must first ensure your development environment meets the necessary prerequisites.

### Prerequisites

The application is built on Java 17 and uses Maven for dependency management and building. Persistence requires a running MySQL database instance.

*   **Java Development Kit (JDK) 17 or higher**
*   **Apache Maven** (for building the project)
*   **Docker** (optional, but highly recommended for containerized setup)
*   **MySQL Database Instance** (accessible via JDBC connection string)

### Database Configuration

Before running the application, you must configure the connection details for your MySQL database in the `application.properties` file located at `src/main/resources/application.properties`.

1.  **Create a new database** (e.g., `expensetracker_db`) in your MySQL instance.
2.  **Edit `application.properties`** to include your connection credentials:

    ```properties
    # Example MySQL Configuration (adjust placeholders)
    spring.datasource.url=jdbc:mysql://localhost:3306/expensetracker_db?useSSL=false&serverTimezone=UTC
    spring.datasource.username=YOUR_MYSQL_USER
    spring.datasource.password=YOUR_MYSQL_PASSWORD
    spring.jpa.hibernate.ddl-auto=update
    spring.jpa.show-sql=true
    ```
    *Note: Setting `spring.jpa.hibernate.ddl-auto=update` allows Hibernate to manage the schema automatically based on the `Category.java` and `Transaction.java` models.*

### Installation (Building from Source)

If you prefer running the application directly from the source code without Docker, use the Maven wrapper scripts.

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Ravindra-singh-pokhriyal-Expense-Tracker-dc15dda/
    cd Ravindra-singh-pokhriyal-Expense-Tracker-dc15dda
    ```

2.  **Build the project using Maven:**
    This command compiles the Java code, runs tests (if enabled), and packages the application into an executable JAR file.
    ```bash
    ./mvnw clean install
    ```

3.  **Run the application:**
    Once the build is successful, run the generated JAR file:
    ```bash
    java -jar target/expensetracker-0.0.1-SNAPSHOT.jar
    ```

The application will start on the default Spring Boot port (usually `8080`).

### Installation (Docker Containerization)

For the most streamlined setup, use the provided `Dockerfile` to build and run a containerized version of the application.

1.  **Build the Docker image:**
    ```bash
    docker build -t expensetracker-app .
    ```

2.  **Run the Docker container:**
    You must map the application port and ensure the container can reach your configured MySQL database (or link a separate MySQL container if applicable).

    ```bash
    docker run -p 8080:8080 --name expense_app expensetracker-app
    ```
    *Ensure the database connection details in `application.properties` point to an accessible host and port, not `localhost`, if MySQL is running outside the container.*

---

## 🔧 Usage

Expense Tracker is a full-fledged web application accessible via your browser. Once the Spring Boot application is running, it exposes its functionality through the defined controllers (`DashboardController`, `TransactionsController`, `CategoryController`).

### Accessing the Application

Navigate to the following URL in your web browser:
```
http://localhost:8080/
```

This will load the main dashboard view (`index.html`).

### Key Navigation Points

The application is structured around its core feature set:

1.  **Dashboard (`/`):**
    *   Provides an overview of recent activities and key financial metrics, utilizing chart visualization scripts (`chart-area-demo.js`, etc.) to summarize financial health.

2.  **Managing Categories (`/categories`):**
    *   Use the category view to define new types of spending or revenue. Categories are managed through simple forms, linking directly to the persistence layer via `CategoryService`.

3.  **Recording Transactions (`/transactions`):**
    *   This is the primary data entry point. Users can navigate to the `add-transaction` view to input new expenses, associating them with a pre-defined category.
    *   Existing transactions can be reviewed, searched, and filtered on the main transactions list page, which employs dynamic data table functionality for efficiency.

4.  **Reports (`/reports`):**
    *   Access the dedicated reports page to generate and view visual summaries of spending over specific periods. The reports utilize the comprehensive set of client-side charting libraries included in the static assets to display complex data in an understandable format.

Since this is a web application with server-rendered views (Thymeleaf), all user interaction—data entry, modification, and deletion—occurs through standard HTTP form submissions handled by the respective controllers, ensuring data integrity is maintained through the Spring Validation starter.

---

## 🤝 Contributing

We welcome contributions to improve Expense Tracker! Your input helps make this project better for everyone, ensuring it remains a reliable and feature-rich tool for financial management.

### How to Contribute

1. **Fork the repository** - Click the 'Fork' button at the top right of this page.
2. **Create a feature branch** 
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes** - Improve code, documentation, or features. Focus on updating the services, controllers, and models (e.g., in `com.expensetracker.expensetracker`).
4. **Test thoroughly** - Ensure all functionality works as expected. Given the project uses `spring-boot-starter-test`, run existing tests or add new ones:
   ```bash
   ./mvnw test
   ```
5. **Commit your changes** - Write clear, descriptive commit messages.
   ```bash
   git commit -m 'Add: Amazing new feature that does X'
   ```
6. **Push to your branch**
   ```bash
   git push origin feature/amazing-feature
   ```
7. **Open a Pull Request** - Submit your changes for review against the main branch.

### Development Guidelines

- ✅ Follow the existing code style and conventions, particularly standard Java/Spring Boot practices.
- 📝 Add Javadoc comments for complex logic, methods, and public API interfaces within the service and controller layers.
- 🧪 Write unit and integration tests for new features and bug fixes, leveraging the `spring-boot-starter-test` dependency.
- 📚 Update documentation (including this README, if relevant) for any changed functionality or configuration requirements.
- 🔄 Ensure backward compatibility with existing data models (`Category.java`, `Transaction.java`) when making schema changes.
- 🎯 Keep commits focused and atomic, addressing one feature or fix per commit.

### Ideas for Contributions

We're looking for help with:

- 🐛 **Bug Fixes:** Report and fix bugs identified in the transaction or category management flows.
- ✨ **New Features:** Implement requested reporting features or advanced filtering options on the transaction table.
- 📖 **Documentation:** Improve README detail, add setup tutorials, especially for Docker deployments.
- 🎨 **UI/UX:** Enhance the user interface, particularly the responsiveness of the Thymeleaf templates and the visual appeal of the dashboard charts.
- ⚡ **Performance:** Optimize JPA queries within the `TransactionRepository` and `CategoryRepository` for large datasets.
- 🧪 **Testing:** Increase test coverage, particularly for service and controller logic.
- ♿ **Accessibility:** Ensure the web interface (HTML and CSS assets) adheres to modern accessibility standards.

### Code Review Process

- All submissions require review by project maintainers before merging.
- Maintainers will provide constructive feedback focused on quality and alignment with project goals.
- Changes may be requested before final approval.
- Once approved, your PR will be merged, and you will be credited for your work.

### Questions?

Feel free to open an issue for any questions or concerns regarding contribution, setup, or functionality. We're here to help!

---

<p align="center">Made By Ravindra Singh Pokhriyal</p>
<p align="center">
  <a href="#-table-of-contents">⬆️ Back to Top</a>
</p>
