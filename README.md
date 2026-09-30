# Childhood Stunting Analysis Using SQL

## Project Overview

This project analyzes the **Childhood Stunting Risk Factors** dataset from Kaggle using MySQL.

The objective is to explore patterns in childhood stunting risk and examine how it varies across demographic, socioeconomic, nutritional, healthcare, and living-condition factors.

The project follows a practical data analyst workflow:

**Raw dataset → Data cleaning → MySQL database → Exploratory SQL analysis**

---

## Dataset

**Dataset:** Childhood Stunting Risk Factors

**Source:** Kaggle — Victoria Hayes

**Dataset link:** https://www.kaggle.com/datasets/victoriahayes/stunting-toddler-dataset

The dataset contains information about children and related factors including:

* Child age and gender
* Birth length and birth weight
* Height and weight
* Mother's age and education
* Mother's height
* Antenatal care visits
* Exclusive breastfeeding
* Complementary feeding
* Immunization
* Diarrhea frequency
* Drinking water source
* Sanitation
* Economic level
* Residence type
* Deworming
* Stunting risk

---

## Data Preparation

The original Kaggle dataset contained **2,523 records and 20 columns**.

Before importing the data into MySQL, the dataset was cleaned and prepared for analysis.

### Cleaning steps

* Reviewed the dataset structure and data types
* Identified missing values
* Removed records containing missing values
* Checked for duplicate records
* Standardized column names to lowercase `snake_case`
* Prepared the cleaned dataset for MySQL import

After cleaning, the dataset contained:

|                 | Records | Columns |
| --------------- | ------: | ------: |
| Raw dataset     |   2,523 |      20 |
| Cleaned dataset |   2,223 |      20 |

The cleaned dataset contained **no missing values and no duplicate records**.

> The SQL analysis in this project is performed on the cleaned dataset.

---

## Analysis Questions

The SQL analysis explores questions such as:

### Population Overview

* How is the child population distributed by gender?
* How is stunting risk distributed across the dataset?

### Age Analysis

* How are children distributed across different ages?
* How are children distributed across age groups?
* How does stunting risk vary across age groups?

### Maternal and Economic Factors

* What is the distribution of mothers' education levels?
* How does stunting risk vary by mother's education?
* How are children distributed across economic levels?
* How does stunting risk vary by economic level?

### Living Conditions

* How does stunting risk vary by residence type?
* What is the distribution of sanitation facilities?
* How does stunting risk vary by sanitation conditions?
* How does stunting risk vary by drinking water source?

### Nutrition and Child-Care Practices

* How does stunting risk vary by exclusive breastfeeding status?
* How does stunting risk vary by immunization status?
* How does stunting risk vary by deworming drug consumption?

### Growth and Healthcare

* How do average height, weight, birth length, and birth weight differ across stunting-risk groups?
* Does average ANC attendance differ across stunting-risk groups?
* Does average diarrhea frequency differ across stunting-risk groups?

### Targeted Analysis

* Which child-age groups contain more than 100 observations?
* Which mother's education groups contain more than 300 observations?
* What is the stunting-risk distribution among children aged 24 months or younger?

---

## SQL Skills Demonstrated

This project demonstrates practical use of:

* Database creation and selection
* Data inspection and validation
* `select`
* `where`
* `group by`
* `having`
* `order by`
* `case` statements
* Aggregate functions
* `count()`
* `avg()`
* Filtering and segmentation
* Exploratory data analysis

---

## Project Structure

```text
childhood-stunting-sql-analysis/
│
├── README.md
│
├── sql/
│   └── childhood_stunting_analysis.sql
│
└── data/
    └── README.md
```

The SQL file contains the complete analysis organized into logical sections, starting with data validation and progressing through exploratory and targeted analysis.

---

## Key Takeaway

This project focuses on **exploratory analysis and identifying patterns within the dataset**.

The analysis examines differences in stunting-risk distribution across demographic, socioeconomic, nutritional, healthcare, and environmental factors.

The findings should be interpreted as **associations observed within the dataset**, not as evidence that any individual factor causes or prevents childhood stunting.

---

## Tools Used

* **MS Excel**
* **MySQL**
* **MySQL Workbench**
* **CSV**
* **Kaggle dataset**

## Disclaimer

This project is intended for educational and portfolio purposes.

The analysis is based on the available Kaggle dataset and should not be interpreted as medical advice or as evidence of causal relationships between individual factors and childhood stunting.
