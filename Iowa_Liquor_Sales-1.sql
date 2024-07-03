CREATE TABLE `Dim_Date`  (
  `date_sk` int NOT NULL,
  `date_nk` date NOT NULL,
  `datetime_value` datetime NOT NULL,
  `QtrYear_SK` int NOT NULL,
  `QtrYear_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MonthYear_SK` int NOT NULL,
  `MonthYear_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Day_in_Month` int NOT NULL,
  `Day_in_Year` int NOT NULL,
  `Day_Count` int NOT NULL,
  `Day_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Day_Abr` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Week_in_Year` int NOT NULL,
  `Week_Count` int NOT NULL,
  `Month_ID` int NOT NULL,
  `Month_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Month_Abr` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Month_Count` int NOT NULL,
  `First_Day_of_Month` date NOT NULL,
  `Last_Day_of_Month` date NOT NULL,
  `Qtr_ID` int NOT NULL,
  `Date_Year` int NOT NULL,
  PRIMARY KEY (`date_sk`) USING BTREE,
  UNIQUE INDEX `date_nk`(`date_nk` ASC) USING BTREE,
  UNIQUE INDEX `datetime_value`(`datetime_value` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_iowa_city`  (
  `City_SK` int NOT NULL AUTO_INCREMENT,
  `City` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `FIPS` int NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`City_SK`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_iowa_county`  (
  `County_SK` int NOT NULL AUTO_INCREMENT,
  `County` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `FIPS` int NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`County_SK`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_iowa_liquor_Product_Categories`  (
  `Category_SK` int NOT NULL AUTO_INCREMENT,
  `Category_Number` int NOT NULL,
  `Category_Name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Category_SK`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_iowa_liquor_Products`  (
  `Item_SK` int NOT NULL,
  `Item_Number` int NOT NULL,
  `Item_Number_C` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Item_Description` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Category_SK` int NULL DEFAULT NULL,
  `Vendor_SK` int NOT NULL,
  `Bottle_Volume_ml` int NULL DEFAULT NULL,
  `Pack` int NULL DEFAULT NULL,
  `Inner_Pack` int NULL DEFAULT NULL,
  `Age` int NULL DEFAULT NULL,
  `Proof` int NULL DEFAULT NULL,
  `List_Date` date NULL DEFAULT NULL,
  `UPC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SCC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `State_Bottle_Cost` decimal(19, 4) NULL DEFAULT NULL,
  `State_Case_Cost` decimal(19, 4) NULL DEFAULT NULL,
  `State_Bottle_Retail` decimal(19, 4) NULL DEFAULT NULL,
  `Report_Date` date NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Item_SK`) USING BTREE,
  INDEX `Vendor_SK`(`Vendor_SK` ASC) USING BTREE,
  INDEX `Category_SK`(`Category_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_Iowa_Liquor_Stores`  (
  `Store_SK` int NOT NULL,
  `Store_ID` int NOT NULL,
  `Store_Name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Store_Status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Zip_Code` int NULL DEFAULT NULL,
  `City_SK` int NOT NULL,
  `County_SK` int NOT NULL,
  `City` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `County` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `State` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Report_Date` datetime NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Store_SK`) USING BTREE,
  INDEX `City_SK`(`City_SK` ASC) USING BTREE,
  INDEX `County_SK`(`County_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `Dim_iowa_liquor_Vendors`  (
  `Vendor_SK` int NOT NULL,
  `Vendor_Number` int NOT NULL,
  `Vendor_Name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Vendor_SK`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `FCT_iowa_city_population_by_year`  (
  `City_Pop_SK` int NOT NULL AUTO_INCREMENT,
  `City_SK` int NOT NULL,
  `City` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `FIPS` int NULL DEFAULT NULL,
  `DataAsOf` datetime(3) NULL DEFAULT NULL,
  `Population_Year` int NULL DEFAULT NULL,
  `Population` int NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`City_Pop_SK`) USING BTREE,
  INDEX `City_SK`(`City_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `FCT_iowa_county_population_by_year`  (
  `County_Pop_SK` int NOT NULL AUTO_INCREMENT,
  `County_SK` int NOT NULL,
  `County` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `FIPS` int NULL DEFAULT NULL,
  `DateAsOf` date NULL DEFAULT NULL,
  `Population_Year` int NULL DEFAULT NULL,
  `Population` int NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`County_Pop_SK`) USING BTREE,
  INDEX `County_SK`(`County_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `fct_iowa_liquor_sales_invoice_header`  (
  `Invoice_Number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Invoice_Date` datetime(3) NOT NULL,
  `InvoiceDate_SK` int NOT NULL,
  `Store_SK` int NULL DEFAULT NULL,
  `Store_Number` int NULL DEFAULT NULL,
  `Invoice_Bottles_Sold` int NULL DEFAULT NULL,
  `Invoice_Sale_Dollars` decimal(19, 4) NULL DEFAULT NULL,
  `Invoice_Volume_Sold_Liters` decimal(19, 4) NULL DEFAULT NULL,
  `Invoice_Volume_Sold_Gallons` decimal(19, 4) NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Invoice_Number`) USING BTREE,
  INDEX `Store_SK`(`Store_SK` ASC) USING BTREE,
  INDEX `fk_datesk`(`InvoiceDate_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

CREATE TABLE `fct_iowa_liquor_sales_invoice_lineitem`  (
  `Invoice_Number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Invoice_Number_LineNo` int NULL DEFAULT NULL,
  `Invoice_Item_Number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Item_SK` int NOT NULL,
  `Item_Number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Pack` int NULL DEFAULT NULL,
  `Bottle_Volume_ml` int NULL DEFAULT NULL,
  `State_Bottle_Cost` decimal(19, 4) NULL DEFAULT NULL,
  `State_Bottle_Retail` decimal(19, 4) NULL DEFAULT NULL,
  `Bottles_Sold` int NULL DEFAULT NULL,
  `Sale_Dollars` decimal(19, 4) NULL DEFAULT NULL,
  `Volume_Sold_Liters` decimal(19, 4) NULL DEFAULT NULL,
  `Volume_Sold_Gallons` decimal(19, 4) NULL DEFAULT NULL,
  `DI_JobID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DI_CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Invoice_Item_Number`) USING BTREE,
  INDEX `Invoice_Number`(`Invoice_Number` ASC) USING BTREE,
  INDEX `Item_SK`(`Item_SK` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

ALTER TABLE `Dim_iowa_liquor_Products` ADD CONSTRAINT `dim_iowa_liquor_products_ibfk_1` FOREIGN KEY (`Vendor_SK`) REFERENCES `Dim_iowa_liquor_Vendors` (`Vendor_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `Dim_iowa_liquor_Products` ADD CONSTRAINT `dim_iowa_liquor_products_ibfk_2` FOREIGN KEY (`Category_SK`) REFERENCES `Dim_iowa_liquor_Product_Categories` (`Category_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `Dim_Iowa_Liquor_Stores` ADD CONSTRAINT `dim_iowa_liquor_stores_ibfk_1` FOREIGN KEY (`City_SK`) REFERENCES `Dim_iowa_city` (`City_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `Dim_Iowa_Liquor_Stores` ADD CONSTRAINT `dim_iowa_liquor_stores_ibfk_2` FOREIGN KEY (`County_SK`) REFERENCES `Dim_iowa_county` (`County_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `FCT_iowa_city_population_by_year` ADD CONSTRAINT `fct_iowa_city_population_by_year_ibfk_1` FOREIGN KEY (`City_SK`) REFERENCES `Dim_iowa_city` (`City_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `FCT_iowa_county_population_by_year` ADD CONSTRAINT `fct_iowa_county_population_by_year_ibfk_1` FOREIGN KEY (`County_SK`) REFERENCES `Dim_iowa_county` (`County_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `fct_iowa_liquor_sales_invoice_header` ADD CONSTRAINT `fct_iowa_liquor_sales_invoice_header_ibfk_1` FOREIGN KEY (`Store_SK`) REFERENCES `Dim_Iowa_Liquor_Stores` (`Store_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `fct_iowa_liquor_sales_invoice_header` ADD CONSTRAINT `fk_datesk` FOREIGN KEY (`InvoiceDate_SK`) REFERENCES `Dim_Date` (`date_sk`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `fct_iowa_liquor_sales_invoice_lineitem` ADD CONSTRAINT `fct_iowa_liquor_sales_invoice_lineitem_ibfk_1` FOREIGN KEY (`Invoice_Number`) REFERENCES `fct_iowa_liquor_sales_invoice_header` (`Invoice_Number`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `fct_iowa_liquor_sales_invoice_lineitem` ADD CONSTRAINT `fct_iowa_liquor_sales_invoice_lineitem_ibfk_2` FOREIGN KEY (`Item_SK`) REFERENCES `Dim_iowa_liquor_Products` (`Item_SK`) ON DELETE RESTRICT ON UPDATE RESTRICT;

