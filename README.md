# 🛡 MySQL Constraints Practice – Mangata & Gallo

## 📌 Project Overview
This project focuses on creating MySQL tables with different **constraints** to ensure data accuracy, consistency, and integrity.  
The practice uses a fictional luxury jewelry brand, **Mangata & Gallo**, to simulate real-world database design for client, product, and order management.

The exercises cover:
- **Key constraints** – `PRIMARY KEY`, `UNIQUE`, `FOREIGN KEY`
- **Domain constraints** – `NOT NULL`, `CHECK`, `DEFAULT`
- **Referential integrity** – Maintaining relationships between tables

---

## 🏢 Industry Context
**Mangata & Gallo** is a luxury jewelry business requiring a database to manage clients, items, orders, staff, and contracts.  
The goal is to ensure that:
- Every record is uniquely identifiable.
- Invalid or inconsistent data cannot be entered.
- Relationships between tables remain intact.

---

## 🖼 Tables Created & Constraints Applied

### **1. Clients Table**
**Purpose:** Store customer information with unique identification and phone numbers.  

| Column Name | Data Type      | Constraints                   |
|-------------|---------------|--------------------------------|
| ClientID    | INT            | PRIMARY KEY, NOT NULL          |
| FullName    | VARCHAR(100)   | NOT NULL                       |
| PhoneNumber | INT            | UNIQUE, NOT NULL               |

---

### **2. Items Table**
**Purpose:** Store inventory details for products.  

| Column Name | Data Type      | Constraints                   |
|-------------|---------------|--------------------------------|
| ItemID      | INT            | PRIMARY KEY, NOT NULL          |
| ItemName    | VARCHAR(100)   | NOT NULL                       |
| Price       | DECIMAL(5,2)   | NOT NULL                       |

---

### **3. Orders Table**
**Purpose:** Manage purchase transactions with quantity limits and relational integrity.  

| Column Name | Data Type      | Constraints                   |
|-------------|---------------|--------------------------------|
| OrderID     | INT            | PRIMARY KEY, NOT NULL          |
| ItemID      | INT            | FOREIGN KEY → Items(ItemID)    |
| ClientID    | INT            | FOREIGN KEY → Clients(ClientID)|
| Quantity    | INT            | CHECK (Quantity < 4), NOT NULL |
| Cost        | DECIMAL(6,2)   | NOT NULL                       |

---

### **4. Staff Table** *(Bonus)*
**Purpose:** Maintain staff records with unique phone numbers.  

| Column Name | Data Type      | Constraints                   |
|-------------|---------------|--------------------------------|
| StaffID     | INT            | PRIMARY KEY, NOT NULL          |
| PhoneNumber | INT            | UNIQUE, NOT NULL               |
| FullName    | VARCHAR(100)   | NOT NULL                       |

---

### **5. ContractInfo Table** *(Bonus)*
**Purpose:** Store staff contracts with salary rules, default location, and staff type restrictions.  

| Column Name | Data Type      | Constraints                   |
|-------------|---------------|--------------------------------|
| ContractID  | INT            | PRIMARY KEY, NOT NULL          |
| StaffID     | INT            | FOREIGN KEY → Staff(StaffID)   |
| Salary      | DECIMAL(7,2)   | NOT NULL                       |
| Location    | VARCHAR(50)    | DEFAULT 'Texas', NOT NULL      |
| StaffType   | VARCHAR(20)    | CHECK ('Junior' or 'Senior'), NOT NULL |

---

## 🎯 Key Learning Outcomes
- Created normalized database tables with **primary, unique, and foreign keys**.
- Applied **domain constraints** (`NOT NULL`, `CHECK`, `DEFAULT`) to enforce business rules.
- Implemented **referential integrity** to maintain valid relationships between related tables.
- Simulated **retail/inventory/order** database design for a luxury brand.
