CREATE DATABASE bank_loan_analysis;
USE bank_loan_analysis;
CREATE TABLE bank_loans (
    Loan_ID VARCHAR(20),
    Gender VARCHAR(10),
    Married VARCHAR(10),
    Dependents VARCHAR(10),
    Education VARCHAR(20),
    Self_Employed VARCHAR(10),
    ApplicantIncome INT,
    CoapplicantIncome FLOAT,
    LoanAmount FLOAT,
    Loan_Amount_Term FLOAT,
    Credit_History FLOAT,
    Property_Area VARCHAR(20),
    Loan_Status VARCHAR(5)
);
SELECT * FROM bank_loans;
SELECT COUNT(*) AS Total_Applications
FROM bank_loans;
SELECT COUNT(*) AS Approved_Loans
FROM bank_loans
WHERE Loan_Status='Y';
SELECT COUNT(*) AS Rejected_Loans
FROM bank_loans
WHERE Loan_Status='N';
SELECT
ROUND(
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2)
AS Approval_Rate
FROM bank_loans;
SELECT ROUND(AVG(LoanAmount),2)
AS Average_Loan
FROM bank_loans;
SELECT MAX(LoanAmount)
AS Highest_Loan
FROM bank_loans;
SELECT ROUND(AVG(ApplicantIncome),2)
AS Average_Income
FROM bank_loans;
SELECT Gender,
ROUND(AVG(ApplicantIncome),2)
AS Average_Income
FROM bank_loans
GROUP BY Gender;
SELECT Gender,
Loan_Status,
COUNT(*) AS Total
FROM bank_loans
GROUP BY Gender, Loan_Status;
SELECT Education,
Loan_Status,
COUNT(*) AS Total
FROM bank_loans
GROUP BY Education, Loan_Status;
SELECT Property_Area,
Loan_Status,
COUNT(*) AS Total
FROM bank_loans
GROUP BY Property_Area, Loan_Status;
SELECT Property_Area,
ROUND(AVG(LoanAmount),2)
AS Average_Loan
FROM bank_loans
GROUP BY Property_Area;
SELECT Education,
ROUND(AVG(LoanAmount),2)
AS Average_Loan
FROM bank_loans
GROUP BY Education;
SELECT Property_Area,
COUNT(*) AS Applicants
FROM bank_loans
GROUP BY Property_Area;
SELECT Married,
COUNT(*) AS Applicants
FROM bank_loans
GROUP BY Married;
SELECT Credit_History,
COUNT(*) AS Total
FROM bank_loans
GROUP BY Credit_History;
SELECT Credit_History,
Loan_Status,
COUNT(*) AS Total
FROM bank_loans
GROUP BY Credit_History, Loan_Status;
SELECT Loan_ID,
LoanAmount
FROM bank_loans
ORDER BY LoanAmount DESC
LIMIT 5;
SELECT Loan_ID,
ApplicantIncome
FROM bank_loans
ORDER BY ApplicantIncome DESC
LIMIT 5;
SELECT Education,
Gender,
ROUND(AVG(ApplicantIncome),2)
AS Average_Income
FROM bank_loans
GROUP BY Education, Gender;

















































































































