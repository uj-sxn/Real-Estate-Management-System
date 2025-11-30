# Real Estate Management System 🏠

## 📖 Overview
A full-stack application designed to streamline property management for **Real Estate Agents** and **Prospective Renters**. The system handles the entire lifecycle of a rental transaction, from property listing to booking and payments.


## 🛠️ Tech Stack
* **Database:** MySQL
* **Backend:** [Fast-API] Python
* **Frontend:** ReactJS
* **Tools:** Git, VS Code

## ✨ Key Features
* **Role-Based Access Control:** Distinct dashboards for **Agents** (listing management) and **Renters** (search & booking).
* **Advanced Search:** SQL-optimized queries allow users to filter properties by location, price range, and amenities.
* **Transaction Management:** Handles credit card storage and booking cancellations with automated refund logic.
* **Data Integrity:** Implements complex relational schema with foreign key constraints to ensure consistent data (User -> Credit Cards -> Bookings).

## 🗂️ Project Structure
* `src/`: Application source code.
* `database/`: SQL scripts for schema creation and dummy data population.
* `design/`: ER Diagrams and database architecture planning.

## 🔧 How to Run
1.  Clone the repository.
2.  Import `database/schema.sql` into your SQL workbench.
3.  Download the folder in `src`.
4.  Run the application locally using VS code.

