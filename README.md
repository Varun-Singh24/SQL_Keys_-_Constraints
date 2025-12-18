# 📌 SQL Keys & Constraints

This repository demonstrates **Keys and Constraints in SQL**, which are essential for maintaining **data integrity, consistency, and relationships** between tables in a relational database.

---

## 📘 What Are Keys & Constraints?

- **Keys** uniquely identify records in a table
- **Constraints** enforce rules on data to prevent invalid entries
- They help avoid duplicates, maintain relationships, and ensure correctness

---

## 1️⃣ Primary Key

### 📌 Definition
A **Primary Key** uniquely identifies each row in a table.  
It **cannot be NULL** and **must be unique**.

### 🧾 Code
```sql
CREATE TABLE IF NOT EXISTS Employees (
    Employee_ID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50)
);
````

```sql
DESCRIBE Employees;
SELECT * FROM Employees;
```

### 📘 Explanation

* `Employee_ID` uniquely identifies each employee
* `SERIAL` auto-increments the value
* Prevents duplicate or NULL employee IDs

### 🎯 Use Case

✔ Employee records
✔ User IDs in applications
✔ Any entity requiring unique identification

---

## 2️⃣ Composite Primary Key

### 📌 Definition

A **Composite Key** is a primary key made using **more than one column**.

### 🧾 Code

```sql
CREATE TABLE Orders (
    Order_ID SERIAL,
    Customer_ID INT,
    Order_Date DATE,
    PRIMARY KEY (Order_ID, Customer_ID)
);
```

```sql
DROP TABLE Orders;
DESCRIBE Orders;
```

### 📘 Explanation

* Combination of `Order_ID` and `Customer_ID` must be unique
* Useful when one column alone is not sufficient

### 🎯 Use Case

✔ Order history
✔ Enrollment systems
✔ Many-to-many relationships

---

## 3️⃣ Foreign Key

### 📌 Definition

A **Foreign Key** creates a relationship between two tables by referencing the **Primary Key** of another table.

### 🧾 Code

```sql
CREATE TABLE Customer (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Ph_No BIGINT
);
```

```sql
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
```

```sql
DESCRIBE Orders;
DESCRIBE Employees;
```

### 📘 Explanation

* Ensures that every order belongs to a valid customer
* Prevents orphan records

### 🎯 Use Case

✔ Orders linked to customers
✔ Employees linked to departments
✔ Maintaining relational integrity

---

## 4️⃣ UNIQUE Constraint

### 📌 Definition

The **UNIQUE** constraint ensures all values in a column are different.

### 🧾 Code

```sql
CREATE TABLE IF NOT EXISTS EMPL (
    EMP_ID SERIAL PRIMARY KEY,
    Email_ID VARCHAR(50) UNIQUE,
    Name VARCHAR(50),
    Department VARCHAR(50)
);
```

```sql
DESCRIBE EMPL;
```

### 📘 Explanation

* No two employees can have the same email
* Allows NULL values (depending on DB)

### 🎯 Use Case

✔ Email IDs
✔ Usernames
✔ Phone numbers

---

## 5️⃣ Composite UNIQUE Constraint

### 📌 Definition

Ensures a **combination of columns** is unique.

### 🧾 Code

```sql
DROP TABLE IF EXISTS EMPL;

CREATE TABLE IF NOT EXISTS EMPL (
    EMP_ID SERIAL PRIMARY KEY,
    Email VARCHAR(50) UNIQUE,
    Phone INT UNIQUE,
    Name VARCHAR(50),
    Department VARCHAR(50),
    UNIQUE (Email, Phone)
);
```

### 📘 Explanation

* Both `Email` and `Phone` together must be unique
* Prevents duplicate contact records

### 🎯 Use Case

✔ Multi-field identity validation
✔ Contact management systems

---

## 6️⃣ CHECK Constraint

### 📌 Definition

The **CHECK** constraint validates values based on a condition.

### 🧾 Code

```sql
DROP TABLE IF EXISTS EMPL;

CREATE TABLE IF NOT EXISTS EMPL (
    EMP_ID SERIAL PRIMARY KEY,
    Age INT CHECK (Age > 18),
    Email VARCHAR(50) UNIQUE,
    Phone INT UNIQUE,
    Name VARCHAR(50),
    Department VARCHAR(50),
    UNIQUE (Email, Phone)
);

DESCRIBE EMPL;
```

### 📘 Explanation

* Ensures employee age is greater than 18
* Prevents invalid data entry

### 🎯 Use Case

✔ Age validation
✔ Salary limits
✔ Score or rating validation

---

## 🧠 Summary of Keys & Constraints

| Type          | Purpose                                 |
| ------------- | --------------------------------------- |
| Primary Key   | Uniquely identifies records             |
| Composite Key | Multiple columns as a unique identifier |
| Foreign Key   | Maintains table relationships           |
| UNIQUE        | Prevents duplicate values               |
| CHECK         | Validates data conditions               |

---

## 🎯 Why Keys & Constraints Matter

* Ensure **data accuracy**
* Prevent **duplicate & invalid data**
* Maintain **referential integrity**
* Essential for **production-ready databases**

---

## 🤝 Contributing

You can enhance this repo by adding: 

## 📄 License

This project is open-source and free for learning and practice.

```
