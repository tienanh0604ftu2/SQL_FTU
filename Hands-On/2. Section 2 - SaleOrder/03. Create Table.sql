use SaleOrder;

CREATE TABLE customer(
    CustomerID INT NOT NULL PRIMARY KEY,
    CustomerFirstName VARCHAR(50) NOT NULL,
    CustomerLastName VARCHAR(50) NOT NULL,
    CustomerAddress VARCHAR(50) NOT NULL,
    CustomerSuburb VARCHAR(50) NULL,
    CustomerCity VARCHAR(50) NOT NULL,
    CustomerPostCode CHAR(4) NULL,
    CustomerPhoneNumber CHAR(12) NULL
);

CREATE TABLE inventory (
    InventoryID TINYINT NOT NULL PRIMARY KEY,
    InventoryName VARCHAR(50) NOT NULL,
    InventoryDescription VARCHAR(255) NULL
);

CREATE TABLE employee (
    EmployeeID TINYINT NOT NULL PRIMARY KEY,
    EmployeeFirstName VARCHAR(50) NOT NULL,
    EmployeeLastName VARCHAR(50) NOT NULL,
    EmployeeExtension CHAR(4) NULL
);

CREATE TABLE sale (
    SaleID TINYINT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    InventoryID TINYINT NOT NULL,
    EmployeeID TINYINT NOT NULL,
    SaleDate DATE NOT NULL,
    SaleQuantity INT NOT NULL,
    SaleUnitPrice DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE,
    CONSTRAINT fk_inventory FOREIGN KEY (InventoryID) REFERENCES inventory(InventoryID) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE,
    CONSTRAINT fk_employee FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeID) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);