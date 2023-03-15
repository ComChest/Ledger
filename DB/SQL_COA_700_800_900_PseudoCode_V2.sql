Start at 700s -- skip and come back - possible "view within view situation"
 
700 Loans to Members -  Put all 701, 702, 703, 704, 705, 706, 707 Views in a Master view of 700
 
•      701 Loans
•      701.1 Commercial Loans
•      701.2 Agriculture Loans
•      701.3 Consumer Loans
•      701.4 Other Member Loans
•      701.5 Home Equity Loans
•      701.8 Net Commitment Fees—Loans to Members
•      701.9 Net Origination Fees(Costs)—Loans to Members
 
CREATE VIEW 701_Loans AS 
SELECT SUM(LoansAMT) AS TotalLoans 
FROM (
    SELECT LoansAMT FROM 701_1_Commercial_Loans
    UNION ALL
    SELECT LoansAMT FROM 701_2_Agriculture_Loans
    UNION ALL
    SELECT LoansAMT FROM 701_3_Consumer_Loans
    UNION ALL
    SELECT LoansAMT FROM 701_4_Other_Member_Loans
    UNION ALL
    SELECT LoansAMT FROM 701_5_Home_Equity_Loans
    UNION ALL
    SELECT LoansAMT FROM 701_8_Net_Commitment_Fees_Loans_to_Members
    UNION ALL
    SELECT LoansAMT FROM 701_9_Net_Origination_Fees_Costs_Loans_to_Members
) AS AllLoans;
 
 
-- Insert a new row into 701.1_Commercial_Loans
INSERT INTO 701_1_Commercial_Loans (LoansAMT, Date) 
VALUES (50000.00, '2022-01-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.1_Commercial_Loans
UPDATE 701_1_Commercial_Loans 
SET LoansAMT = 55000.00, Date = '2022-02-15' 
WHERE CommercialLoanID = 12345;
 
-- Insert a new row into 701.2_Agriculture_Loans
INSERT INTO 701_2_Agriculture_Loans (LoansAMT, Date) 
VALUES (25000.00, '2022-03-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.2_Agriculture_Loans
UPDATE 701_2_Agriculture_Loans 
SET LoansAMT = 27500.00, Date = '2022-04-10' 
WHERE AgricultureLoanID = 67890;
 
-- Insert a new row into 701.3_Consumer_Loans
INSERT INTO 701_3_Consumer_Loans (LoansAMT, Date) 
VALUES (15000.00, '2022-05-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.3_Consumer_Loans
UPDATE 701_3_Consumer_Loans 
SET LoansAMT = 17500.00, Date = '2022-06-20' 
WHERE ConsumerLoanID = 123456;
 
-- Insert a new row into 701.4_Other_Member_Loans
INSERT INTO 701_4_Other_Member_Loans (LoansAMT, Date) 
VALUES (10000.00, '2022-07-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.4_Other_Member_Loans
UPDATE 701_4_Other_Member_Loans 
SET LoansAMT = 11000.00, Date = '2022-08-05' 
WHERE OtherMemberLoanID = 234567;
 
-- Insert a new row into 701.5_Home_Equity_Loans
INSERT INTO 701_5_Home_Equity_Loans (LoansAMT, Date) 
VALUES (75000.00, '2022-09-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.5_Home_Equity_Loans
UPDATE 701_5_Home_Equity_Loans 
SET LoansAMT = 80000.00, Date = '2022-10-15' 
WHERE HomeEquityLoanID = 345678;
 
 
INSERT INTO 701_8_Net_Commitment_Fees_Loans_to_Members (LoansAMT, Date) 
VALUES (5000.00, '2022-11-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.8_Net_Commitment_Fees_Loans_to_Members
UPDATE 701_8_Net_Commitment_Fees_Loans_to_Members 
SET LoansAMT = 5500.00, Date = '2022-12-15' 
WHERE NetCommitmentFeeLoanID = 1234;
 
-- Insert a new row into 701.9_Net_Origination_Fees_Costs_Loans_to_Members
INSERT INTO 701_9_Net_Origination_Fees_Costs_Loans_to_Members (LoansAMT, Date) 
VALUES (2500.00, '2023-01-01');
 
-- Update the LoansAMT and Date fields in an existing row in 701.9_Net_Origination_Fees_Costs_Loans_to_Members
UPDATE 701_9_Net_Origination_Fees_Costs_Loans_to_Members 
SET LoansAMT = 2750.00, Date = '2023-02-20' 
WHERE NetOriginationFeeLoanID = 5678;
 
 
 702 Lines of Credit to Members
•      702.1 Lines of Credit to Members—Credit Cards
•      702.2 Lines of Credit—Cash Advances in Process
•      702.3 Net Origination Fees (Costs)—Lines of Credit
•      702.4 Net Commitment Fees (Costs)—Lines of Credit
 
 
CREATE VIEW 702_Lines_of_Credit_to_Members AS
SELECT SUM(LinesofMemberCreditAMT) AS Total_Lines_of_Credit_to_Members
FROM (
  SELECT LinesofMemberCreditAMT FROM 702.1_Lines_of_Credit_to_Members—Credit_Cards
  UNION ALL
  SELECT LinesofMemberCreditAMT FROM 702.2_Lines_of_Credit—Cash_Advances_in_Process
  UNION ALL
  SELECT LinesofMemberCreditAMT FROM 702.3_Net_Origination_Fees_(Costs)—Lines_of_Credit
  UNION ALL
  SELECT LinesofMemberCreditAMT FROM 702.4_Net_Commitment_Fees_(Costs)—Lines_of_Credit
) AS Lines_of_Credit;
 
-- Insert data into 702.1_Lines_of_Credit_to_Members—Credit_Cards
INSERT INTO 702.1_Lines_of_Credit_to_Members (LinesofMemberCreditAMT, Date)
VALUES (5000, '2023-02-27');
 
-- Update data in 702.1_Lines_of_Credit_to_Members—Credit_Cards
UPDATE 702.1_Lines_of_Credit_to_Members
SET LinesofMemberCreditAMT = 6000, Date = '2023-02-28'
WHERE id = 1;
 
-- Insert data into 702.2_Lines_of_Credit—Cash_Advances_in_Process
INSERT INTO 702.2_Lines_of_Credit—Cash_Advances_in_Process (LinesofMemberCreditAMT, Date)
VALUES (3000, '2023-02-27');
 
-- Update data in 702.2_Lines_of_Credit—Cash_Advances_in_Process
UPDATE 702.2_Lines_of_Credit—Cash_Advances_in_Process
SET LinesofMemberCreditAMT = 4000, Date = '2023-02-28'
WHERE id = 1;
 
-- Insert data into 702.3_Net_Origination_Fees_(Costs)—Lines_of_Credit
INSERT INTO 702.3_Net_Origination_Fees_(Costs)—Lines_of_Credit (LinesofMemberCreditAMT, Date)
VALUES (2000, '2023-02-27');
 
-- Update data in 702.3_Net_Origination_Fees_(Costs)—Lines_of_Credit
UPDATE 702.3_Net_Origination_Fees_(Costs)—Lines_of_Credit
SET LinesofMemberCreditAMT = 2500, Date = '2023-02-28'
WHERE id = 1;
 
-- Insert data into 702.4_Net_Commitment_Fees_(Costs)—Lines_of_Credit
INSERT INTO 702.4_Net_Commitment_Fees_(Costs)—Lines_of_Credit (LinesofMemberCreditAMT, Date)
VALUES (1000, '2023-02-27');
 
-- Update data in 702.4_Net_Commitment_Fees_(Costs)—Lines_of_Credit
UPDATE 702.4_Net_Commitment_Fees_(Costs)—Lines_of_Credit
SET LinesofMemberCreditAMT = 1500, Date = '2023-02-28'
WHERE id = 1;
 
 
 
•      703 Real Estate Loans—Over 12 Years
 
CREATE VIEW "703_Real_Estate_Loans—Over_12_Years" AS
SELECT SUM("RELoansOver12YearsAMT") AS "TotalRELoansOver12YearsAMT"
FROM "703_Real_Estate_Loans—Over_12_Years_Tbl";
 
 
INSERT INTO "703_Real_Estate_Loans—Over_12_Years_Tbl" ("RELoansOver12YearsAMT", "Date")
VALUES (5000, '2022-01-01');
 
 
UPDATE "703_Real_Estate_Loans—Over_12_Years_Tbl"
SET "RELoansOver12YearsAMT" = 6000, "Date" = '2022-02-01'
WHERE "ID" = 1;
 
 
 
•      703.1 Net Origination Fees (Costs)—Real Estate Loans Over 12 Years
 
CREATE VIEW "703.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_Over_12_Years" AS
SELECT SUM("NetOrigFeesCosts_RELoansOver12YearsAMT") AS "TotalNetOrigFeesCosts_RELoansOver12YearsAMT"
FROM "703.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_Over_12_Years_Tbl";
 
INSERT INTO "703.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_Over_12_Years_Tbl" ("NetOrigFeesCosts_RELoansOver12YearsAMT", "Date")
VALUES (1000, '2022-01-01');
 
UPDATE "703.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_Over_12_Years_Tbl"
SET "NetOrigFeesCosts_RELoansOver12YearsAMT" = 1200, "Date" = '2022-02-01'
WHERE "ID" = 1;
 
 
 
•      704 Real Estate Loans 12 Years or Less
 
CREATE VIEW "704_Real_Estate_Loans_12_Years_or_Less" AS
SELECT SUM("704_Real_Estate_Loans_12_Years_or_LessAMT") AS "Total704_Real_Estate_Loans_12_Years_or_LessAMT"
FROM "704_Real_Estate_Loans_12_Years_or_Less_Tbl";
 
 
INSERT INTO "704_Real_Estate_Loans_12_Years_or_Less_Tbl" ("704_Real_Estate_Loans_12_Years_or_LessAMT", "Date")
VALUES (50000, '2022-01-01');
 
 
UPDATE "704_Real_Estate_Loans_12_Years_or_Less_Tbl"
SET "704_Real_Estate_Loans_12_Years_or_LessAMT" = 55000, "Date" = '2022-02-01'
WHERE "ID" = 1;
 
 
 
 
 
•      704.1 Net Origination Fees (Costs)—Real Estate Loans 12 Years or Less
 
CREATE TABLE 704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl (
    ID SERIAL PRIMARY KEY,
    NetOrigFeesCosts_704_Real_Estate_Loans_12_Years_or_LessAMT NUMERIC(10,2),
    Date DATE
);
 
INSERT INTO 704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl (
    NetOrigFeesCosts_704_Real_Estate_Loans_12_Years_or_LessAMT,
    Date
) VALUES (
    100000.00,
    '2022-01-01'
);
 
UPDATE 704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl
SET NetOrigFeesCosts_704_Real_Estate_Loans_12_Years_or_LessAMT = 150000.00,
    Date = '2022-02-01'
WHERE ID = 1;
 
 
 
•      704 Real Estate Loans 12 Years or Less
 
CREATE VIEW 705_Mobile_Home_Loans AS
SELECT SUM(705_Mobile_Home_LoansAMT) AS TotalAmount
FROM 705_Mobile_Home_Loans_Tbl;
 
INSERT INTO 705_Mobile_Home_Loans_Tbl (NetOrigFeesCosts_704_Real_Estate_Loans_12_Years_or_LessAMT, Date)
VALUES (10000, '2022-05-01');
 
 
UPDATE 705_Mobile_Home_Loans_Tbl
SET NetOrigFeesCosts_704_Real_Estate_Loans_12_Years_or_LessAMT = 12000, Date = '2022-06-01'
WHERE ID = 1;
 
 
•      704.1 Net Origination Fees (Costs)—Real Estate Loans 12 Years or Less
 
 
CREATE VIEW 704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less AS
SELECT SUM("704.1_NetOrigFeesCosts—Real_Estate_Loans_12_Years_or_LessAMT") AS "Total_Amount"
FROM 704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl;
 
INSERT INTO "704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl" ("704.1_NetOrigFeesCosts—Real_Estate_Loans_12_Years_or_LessAMT", "Date")
VALUES (5000, '2023-02-27');
 
 
UPDATE "704.1_Net_Origination_Fees_(Costs)—Real_Estate_Loans_12_Years_or_Less_tbl"
SET "704.1_NetOrigFeesCosts—Real_Estate_Loans_12_Years_or_LessAMT" = 7500, "Date" = '2023-02-28'
WHERE "id" = 1;
 
 
•      705 Mobile Home Loans
 
CREATE VIEW 705_Mobile_Home_Loans AS
SELECT SUM("705_Mobile_Home_LoansAMT") AS "Total_Amount"
FROM 705_Mobile_Home_Loans_Tbl;
 
INSERT INTO 705_Mobile_Home_Loans_Tbl ("705_Mobile_Home_LoansAMT", "Date")
VALUES (10000, '2023-02-27');
 
UPDATE 705_Mobile_Home_Loans_Tbl
SET "705_Mobile_Home_LoansAMT" = 15000, "Date" = '2023-02-28'
WHERE "id" = 1;
 
 
 
•      705.1 Net Origination Fees (Costs)—Mobile Home Loans
 
 
CREATE VIEW "705.1_Net_Origination_Fees_(Costs)—Mobile_Home_Loans" AS 
SELECT SUM("705.1_Net_OrigFeesCosts—Mobile_Home_LoansAMT") AS "Total_Net_Origination_Fees" 
FROM 705.1_Net_Origination_Fees_(Costs)—Mobile_Home_Loans_Tbl;
 
INSERT INTO "705.1_Net_Origination_Fees_(Costs)—Mobile_Home_Loans_Tbl" ("705.1_Net_OrigFeesCosts—Mobile_Home_LoansAMT", "Date") 
VALUES (1000, '2022-01-01'), (1500, '2022-02-01'), (2000, '2022-03-01');
 
 
UPDATE "705.1_Net_Origination_Fees_(Costs)—Mobile_Home_Loans_Tbl" 
SET "705.1_Net_OrigFeesCosts—Mobile_Home_LoansAMT" = 2500, "Date" = '2022-04-01' 
WHERE "705.1_Net_OrigFeesCosts—Mobile_Home_LoansAMT" = 2000;
 
 
706 Share Secured/Insured Loans
 
CREATE VIEW "706_Share_Secured/Insured_Loans" AS
SELECT SUM("706_Share_SecuredInsured_LoansAMT") AS "Total Amount"
FROM "706_Share_Secured/Insured_Loans_tbl";
 
INSERT INTO "706_Share_Secured/Insured_Loans_tbl"("706_Share_SecuredInsured_LoansAMT", "Date")
VALUES (1000, '2023-02-27');
 
 
UPDATE "706_Share_Secured/Insured_Loans_tbl"
SET "706_Share_SecuredInsured_LoansAMT" = 2000,
    "Date" = '2023-02-28'
WHERE "706_Share_SecuredInsured_LoansAMT" = 1000;
 
 
707 Loans—Collateral in Process of Liquidation
 
CREATE VIEW "707_Loans—Collateral_in_Process_of_Liquidation" AS
SELECT SUM("707_Loans—Collateral_in_Process_of_LiquidationAMT") AS "Total Amount"
FROM "707_Loans—Collateral_in_Process_of_Liquidation_tbl";
 
 
INSERT INTO "707_Loans—Collateral_in_Process_of_Liquidation_tbl"("707_Loans—Collateral_in_Process_of_LiquidationAMT", "Date")
VALUES (1000, '2023-02-27');
 
 
UPDATE "707_Loans—Collateral_in_Process_of_Liquidation_tbl"
SET "707_Loans—Collateral_in_Process_of_LiquidationAMT" = 2000,
    "Date" = '2023-02-28'
WHERE "707_Loans—Collateral_in_Process_of_LiquidationAMT" = 1000;
 
 
 
710 Other Loans
•      711 Notes and Contracts Receivable
•      712 Loans Purchased from Liquidating Credit Union
•      712.1 Discounts on Loans Purchased from Liquidating Credit Union
•      713 Loans Purchased from Liquidating Credit Union—Collateral in Process of Liquidation
•      714 Loans or Other Obligations Purchased
•      714.1 Premium on Loans Purchased
•      714.2 Discount on Loans Purchased
•      715 Loan Participations Purchased
•      715.1 Premium on Loan Participations Purchased
•      715.2 Discount on Loan Participations Purchased
•      716 Loan Participations Sold
•      716.1 Loan Participations Sold (Contra Asset Account)
•      717 Other Miscellaneous Nonmember Loans
•      718 Loans Subject to Repurchase Agreements
•      719 Allowance for Loan Losses
 
 
CREATE VIEW "710 Other Loans" AS
SELECT SUM("OtherLoansAMT") AS "TotalOtherLoansAMT"
FROM (
    SELECT "OtherLoansAMT" FROM "711 Notes and Contracts Receivable"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "712 Loans Purchased from Liquidating Credit Union"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "712.1 Discounts on Loans Purchased from Liquidating Credit Union"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "713 Loans Purchased from Liquidating Credit Union—Collateral in Process of Liquidation"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "714 Loans or Other Obligations Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "714.1 Premium on Loans Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "714.2 Discount on Loans Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "715 Loan Participations Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "715.1 Premium on Loan Participations Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "715.2 Discount on Loan Participations Purchased"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "716 Loan Participations Sold"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "716.1 Loan Participations Sold (Contra Asset Account)"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "717 Other Miscellaneous Nonmember Loans"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "718 Loans Subject to Repurchase Agreements"
    UNION ALL
    SELECT "OtherLoansAMT" FROM "719 Allowance for Loan Losses"
) AS "AllOtherLoans";
 
 
 
INSERT INTO table711 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table711
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table712 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
 
UPDATE table712
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table712_1 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table712_1
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table713 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table713
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table714 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table714
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table714_1 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
 
UPDATE table714_1
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table714_2 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table714_2
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
INSERT INTO table715 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
 
UPDATE table715
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
INSERT INTO table715_1 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table715_1
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
INSERT INTO table715_2 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table715_2
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
INSERT INTO table716 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
 
UPDATE table716
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
 
INSERT INTO table716_1 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table716_1
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table717 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table717
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
INSERT INTO table718 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
 
UPDATE table718
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
INSERT INTO table719 (OtherLoansAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE table719
SET OtherLoansAMT = 2000, Date = '2023-03-14'
WHERE id = 1;
 
 
 
720 Other Receivables
•      721 Payroll Deductions Receivable
•      722 Receivables from Officials and Employees
•      723 Lease Payments Receivable
•      724 Insurance Premiums Receivable
•      725 Advance for Taxes, Insurance, and Other Charges
•      727 U.S. Savings Bonds Redeemed Receivable
•      728  Real Estate Loans Receivable
•      729 Other Accounts Receivable
•      729.1 TIL Bond Claims Receivable
 
 
CREATE VIEW "720 Other Receivables" AS 
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "721 Payroll Deductions Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "722 Receivables from Officials and Employees"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "723 Lease Payments Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "724 Insurance Premiums Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "725 Advance for Taxes, Insurance, and Other Charges"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "727 U.S. Savings Bonds Redeemed Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "728 Real Estate Loans Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "729 Other Accounts Receivable"
UNION ALL
SELECT 
   SUM(OtherReceivablesAMT) as TotalOtherReceivablesAMT
FROM 
   "729.1 TIL Bond Claims Receivable";
 
 
INSERT INTO "721 Payroll Deductions Receivable" (OtherReceivablesAMT, Date)
VALUES (1000, '2023-03-13');
 
 
UPDATE "721 Payroll Deductions Receivable"
SET OtherReceivablesAMT = 2000,
    Date = '2023-03-14'
WHERE ID = 1;
 
 
INSERT INTO "722 Receivables from Officials and Employees" (OtherReceivablesAMT, Date)
VALUES (1500, '2023-03-13');
 
 
UPDATE "722 Receivables from Officials and Employees"
SET OtherReceivablesAMT = 2500,
    Date = '2023-03-14'
WHERE ID = 1;
 
 
INSERT INTO "723 Lease Payments Receivable" (OtherReceivablesAMT, Date)
VALUES (2000, '2023-03-13');
 
 
UPDATE "723 Lease Payments Receivable"
SET OtherReceivablesAMT = 3000,
    Date = '2023-03-14'
WHERE ID = 1;
 
 
INSERT INTO "724 Insurance Premiums Receivable" (OtherReceivablesAMT, Date)
VALUES (2500, '2023-03-13');
 
 
UPDATE "724 Insurance Premiums Receivable"
SET OtherReceivablesAMT = 3500,
    Date = '2023-03-14'
WHERE ID = 1;
 
 
INSERT INTO "725 Advance for Taxes, Insurance, and Other Charges" (OtherReceivablesAMT, Date)
VALUES (3000, '2023-03-13');
 
UPDATE "725 Advance for Taxes, Insurance, and Other Charges"
SET OtherReceivablesAMT = 4000,
    Date = '2023-03-14'
WHERE ID = 1;
 
 
INSERT INTO "727 U.S. Savings Bonds Redeemed Receivable" ("OtherReceivablesAMT", "Date") 
VALUES (<OtherReceivablesAMT_value>, <Date_value>);
 
 
UPDATE "727 U.S. Savings Bonds Redeemed Receivable" 
SET "OtherReceivablesAMT" = <new_OtherReceivablesAMT_value>, 
    "Date" = <new_Date_value>
WHERE <condition_to_identify_the_record_to_update>;
 
 
INSERT INTO "728 Real Estate Loans Receivable" ("OtherReceivablesAMT", "Date") 
VALUES (<OtherReceivablesAMT_value>, <Date_value>);
 
UPDATE "728 Real Estate Loans Receivable" 
SET "OtherReceivablesAMT" = <new_OtherReceivablesAMT_value>, 
    "Date" = <new_Date_value>
WHERE <condition_to_identify_the_record_to_update>;
 
 
INSERT INTO "729 Other Accounts Receivable" ("OtherReceivablesAMT", "Date") 
VALUES (<OtherReceivablesAMT_value>, <Date_value>);
 
 
UPDATE "729 Other Accounts Receivable" 
SET "OtherReceivablesAMT" = <new_OtherReceivablesAMT_value>, 
    "Date" = <new_Date_value>
WHERE <condition_to_identify_the_record_to_update>;
 
 
INSERT INTO "729.1 TIL Bond Claims Receivable" ("OtherReceivablesAMT", "Date") 
VALUES (<OtherReceivablesAMT_value>, <Date_value>);
 
UPDATE "729.1 TIL Bond Claims Receivable" 
SET "OtherReceivablesAMT" = <new_OtherReceivablesAMT_value>, 
    "Date" = <new_Date_value>
WHERE <condition_to_identify_the_record_to_update>;
 
 
730 Cash
•      731 Cash—Checking Account
•      732-736 Reserved for additional accounts for cash deposits
•      737 Cash—U.S. Bond Installment Payments
•      738 Petty Cash
•      739 Change Fund
 
 
CREATE VIEW "730 Cash" AS
SELECT SUM("730CashAMT") AS total_cash FROM (
  SELECT "730CashAMT" FROM "731 Cash—Checking Account"
  UNION ALL SELECT "730CashAMT" FROM "732-736 Reserved for additional accounts for cash deposits"
  UNION ALL SELECT "730CashAMT" FROM "737 Cash—U.S. Bond Installment Payments"
  UNION ALL SELECT "730CashAMT" FROM "738 Petty Cash"
  UNION ALL SELECT "730CashAMT" FROM "739 Change Fund"
) AS all_cash_accounts;
 
 
INSERT INTO "731 Cash—Checking Account" ("730CashAMT", "Date")
VALUES (500.00, '2023-03-13');
 
UPDATE "731 Cash—Checking Account"
SET "730CashAMT" = 750.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
 
INSERT INTO "732-736 Reserved for additional accounts for cash deposits" ("730CashAMT", "Date")
VALUES (250.00, '2023-03-13');
 
UPDATE "732-736 Reserved for additional accounts for cash deposits"
SET "730CashAMT" = 350.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
INSERT INTO "737 Cash—U.S. Bond Installment Payments" ("730CashAMT", "Date")
VALUES (100.00, '2023-03-13');
 
UPDATE "737 Cash—U.S. Bond Installment Payments"
SET "730CashAMT" = 200.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
INSERT INTO "738 Petty Cash" ("730CashAMT", "Date")
VALUES (50.00, '2023-03-13');
 
 
UPDATE "738 Petty Cash"
SET "730CashAMT" = 75.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
INSERT INTO "739 Change Fund" ("730CashAMT", "Date")
VALUES (25.00, '2023-03-13');
 
 
UPDATE "739 Change Fund"
SET "730CashAMT" = 30.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
 
Write POSTGRES SQL CODE that creates a view named "740 Investments" that sums the field "740InvestmentsAMT" that is in each of the following tables.
 
·      741 U.S. Government Obligations
·      741.1 Discount on U.S. Government Obligations
·      741.2 Premium on U.S. Government Obligations
·      742 Federal Agency Securities
·      742.1 Discount on Federal Agency Securities
·      742.2 Premium on Federal Agency Securities
·      743 Common Trust Investments
·      743.1 Mutual Fund Investments
·      743.2 Allowance for Common Trust and Mutual Fund Investment
·      744 Shares, Deposits and Certificates of Corporate Central Credit Unions
·      745 Shares, Deposits and Certificates of Other Credit Unions
·      746 Other Shares, Deposits and Certificates
·      746.1 Commercial Bank Deposits
·      746.2 Savings and Loans and Mutual Savings Bank Deposits
·      747 Loans to Other Credit Unions
·      748 Investments in Credit Union Service Corporations
·      748.1 Investments in Credit Union Service Corporations
·      748.2 Loans to Credit Union Service Corporations
 
 
CREATE VIEW "740 Investments" AS
SELECT SUM("740InvestmentsAMT") AS total_investments FROM (
  SELECT "740InvestmentsAMT" FROM "741 U.S. Government Obligations"
  UNION ALL SELECT "740InvestmentsAMT" FROM "741.1 Discount on U.S. Government Obligations"
  UNION ALL SELECT "740InvestmentsAMT" FROM "741.2 Premium on U.S. Government Obligations"
  UNION ALL SELECT "740InvestmentsAMT" FROM "742 Federal Agency Securities"
  UNION ALL SELECT "740InvestmentsAMT" FROM "742.1 Discount on Federal Agency Securities"
  UNION ALL SELECT "740InvestmentsAMT" FROM "742.2 Premium on Federal Agency Securities"
  UNION ALL SELECT "740InvestmentsAMT" FROM "743 Common Trust Investments"
  UNION ALL SELECT "740InvestmentsAMT" FROM "743.1 Mutual Fund Investments"
  UNION ALL SELECT "740InvestmentsAMT" FROM "743.2 Allowance for Common Trust and Mutual Fund Investment"
  UNION ALL SELECT "740InvestmentsAMT" FROM "744 Shares, Deposits and Certificates of Corporate Central Credit Unions"
  UNION ALL SELECT "740InvestmentsAMT" FROM "745 Shares, Deposits and Certificates of Other Credit Unions"
  UNION ALL SELECT "740InvestmentsAMT" FROM "746 Other Shares, Deposits and Certificates"
  UNION ALL SELECT "740InvestmentsAMT" FROM "746.1 Commercial Bank Deposits"
  UNION ALL SELECT "740InvestmentsAMT" FROM "746.2 Savings and Loans and Mutual Savings Bank Deposits"
  UNION ALL SELECT "740InvestmentsAMT" FROM "747 Loans to Other Credit Unions"
  UNION ALL SELECT "740InvestmentsAMT" FROM "748 Investments in Credit Union Service Corporations"
  UNION ALL SELECT "740InvestmentsAMT" FROM "748.1 Investments in Credit Union Service Corporations"
  UNION ALL SELECT "740InvestmentsAMT" FROM "748.2 Loans to Credit Union Service Corporations"
) AS all_investment_accounts;
 
INSERT INTO "741 U.S. Government Obligations" ("740InvestmentsAMT", "Date")
VALUES (1000.00, '2023-03-13');
 
UPDATE "741 U.S. Government Obligations"
SET "740InvestmentsAMT" = 1500.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
 
INSERT INTO "741.1 Discount on U.S. Government Obligations" ("740InvestmentsAMT", "Date")
VALUES (50.00, '2023-03-13');
 
UPDATE "741.1 Discount on U.S. Government Obligations"
SET "740InvestmentsAMT" = 75.00,
    "Date" = '2023-03-14'
WHERE "id" = 1;
 
INSERT INTO "741.2 Premium on U.S. Government Obligations" ("Date", "740InvestmentsAMT") 
VALUES ('2022-01-01', 1000.00);
 
UPDATE "741.2 Premium on U.S. Government Obligations" 
SET "740InvestmentsAMT" = 2000.00
WHERE "id" = 1;
 
 
INSERT INTO "742 Federal Agency Securities" ("Date", "740InvestmentsAMT") 
VALUES ('2022-01-01', 1500.00);
 
UPDATE "742 Federal Agency Securities" 
SET "740InvestmentsAMT" = 2500.00
WHERE "id" = 1;
 
-- Insert data for "742.1 Discount on Federal Agency Securities"
INSERT INTO "742.1 Discount on Federal Agency Securities" ("740InvestmentsAMT", "Date")
VALUES (1000.00, '2022-01-01');
 
-- Update data for "742.1 Discount on Federal Agency Securities"
UPDATE "742.1 Discount on Federal Agency Securities"
SET "740InvestmentsAMT" = 1500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
-- Insert data for "742.2 Premium on Federal Agency Securities"
INSERT INTO "742.2 Premium on Federal Agency Securities" ("740InvestmentsAMT", "Date")
VALUES (2000.00, '2022-01-01');
 
-- Update data for "742.2 Premium on Federal Agency Securities"
UPDATE "742.2 Premium on Federal Agency Securities"
SET "740InvestmentsAMT" = 2500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
-- Insert data for "743 Common Trust Investments"
INSERT INTO "743 Common Trust Investments" ("740InvestmentsAMT", "Date")
VALUES (3000.00, '2022-01-01');
 
-- Update data for "743 Common Trust Investments"
UPDATE "743 Common Trust Investments"
SET "740InvestmentsAMT" = 3500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
-- Insert data for "743.1 Mutual Fund Investments"
INSERT INTO "743.1 Mutual Fund Investments" ("740InvestmentsAMT", "Date")
VALUES (4000.00, '2022-01-01');
 
-- Update data for "743.1 Mutual Fund Investments"
UPDATE "743.1 Mutual Fund Investments"
SET "740InvestmentsAMT" = 4500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
-- Insert data for "743.2 Allowance for Common Trust and Mutual Fund Investment"
INSERT INTO "743.2 Allowance for Common Trust and Mutual Fund Investment" ("740InvestmentsAMT", "Date")
VALUES (5000.00, '2022-01-01');
 
-- Update data for "743.2 Allowance for Common Trust and Mutual Fund Investment"
UPDATE "743.2 Allowance for Common Trust and Mutual Fund Investment"
SET "740InvestmentsAMT" = 5500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
-- Insert data for "744 Shares, Deposits and Certificates of Corporate Central Credit Unions"
INSERT INTO "744 Shares, Deposits and Certificates of Corporate Central Credit Unions" ("740InvestmentsAMT", "Date")
VALUES (6000.00, '2022-01-01');
 
-- Update data for "744 Shares, Deposits and Certificates of Corporate Central Credit Unions"
UPDATE "744 Shares, Deposits and Certificates of Corporate Central Credit Unions"
SET "740InvestmentsAMT" = 6500.00,
    "Date" = '2022-02-01'
WHERE id = 1;
 
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "745 Shares, Deposits and Certificates of Other Credit Unions"
UPDATE "745 Shares, Deposits and Certificates of Other Credit Unions"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "745 Shares, Deposits and Certificates of Other Credit Unions" table
INSERT INTO "745 Shares, Deposits and Certificates of Other Credit Unions" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "746 Other Shares, Deposits and Certificates"
UPDATE "746 Other Shares, Deposits and Certificates"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "746 Other Shares, Deposits and Certificates" table
INSERT INTO "746 Other Shares, Deposits and Certificates" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "746.1 Commercial Bank Deposits"
UPDATE "746.1 Commercial Bank Deposits"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "746.1 Commercial Bank Deposits" table
INSERT INTO "746.1 Commercial Bank Deposits" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "746.2 Savings and Loans and Mutual Savings Bank Deposits"
UPDATE "746.2 Savings and Loans and Mutual Savings Bank Deposits"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "746.2 Savings and Loans and Mutual Savings Bank Deposits" table
INSERT INTO "746.2 Savings and Loans and Mutual Savings Bank Deposits" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "747 Loans to Other Credit Unions"
UPDATE "747 Loans to Other Credit Unions"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "747 Loans to Other Credit Unions" table
INSERT INTO "747 Loans to Other Credit Unions" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
-- Updating the "740InvestmentsAMT" and "Date" fields for table "748 Investments in Credit Union Service Corporations"
UPDATE "748 Investments in Credit Union Service Corporations"
SET "740InvestmentsAMT" = [value],
"Date" = [value]
WHERE [condition];
 
-- Inserting a new row into the "748 Investments in Credit Union Service Corporations" table
INSERT INTO "748 Investments in Credit Union Service Corporations" ("740InvestmentsAMT", "Date")
VALUES ([value], [value]);
 
INSERT INTO "748.1 Investments in Credit Union Service Corporations" ("740InvestmentsAMT", "Date") VALUES (10000, '2022-01-01');
 
 
UPDATE "748.1 Investments in Credit Union Service Corporations" SET "740InvestmentsAMT" = 12000, "Date" = '2022-02-15' WHERE "id" = 1;
 
 
INSERT INTO "748.2 Loans to Credit Union Service Corporations" ("740InvestmentsAMT", "Date") VALUES (5000, '2022-01-01');
 
UPDATE "748.2 Loans to Credit Union Service Corporations" SET "740InvestmentsAMT" = 6000, "Date" = '2022-02-15' WHERE "id" = 1;
 
 
750 Investments—Investment Allowance
•      751 Investment in the Central Liquidity Facility
•      751.1 Investment in CLF Membership Stock
•      751.2 Investment in CLF Liquidity Clearing
•      752 Investment in NCUA Share Insurance Capitalization Fund
•      753 Investment in Branch
•      755 Purchased Accrued Interest Receivable
•      758 Allowances for Losses on Investment
•      759 Trading Securities
 
 
CREATE VIEW "750Investments—Investment Allowance" AS
SELECT SUM("Investments_InvestmentAllowanceAMT") as "Total Investment Allowance"
FROM (
    SELECT "Investments_InvestmentAllowanceAMT" FROM "751 Investment in the Central Liquidity Facility"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "751.1 Investment in CLF Membership Stock"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "751.2 Investment in CLF Liquidity Clearing"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "752 Investment in NCUA Share Insurance Capitalization Fund"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "753 Investment in Branch"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "755 Purchased Accrued Interest Receivable"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "758 Allowances for Losses on Investment"
    UNION ALL
    SELECT "Investments_InvestmentAllowanceAMT" FROM "759 Trading Securities"
) AS TotalInvestmentAllowance;
 
 
-- Insert data
INSERT INTO "751 Investment in the Central Liquidity Facility" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (1000, '2022-03-13');
 
-- Update data
UPDATE "751 Investment in the Central Liquidity Facility"
SET "Investments_InvestmentAllowanceAMT" = 1500, "Date" = '2023-03-13'
WHERE "Investments_InvestmentAllowanceAMT" = 1000;
 
 
-- Insert data
INSERT INTO "751.1 Investment in CLF Membership Stock" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (2000, '2022-03-13');
 
-- Update data
UPDATE "751.1 Investment in CLF Membership Stock"
SET "Investments_InvestmentAllowanceAMT" = 2500, "Date" = '2023-03-13'
WHERE "Investments_InvestmentAllowanceAMT" = 2000;
 
 
-- Insert data
INSERT INTO "751.2 Investment in CLF Liquidity Clearing" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (3000, '2022-03-13');
 
-- Update data
UPDATE "751.2 Investment in CLF Liquidity Clearing"
SET "Investments_InvestmentAllowanceAM
 
 
INSERT INTO "752InvestmentInNCUAShareInsuranceCapitalizationFund" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (1000, '2022-01-01');
 
UPDATE "752InvestmentInNCUAShareInsuranceCapitalizationFund"
SET "Investments_InvestmentAllowanceAMT" = 2000, "Date" = '2022-03-01'
WHERE id = 1;
 
 
INSERT INTO "753InvestmentInBranch" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (500, '2022-01-01');
 
UPDATE "753InvestmentInBranch"
SET "Investments_InvestmentAllowanceAMT" = 1000, "Date" = '2022-03-01'
WHERE id = 1;
 
 
INSERT INTO "755PurchasedAccruedInterestReceivable" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (750, '2022-01-01');
 
UPDATE "755PurchasedAccruedInterestReceivable"
SET "Investments_InvestmentAllowanceAMT" = 1500, "Date" = '2022-03-01'
WHERE id = 1;
 
 
INSERT INTO "758AllowancesForLossesOnInvestment" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (200, '2022-01-01');
 
UPDATE "758AllowancesForLossesOnInvestment"
SET "Investments_InvestmentAllowanceAMT" = 500, "Date" = '2022-03-01'
WHERE id = 1;
 
 
INSERT INTO "759TradingSecurities" ("Investments_InvestmentAllowanceAMT", "Date")
VALUES (1500, '2022-01-01');
 
UPDATE "759TradingSecurities"
SET "Investments_InvestmentAllowanceAMT" = 2500, "Date" = '2022-03-01'
WHERE id = 1;
 
 
760 Prepaid Expenses and Deferred Charges
•      762 Deferred Charges—Commitment Fees Paid in Connection With the Acquisition of Borrowed Funds
•      763 Deferred Charges—Commitment Fees on Loans to Be Purchased
•      764 Prepaid Rent
•      765 Prepaid Share Insurance
•      766 Other Prepaid Insurance
•      767 Deferred Pension Cost
•      768 Unamortized Organization Costs
•      769 Other Prepaid Expenses and Deferred Charges
 
 
 
CREATE VIEW "760 Prepaid Expenses and Deferred Charges" AS
SELECT SUM(PrepaidExpAndDeferredChargesAMT) AS total_amount
FROM (
    SELECT PrepaidExpAndDeferredChargesAMT FROM "762 Deferred Charges—Commitment Fees Paid in Connection With the Acquisition of Borrowed Funds"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "763 Deferred Charges—Commitment Fees on Loans to Be Purchased"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "764 Prepaid Rent"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "765 Prepaid Share Insurance"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "766 Other Prepaid Insurance"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "767 Deferred Pension Cost"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "768 Unamortized Organization Costs"
    UNION ALL
    SELECT PrepaidExpAndDeferredChargesAMT FROM "769 Other Prepaid Expenses and Deferred Charges"
) AS combined_table;
 
 
-- To insert a new record:
INSERT INTO "762 Deferred Charges—Commitment Fees Paid in Connection With the Acquisition of Borrowed Funds" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (500, '2023-03-14');
 
-- To update an existing record:
UPDATE "762 Deferred Charges—Commitment Fees Paid in Connection With the Acquisition of Borrowed Funds"
SET PrepaidExpAndDeferredChargesAMT = 750, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "763 Deferred Charges—Commitment Fees on Loans to Be Purchased" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (250, '2023-03-14');
 
-- To update an existing record:
UPDATE "763 Deferred Charges—Commitment Fees on Loans to Be Purchased"
SET PrepaidExpAndDeferredChargesAMT = 400, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "764 Prepaid Rent" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (1000, '2023-03-14');
 
-- To update an existing record:
UPDATE "764 Prepaid Rent"
SET PrepaidExpAndDeferredChargesAMT = 1500, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "765 Prepaid Share Insurance" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (750, '2023-03-14');
 
-- To update an existing record:
UPDATE "765 Prepaid Share Insurance"
SET PrepaidExpAndDeferredChargesAMT = 900, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "766 Other Prepaid Insurance" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (300, '2023-03-14');
 
-- To update an existing record:
UPDATE "766 Other Prepaid Insurance"
SET PrepaidExpAndDeferredChargesAMT = 450, Date = '2023-03-15'
WHERE id = 1;
 
 
-- To insert a new record:
INSERT INTO "767 Deferred Pension Cost" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (1250, '2023-03-14');
 
-- To update an existing record:
UPDATE "767 Deferred Pension Cost"
SET PrepaidExpAndDeferredChargesAMT = 1500, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "768 Unamortized Organization Costs" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (2000, '2023-03-14');
 
-- To update an existing record:
UPDATE "768 Unamortized Organization Costs"
SET PrepaidExpAndDeferredChargesAMT = 2500, Date = '2023-03-15'
WHERE id = 1;
 
-- To insert a new record:
INSERT INTO "769 Other Prepaid Expenses and Deferred Charges" (PrepaidExpAndDeferredChargesAMT, Date)
VALUES (500, '2023-03-14');
 
-- To update an existing record:
UPDATE "769 Other Prepaid Expenses and Deferred Charges"
SET PrepaidExpAndDeferredChargesAMT = 750, Date = '2023-03-15'
WHERE id = 1;
 
 
770 Fixed Assets
•      771 Land
•      772 Building
•      773 Allowance for Depreciation of Building
•      774 Furniture and Equipment
•      775 Allowance for Depreciation of Furniture and Equipment
•      776 Leasehold Improvements
•      777 Allowance for Amortization of Leasehold Improvement
•      778 Leased Assets under Capital Lease
•      779 Allowance for Depreciation of Leased Assets
 
 
CREATE VIEW "770 Fixed Assets" AS
SELECT
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "771 Land") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "772 Building") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "773 Allowance for Depreciation of Building") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "774 Furniture and Equipment") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "775 Allowance for Depreciation of Furniture and Equipment") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "776 Leasehold Improvements") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "777 Allowance for Amortization of Leasehold Improvement") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "778 Leased Assets under Capital Lease") +
  (SELECT COALESCE(SUM("FixedAssetsAMT"), 0) FROM "779 Allowance for Depreciation of Leased Assets") AS "FixedAssetsAMT"
FROM
  "770FixedAssets"
LIMIT 1;
 
-- 771 Land
INSERT INTO "771 Land" ("FixedAssetsAMT", "Date")
VALUES (100000, '2022-01-01');
 
UPDATE "771 Land"
SET "FixedAssetsAMT" = 120000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 772 Building
INSERT INTO "772 Building" ("FixedAssetsAMT", "Date")
VALUES (500000, '2022-01-01');
 
UPDATE "772 Building"
SET "FixedAssetsAMT" = 550000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 773 Allowance for Depreciation of Building
INSERT INTO "773 Allowance for Depreciation of Building" ("FixedAssetsAMT", "Date")
VALUES (100000, '2022-01-01');
 
UPDATE "773 Allowance for Depreciation of Building"
SET "FixedAssetsAMT" = 120000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 774 Furniture and Equipment
INSERT INTO "774 Furniture and Equipment" ("FixedAssetsAMT", "Date")
VALUES (20000, '2022-01-01');
 
UPDATE "774 Furniture and Equipment"
SET "FixedAssetsAMT" = 25000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 775 Allowance for Depreciation of Furniture and Equipment
INSERT INTO "775 Allowance for Depreciation of Furniture and Equipment" ("FixedAssetsAMT", "Date")
VALUES (5000, '2022-01-01');
 
UPDATE "775 Allowance for Depreciation of Furniture and Equipment"
SET "FixedAssetsAMT" = 7000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 776 Leasehold Improvements
INSERT INTO "776 Leasehold Improvements" ("FixedAssetsAMT", "Date")
VALUES (150000, '2022-01-01');
 
UPDATE "776 Leasehold Improvements"
SET "FixedAssetsAMT" = 175000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 777 Allowance for Amortization of Leasehold Improvement
INSERT INTO "777 Allowance for Amortization of Leasehold Improvement" ("FixedAssetsAMT", "Date")
VALUES (30000, '2022-01-01');
 
UPDATE "777 Allowance for Amortization of Leasehold Improvement"
SET "FixedAssetsAMT" = 35000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 778 Leased Assets under Capital Lease
INSERT INTO "778 Leased Assets under Capital Lease" ("FixedAssetsAMT", "Date")
VALUES (100000, '2022-01-01');
 
UPDATE "778 Leased Assets under Capital Lease"
SET "FixedAssetsAMT" = 120000, "Date" = '2022-02-01'
WHERE <condition>;
 
-- 779 Allowance for Depreciation of Leased Assets
INSERT INTO "779 Allowance for Depreciation of Leased Assets" ("FixedAssetsAMT", "Date")
VALUES (20000, '2022-01-01');
 
UPDATE "779 Allowance for Depreciation of Leased Assets"
SET "FixedAssetsAMT" = 25000, "Date" = '2022-02-01'
WHERE <condition>;
 
 
 
780 Accrued Income
•      781 Accrued Interest on Loans
•      782 Accrued Income on Investments
•      783 Accrued Credit Card Income
•      784 Accrued Interest on Real Estate Loans
•      785 Purchased Accrued Interest Receivable on Loans (100%)
•      786 Accrued Interest on Loan Participations Purchased
•      787 Accrued Interest—Other Lines of Credit to Members
•      788 Accrued Income on NCUSIF Investment
•      789 Other Accrued Income
 
 
CREATE VIEW "780 Accrued Income" AS 
SELECT SUM("AccruedIncomeAMT") AS "TotalAccruedIncome", "Date" 
FROM (
    SELECT "AccruedIncomeAMT", "Date" FROM "781 Accrued Interest on Loans"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "782 Accrued Income on Investments"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "783 Accrued Credit Card Income"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "784 Accrued Interest on Real Estate Loans"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "785 Purchased Accrued Interest Receivable on Loans (100%)"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "786 Accrued Interest on Loan Participations Purchased"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "787 Accrued Interest—Other Lines of Credit to Members"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "788 Accrued Income on NCUSIF Investment"
    UNION ALL
    SELECT "AccruedIncomeAMT", "Date" FROM "789 Other Accrued Income"
) AS "AccruedIncomeTable"
GROUP BY "Date";
 
 
-- Inserting a new record
INSERT INTO "781 Accrued Interest on Loans" ("AccruedIncomeAMT", "Date")
VALUES (1000, '2023-03-14');
 
-- Updating an existing record
UPDATE "781 Accrued Interest on Loans"
SET "AccruedIncomeAMT" = 1500, "Date" = '2023-03-15'
WHERE id = 1;
 
-- Inserting a new record
INSERT INTO "782 Accrued Income on Investments" ("AccruedIncomeAMT", "Date")
VALUES (2000, '2023-03-14');
 
-- Updating an existing record
UPDATE "782 Accrued Income on Investments"
SET "AccruedIncomeAMT" = 2500, "Date" = '2023-03-15'
WHERE id = 1;
 
 
-- Inserting a new record
INSERT INTO "783 Accrued Credit Card Income" ("AccruedIncomeAMT", "Date")
VALUES (3000, '2023-03-14');
 
-- Updating an existing record
UPDATE "783 Accrued Credit Card Income"
SET "AccruedIncomeAMT" = 3500, "Date" = '2023-03-15'
WHERE id = 1;
 
 
-- Inserting a new record
INSERT INTO "784 Accrued Interest on Real Estate Loans" ("AccruedIncomeAMT", "Date")
VALUES (4000, '2023-03-14');
 
-- Updating an existing record
UPDATE "784 Accrued Interest on Real Estate Loans"
SET "AccruedIncomeAMT" = 4500, "Date" = '2023-03-15'
 
 
-- Inserting a new record
INSERT INTO "785 Purchased Accrued Interest Receivable on Loans (100%)" ("AccruedIncomeAMT", "Date")
VALUES (5000, '2023-03-14');
 
-- Updating an existing record
UPDATE "785 Purchased Accrued Interest Receivable on Loans (100%)"
SET "AccruedIncomeAMT" = 5500, "Date" = '2023-03-15'
WHERE id = 1;
 
 
-- Inserting a new record
INSERT INTO "786 Accrued Interest on Loan Participations Purchased" ("AccruedIncomeAMT", "Date")
VALUES (6000, '2023-03-14');
 
-- Updating an existing record
UPDATE "786 Accrued Interest on Loan Participations Purchased"
SET "AccruedIncomeAMT" = 6500, "Date" = '2023-03-15'
WHERE id = 1;
 
INSERT INTO "787 Accrued Interest—Other Lines of Credit to Members" ("AccruedIncomeAMT", "Date") VALUES (1500, '2022-01-01');
 
UPDATE "787 Accrued Interest—Other Lines of Credit to Members" SET "AccruedIncomeAMT" = 2500 WHERE "Date" = '2022-01-01';
 
 
INSERT INTO "788 Accrued Income on NCUSIF Investment" ("AccruedIncomeAMT", "Date") VALUES (2000, '2022-01-01');
 
UPDATE "788 Accrued Income on NCUSIF Investment" SET "AccruedIncomeAMT" = 3000 WHERE "Date" = '2022-01-01';
 
INSERT INTO "789 Other Accrued Income" ("AccruedIncomeAMT", "Date") VALUES (500, '2022-01-01');
 
UPDATE "789 Other Accrued Income" SET "AccruedIncomeAMT" = 1000 WHERE "Date" = '2022-01-01';
 
 
 
 
 
790 Other Assets
•      792 Insurance Premium Stabilization
•      793 Monetary Control Reserve Deposits
•      797 Advance Payments by Borrowers for Taxes and Insurance on Serviced Loans
•      798 Assets Acquired in Liquidation on Loans
•      799 Other Assets
 
 
CREATE VIEW "790 Other Assets" AS 
SELECT SUM(OtherAssetsIncomeAMT) AS TotalOtherAssetsIncome 
FROM (
    SELECT OtherAssetsIncomeAMT FROM "792 Insurance Premium Stabilization"
    UNION ALL
    SELECT OtherAssetsIncomeAMT FROM "793 Monetary Control Reserve Deposits"
    UNION ALL
    SELECT OtherAssetsIncomeAMT FROM "797 Advance Payments by Borrowers for Taxes and Insurance on Serviced Loans"
    UNION ALL
    SELECT OtherAssetsIncomeAMT FROM "798 Assets Acquired in Liquidation on Loans"
    UNION ALL
    SELECT OtherAssetsIncomeAMT FROM "799 Other Assets"
) AS all_tables;
 
 
 
INSERT INTO "792 Insurance Premium Stabilization" (OtherAssetsIncomeAMT, Date) 
VALUES (100.00, '2022-03-14');
 
 
UPDATE "792 Insurance Premium Stabilization" 
SET OtherAssetsIncomeAMT = 200.00, Date = '2022-03-15' 
WHERE id = 1;
 
 
INSERT INTO "793 Monetary Control Reserve Deposits" (OtherAssetsIncomeAMT, Date) 
VALUES (150.00, '2022-03-14');
 
 
 
UPDATE "793 Monetary Control Reserve Deposits" 
SET OtherAssetsIncomeAMT = 250.00, Date = '2022-03-15' 
WHERE id = 1;
 
 
INSERT INTO "797 Advance Payments by Borrowers for Taxes and Insurance on Serviced Loans" (OtherAssetsIncomeAMT, Date) 
VALUES (50.00, '2022-03-14');
 
 
INSERT INTO "797 Advance Payments by Borrowers for Taxes and Insurance on Serviced Loans" (OtherAssetsIncomeAMT, Date) 
VALUES (50.00, '2022-03-14');
 
 
INSERT INTO "798 Assets Acquired in Liquidation on Loans" (OtherAssetsIncomeAMT, Date) 
VALUES (75.00, '2022-03-14');
 
 
 
UPDATE "798 Assets Acquired in Liquidation on Loans" 
SET OtherAssetsIncomeAMT = 125.00, Date = '2022-03-15' 
WHERE id = 1;
 
 
INSERT INTO "799 Other Assets" (OtherAssetsIncomeAMT, Date) 
VALUES (200.00, '2022-03-14');
 
UPDATE "799 Other Assets" 
SET OtherAssetsIncomeAMT = 300.00, Date = '2022-03-15' 
WHERE id = 1;
 
 
800 Accounts Payable
•      801 Accounts Payable
•      801.1 Accounts Payable—Travelers’ Checks and Money Orders
•      802 Accounts Payable—Undistributed Payments
•      802.1 Accounts Payable—Credit Card Payments in Process
•      802.2 Accounts Payable—Credit Card Adjustments in Process
•      802.3 Accounts Payable—Credit Card Chargebacks in Process
•      803 Accounts Payable—Undistributed Payroll Deductions or Allotments
•      804 Accounts Payable—Check Transmittal Service
•      805 Accounts Payable—Drafts Authorized
•      806 Accounts Payable—Installment Payments on U.S. Bonds
•      807 Accounts Payable—U.S. Savings Bond Remittances
•      808 Real Estate Loans Payable
•      809 Escrow Accounts
 
 
CREATE VIEW 800AccountsPayable AS
SELECT SUM(AccountsPayableAMT) AS TotalAccountsPayable
FROM (
  SELECT AccountsPayableAMT FROM "801 Accounts Payable"
  UNION ALL
  SELECT AccountsPayableAMT FROM "801.1 Accounts Payable—Travelers’ Checks and Money Orders"
  UNION ALL
  SELECT AccountsPayableAMT FROM "802 Accounts Payable—Undistributed Payments"
  UNION ALL
  SELECT AccountsPayableAMT FROM "802.1 Accounts Payable—Credit Card Payments in Process"
  UNION ALL
  SELECT AccountsPayableAMT FROM "802.2 Accounts Payable—Credit Card Adjustments in Process"
  UNION ALL
  SELECT AccountsPayableAMT FROM "802.3 Accounts Payable—Credit Card Chargebacks in Process"
  UNION ALL
  SELECT AccountsPayableAMT FROM "803 Accounts Payable—Undistributed Payroll Deductions or Allotments"
  UNION ALL
  SELECT AccountsPayableAMT FROM "804 Accounts Payable—Check Transmittal Service"
  UNION ALL
  SELECT AccountsPayableAMT FROM "805 Accounts Payable—Drafts Authorized"
  UNION ALL
  SELECT AccountsPayableAMT FROM "806 Accounts Payable—Installment Payments on U.S. Bonds"
  UNION ALL
  SELECT AccountsPayableAMT FROM "807 Accounts Payable—U.S. Savings Bond Remittances"
  UNION ALL
  SELECT AccountsPayableAMT FROM "808 Real Estate Loans Payable"
  UNION ALL
  SELECT AccountsPayableAMT FROM "809 Escrow Accounts"
) AS AllAccountsPayable;
 
 
-- Inserting data into "801 Accounts Payable"
INSERT INTO "801 Accounts Payable" (AccountsPayableAMT, Date)
VALUES (500, '2022-01-01');
 
-- Inserting data into "801.1 Accounts Payable—Travelers’ Checks and Money Orders"
INSERT INTO "801.1 Accounts Payable—Travelers’ Checks and Money Orders" (AccountsPayableAMT, Date)
VALUES (100, '2022-01-01');
 
-- Inserting data into "802 Accounts Payable—Undistributed Payments"
INSERT INTO "802 Accounts Payable—Undistributed Payments" (AccountsPayableAMT, Date)
VALUES (1000, '2022-01-01');
 
-- Inserting data into "802.1 Accounts Payable—Credit Card Payments in Process"
INSERT INTO "802.1 Accounts Payable—Credit Card Payments in Process" (AccountsPayableAMT, Date)
VALUES (200, '2022-01-01');
 
-- Inserting data into "802.2 Accounts Payable—Credit Card Adjustments in Process"
INSERT INTO "802.2 Accounts Payable—Credit Card Adjustments in Process" (AccountsPayableAMT, Date)
VALUES (50, '2022-01-01');
 
-- Inserting data into "802.3 Accounts Payable—Credit Card Chargebacks in Process"
INSERT INTO "802.3 Accounts Payable—Credit Card Chargebacks in Process" (AccountsPayableAMT, Date)
VALUES (25, '2022-01-01');
 
 
-- Inserting data into "803 Accounts Payable—Undistributed Payroll Deductions or Allotments"
INSERT INTO "803 Accounts Payable—Undistributed Payroll Deductions or Allotments" (AccountsPayableAMT, Date)
VALUES (1000, '2022-01-01');
 
-- Inserting data into "804 Accounts Payable—Check Transmittal Service"
INSERT INTO "804 Accounts Payable—Check Transmittal Service" (AccountsPayableAMT, Date)
VALUES (150, '2022-01-01');
 
-- Inserting data into "805 Accounts Payable—Drafts Authorized"
INSERT INTO "805 Accounts Payable—Drafts Authorized" (AccountsPayableAMT, Date)
VALUES (75, '2022-01-01');
 
-- Inserting data into "806 Accounts Payable—Installment Payments on U.S. Bonds"
INSERT INTO "806 Accounts Payable—Installment Payments on U.S. Bonds" (AccountsPayableAMT, Date)
VALUES (250, '2022-01-01');
 
-- Inserting data into "807 Accounts Payable—U.S. Savings Bond Remittances"
INSERT INTO "807 Accounts Payable—U.S. Savings Bond Remittances" (AccountsPayableAMT, Date)
VALUES (200, '2022-01-01');
 
-- Inserting data into "808 Real Estate Loans Payable"
INSERT INTO "808 Real Estate Loans Payable" (AccountsPayableAMT, Date)
VALUES (5000, '2022-01-01');
 
-- Inserting data into "809 Escrow Accounts"
INSERT INTO "809 Escrow Accounts" (AccountsPayableAMT, Date)
VALUES (1000, '2022-01-01');
 
 
-- Update Accounts Payable
UPDATE "801AccountsPayable"
SET "AccountsPayableAMT" = 5000.00,
"Date" = '2023-03-14';
 
-- Update Accounts Payable - Travelers’ Checks and Money Orders
UPDATE "801.1AccountsPayable-TravelersChecksAndMoneyOrders"
SET "AccountsPayableAMT" = 1000.00,
"Date" = '2023-03-14';
 
-- Update Accounts Payable - Undistributed Payments
UPDATE "802AccountsPayable-UndistributedPayments"
SET "AccountsPayableAMT" = 3500.00,
"Date" = '2023-03-14';
 
-- Update Accounts Payable - Credit Card Payments in Process
UPDATE "802.1AccountsPayable-CreditCardPaymentsInProgress"
SET "AccountsPayableAMT" = 2000.00,
"Date" = '2023-03-14';
 
-- Update Accounts Payable - Credit Card Adjustments in Process
UPDATE "802.2AccountsPayable-CreditCardAdjustmentsInProgress"
SET "AccountsPayableAMT" = 1500.00,
"Date" = '2023-03-14';
 
-- Update Accounts Payable - Credit Card Chargebacks in Process
UPDATE "802.3AccountsPayable-CreditCardChargebacksInProgress"
SET "AccountsPayableAMT" = 1000.00,
"Date" = '2023-03-14';
 
 
-- Updating data in "803 Accounts Payable—Undistributed Payroll Deductions or Allotments"
UPDATE "803 Accounts Payable—Undistributed Payroll Deductions or Allotments"
SET AccountsPayableAMT = 1500, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Updating data in "804 Accounts Payable—Check Transmittal Service"
UPDATE "804 Accounts Payable—Check Transmittal Service"
SET AccountsPayableAMT = 200, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Updating data in "805 Accounts Payable—Drafts Authorized"
UPDATE "805 Accounts Payable—Drafts Authorized"
SET AccountsPayableAMT = 100, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Updating data in "806 Accounts Payable—Installment Payments on U.S. Bonds"
UPDATE "806 Accounts Payable—Installment Payments on U.S. Bonds"
SET AccountsPayableAMT = 300, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Updating data in "807 Accounts Payable—U.S. Savings Bond Remittances"
UPDATE "807 Accounts Payable—U.S. Savings Bond Remittances"
SET AccountsPayableAMT = 250, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Updating data in "808 Real Estate Loans Payable"
UPDATE "808 Real Estate Loans Payable"
SET AccountsPayableAMT = 6000, Date = '2022-02-01'
WHERE AccountsPayableID = 1;
 
-- Update Escrow Accounts
UPDATE "809EscrowAccounts"
SET "AccountsPayableAMT" = 3000.00,
WHERE AccountsPayableID = 1;
 
 
 
810 Notes and Interest Payable
•      811 Mortgage Notes Payable
•      812 Notes Payable—Other
•      812.1 Notes Payable—Commitment Fees
•      813 Federal Funds Payable
•      818 Accrued Interest Payable
 
 
CREATE VIEW "810NotesandInterestPayable" AS
SELECT SUM("NotesAndInterestPayableAMT") AS "TotalNotesAndInterestPayable"
FROM (
  SELECT "NotesAndInterestPayableAMT" FROM "811MortgageNotesPayable"
  UNION ALL
  SELECT "NotesAndInterestPayableAMT" FROM "812NotesPayableOther"
  UNION ALL
  SELECT "NotesAndInterestPayableAMT" FROM "812_1NotesPayableCommitmentFees"
  UNION ALL
  SELECT "NotesAndInterestPayableAMT" FROM "813FederalFundsPayable"
  UNION ALL
  SELECT "NotesAndInterestPayableAMT" FROM "818AccruedInterestPayable"
) AS subquery;
 
INSERT INTO "811MortgageNotesPayable" ("NotesAndInterestPayableAMT", "Date")
VALUES (1000.00, '2023-03-14');
 
UPDATE "811MortgageNotesPayable"
SET "NotesAndInterestPayableAMT" = 2000.00, "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
INSERT INTO "812NotesPayableOther" ("NotesAndInterestPayableAMT", "Date")
VALUES (500.00, '2023-03-14');
 
UPDATE "812NotesPayableOther"
SET "NotesAndInterestPayableAMT" = 1000.00, "Date" = '2023-03-15'
WHERE "ID" = 1;
 
INSERT INTO "812_1NotesPayableCommitmentFees" ("NotesAndInterestPayableAMT", "Date")
VALUES (100.00, '2023-03-14');
 
UPDATE "812_1NotesPayableCommitmentFees"
SET "NotesAndInterestPayableAMT" = 200.00, "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
INSERT INTO "813FederalFundsPayable" ("NotesAndInterestPayableAMT", "Date")
VALUES (250.00, '2023-03-14');
 
UPDATE "813FederalFundsPayable"
SET "NotesAndInterestPayableAMT" = 500.00, "Date" = '2023-03-15'
WHERE "ID" = 1;
 
INSERT INTO "818AccruedInterestPayable" ("NotesAndInterestPayableAMT", "Date")
VALUES (75.00, '2023-03-14');
 
 
UPDATE "818AccruedInterestPayable"
SET "NotesAndInterestPayableAMT" = 150.00, "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
 
 
820 Dividends Payable
•      820.1 Dividends Payable on Regular Shares
•      820.2 Dividends Payable on Share Drafts
•      820.3 Dividends Payable on Club Accounts
•      820.4 Dividends Payable on IRA/Keogh Accounts
•      820.5 Dividends Payable on Share Certificates
•      820.6 Dividends Payable on Money Market Accounts
•      820.7 Dividends Payable on Other Accounts
 
 
CREATE VIEW "820DividendsPayable" AS
SELECT 
  SUM("DividendsPayableAMT") AS "TotalDividendsPayable"
FROM (
  SELECT "DividendsPayableAMT" FROM "820.1 Dividends Payable on Regular Shares"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.2 Dividends Payable on Share Drafts"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.3 Dividends Payable on Club Accounts"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.4 Dividends Payable on IRA/Keogh Accounts"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.5 Dividends Payable on Share Certificates"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.6 Dividends Payable on Money Market Accounts"
  UNION ALL
  SELECT "DividendsPayableAMT" FROM "820.7 Dividends Payable on Other Accounts"
) AS dividends_payable;
 
 
-- Insert a new record
INSERT INTO "820.1 Dividends Payable on Regular Shares" ("DividendsPayableAMT", "Date")
VALUES (5000, '2023-03-14');
 
-- Update an existing record
UPDATE "820.1 Dividends Payable on Regular Shares"
SET "DividendsPayableAMT" = 6000,
    "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
-- Insert a new record
INSERT INTO "820.2 Dividends Payable on Share Drafts" ("DividendsPayableAMT", "Date")
VALUES (3000, '2023-03-14');
 
-- Update an existing record
UPDATE "820.2 Dividends Payable on Share Drafts"
SET "DividendsPayableAMT" = 4000,
    "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
 
-- Insert a new record
INSERT INTO "820.3 Dividends Payable on Club Accounts" ("DividendsPayableAMT", "Date")
VALUES (2000, '2023-03-14');
 
-- Update an existing record
UPDATE "820.3 Dividends Payable on Club Accounts"
SET "DividendsPayableAMT" = 3000,
    "Date" = '2023-03-15'
WHERE "ID" = 1;
 
-- Insert a new record
INSERT INTO "820.4 Dividends Payable on IRA/Keogh Accounts" ("DividendsPayableAMT", "Date")
VALUES (1000, '2023-03-14');
 
-- Update an existing record
UPDATE "820.4 Dividends Payable on IRA/Keogh Accounts"
SET "DividendsPayableAMT" = 2000,
    "Date" = '2023-03-15'
WHERE "ID" = 1;
 
 
 
INSERT INTO "820.5 Dividends Payable on Share Certificates" (DividendsPayableAMT, Date)
VALUES (value1, value2);
 
 
UPDATE "820.5 Dividends Payable on Share Certificates"
SET DividendsPayableAMT = new_value1, Date = new_value2
WHERE [some condition];
 
 
 
INSERT INTO "820.6 Dividends Payable on Money Market Accounts" (DividendsPayableAMT, Date)
VALUES (value1, value2);
 
 
 
UPDATE "820.6 Dividends Payable on Money Market Accounts"
SET DividendsPayableAMT = new_value1, Date = new_value2
WHERE [some condition];
 
 
 
INSERT INTO "820.7 Dividends Payable on Other Accounts" (DividendsPayableAMT, Date)
VALUES (value1, value2);
 
 
UPDATE "820.7 Dividends Payable on Other Accounts"
SET DividendsPayableAMT = new_value1, Date = new_value2
WHERE [some condition];
 
 
 
 
830 Interest Refunds Payable
 
 
CREATE VIEW "830InterestRefundsPayable" AS
SELECT SUM(InterestRefundsPayableAMT) AS TotalInterestRefundsPayable
FROM "830_1 Interest Refunds Payable";
 
 
INSERT INTO "830_1 Interest Refunds Payable" (InterestRefundsPayableAMT, Date)
VALUES (value1, value2);
 
 
UPDATE "830_1 Interest Refunds Payable"
SET InterestRefundsPayableAMT = new_value1, Date = new_value2
WHERE [some condition];
 
 
 
840 Taxes Payable
•      841 Federal Withholding Taxes Payable
•      842 State Withholding Taxes Payable
•      845 City Withholding Taxes Payable
•      846 Social Security Taxes Payable
•      847 Federal Unemployment Compensation Tax Payable
•      848 State Unemployment Compensation Tax Payable
•      849 Other Taxes Payable
 
 
CREATE VIEW "840TaxesPayable" AS
SELECT SUM(TaxesPayableAMT) AS TotalTaxesPayable
FROM (
    SELECT TaxesPayableAMT FROM "841 Federal Withholding Taxes Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "842 State Withholding Taxes Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "845 City Withholding Taxes Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "846 Social Security Taxes Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "847 Federal Unemployment Compensation Tax Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "848 State Unemployment Compensation Tax Payable"
    UNION ALL SELECT TaxesPayableAMT FROM "849 Other Taxes Payable"
) AS combined_tables;
 
 
INSERT INTO "841Federal Withholding Taxes Payable" (TaxesPayableAMT, Date) VALUES (5000.00, '2023-03-14');
 
UPDATE "841Federal Withholding Taxes Payable" SET TaxesPayableAMT = 6000.00, Date = '2023-03-15' WHERE id = 1;
 
INSERT INTO "842State Withholding Taxes Payable" (TaxesPayableAMT, Date) VALUES (2500.00, '2023-03-14');
 
UPDATE "842State Withholding Taxes Payable" SET TaxesPayableAMT = 3000.00, Date = '2023-03-15' WHERE id = 1;
 
INSERT INTO "845City Withholding Taxes Payable" (TaxesPayableAMT, Date) VALUES (1000.00, '2023-03-14');
 
UPDATE "845City Withholding Taxes Payable" SET TaxesPayableAMT = 1200.00, Date = '2023-03-15' WHERE id = 1;
 
INSERT INTO "846Social Security Taxes Payable" (TaxesPayableAMT, Date) VALUES (3000.00, '2023-03-14');
 
UPDATE "846Social Security Taxes Payable" SET TaxesPayableAMT = 3600.00, Date = '2023-03-15' WHERE id = 1;
 
 
INSERT INTO "847Federal Unemployment Compensation Tax Payable" (TaxesPayableAMT, Date) VALUES (2000.00, '2023-03-14');
 
UPDATE "847Federal Unemployment Compensation Tax Payable" SET TaxesPayableAMT = 2400.00, Date = '2023-03-15' WHERE id = 1;
 
INSERT INTO "848State Unemployment Compensation Tax Payable" (TaxesPayableAMT, Date) VALUES (1500.00, '2023-03-14');
 
UPDATE "848State Unemployment Compensation Tax Payable" SET TaxesPayableAMT = 1800.00, Date = '2023-03-15' WHERE id = 1;
 
INSERT INTO "849Other Taxes Payable" (TaxesPayableAMT, Date) VALUES (500.00, '2023-03-14');
 
UPDATE "849Other Taxes Payable" SET TaxesPayableAMT = 600.00, Date = '2023-03-15' WHERE id = 1;
 
 
 
 
 
850 Accrued Expenses
•      851 Accrued Salaries
•      852 Accrued Employee Benefits
•      853 Accrued Cost of Space Occupied
•      854 Accrued Dividends Payable
•      855 Accrued Accounting Service Cash
•      856 Accrued Loss Contingencies
•      859 Other Accrued Expenses
 
 
CREATE VIEW 850AccruedExpenses AS
SELECT SUM(AccruedExpensesAMT) AS TotalAccruedExpenses
FROM (
    SELECT AccruedExpensesAMT FROM table_851_Accrued_Salaries
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_852_Accrued_Employee_Benefits
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_853_Accrued_Cost_of_Space_Occupied
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_854_Accrued_Dividends_Payable
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_855_Accrued_Accounting_Service_Cash
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_856_Accrued_Loss_Contingencies
    UNION ALL
    SELECT AccruedExpensesAMT FROM table_859_Other_Accrued_Expenses
) AS TotalAccruedExpenses;
 
 
INSERT INTO table_851_Accrued_Salaries (AccruedExpensesAMT, Date)
VALUES (5000.00, '2022-03-14');
 
UPDATE table_851_Accrued_Salaries
SET AccruedExpensesAMT = 5500.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
 
INSERT INTO table_852_Accrued_Employee_Benefits (AccruedExpensesAMT, Date)
VALUES (3500.00, '2022-03-14');
 
UPDATE table_852_Accrued_Employee_Benefits
SET AccruedExpensesAMT = 4000.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
INSERT INTO table_853_Accrued_Cost_of_Space_Occupied (AccruedExpensesAMT, Date)
VALUES (4500.00, '2022-03-14');
 
UPDATE table_853_Accrued_Cost_of_Space_Occupied
SET AccruedExpensesAMT = 5000.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
INSERT INTO table_854_Accrued_Dividends_Payable (AccruedExpensesAMT, Date)
VALUES (2500.00, '2022-03-14');
 
UPDATE table_854_Accrued_Dividends_Payable
SET AccruedExpensesAMT = 3000.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
INSERT INTO table_855_Accrued_Accounting_Service_Cash (AccruedExpensesAMT, Date)
VALUES (1500.00, '2022-03-14');
 
UPDATE table_855_Accrued_Accounting_Service_Cash
SET AccruedExpensesAMT = 2000.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
INSERT INTO table_856_Accrued_Loss_Contingencies (AccruedExpensesAMT, Date)
VALUES (500.00, '2022-03-14');
 
UPDATE table_856_Accrued_Loss_Contingencies
SET AccruedExpensesAMT = 1000.00,
    Date = '2022-03-15'
WHERE ID = 1;
 
INSERT INTO table_859_Other_Accrued_Expenses (AccruedExpensesAMT, Date)
VALUES (2000.00, '2022-03-14');
 
 
UPDATE table_859_Other_Accrued_Expenses
SET AccruedExpensesAMT = 2500.00,
    Date = '2022-
 
 
860 Other Liabilities
•      861 Liability Under Pension Plan
•      862 Collections on Loans and Other Obligations Serviced
•      863 Obligation Under Capital Lease
•      864 Monetary Control Pass Through Deposits
•      865 Main Office
•      866 Undisbursed Loan Proceeds
•      869 Other Liabilities
 
CREATE VIEW "860OtherLiabilities" AS
SELECT SUM("OtherLiabilitiesAMT") AS "TotalOtherLiabilities"
FROM (
    SELECT "OtherLiabilitiesAMT" FROM "861LiabilityUnderPensionPlan"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "862CollectionsOnLoansAndOtherObligationsServiced"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "863ObligationUnderCapitalLease"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "864MonetaryControlPassThroughDeposits"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "865MainOffice"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "866UndisbursedLoanProceeds"
    UNION ALL
    SELECT "OtherLiabilitiesAMT" FROM "869OtherLiabilities"
) AS "AllOtherLiabilities";
 
 
 
-- Insert data into 861 Liability Under Pension Plan table
INSERT INTO "861LiabilityUnderPensionPlan" ("OtherLiabilitiesAMT", "Date")
VALUES (1000.00, '2022-01-01');
 
-- Update data in 861 Liability Under Pension Plan table
UPDATE "861LiabilityUnderPensionPlan"
SET "OtherLiabilitiesAMT" = 1500.00, "Date" = '2022-02-01'
WHERE "id" = 1;
 
 
-- Insert data into 862 Collections on Loans and Other Obligations Serviced table
INSERT INTO "862CollectionsOnLoansAndOtherObligationsServiced" ("OtherLiabilitiesAMT", "Date")
VALUES (2000.00, '2022-01-01');
 
-- Update data in 862 Collections on Loans and Other Obligations Serviced table
UPDATE "862CollectionsOnLoansAndOtherObligationsServiced"
SET "OtherLiabilitiesAMT" = 2500.00, "Date" = '2022-02-01'
WHERE "id" = 1;
 
 
-- Insert data into 863 Obligation Under Capital Lease table
INSERT INTO "863ObligationUnderCapitalLease" ("OtherLiabilitiesAMT", "Date")
VALUES (3000.00, '2022-01-01');
 
-- Update data in 863 Obligation Under Capital Lease table
UPDATE "863ObligationUnderCapitalLease"
SET "OtherLiabilitiesAMT" = 3500.00, "Date" = '2022-02-01'
WHERE "id" = 1;
 
 
-- Insert data into 864 Monetary Control Pass Through Deposits table
INSERT INTO "864MonetaryControlPassThroughDeposits" ("OtherLiabilitiesAMT", "Date")
VALUES (4000.00, '2022-01-01');
 
-- Update data in 864 Monetary Control Pass Through Deposits table
UPDATE "864MonetaryControlPassThroughDeposits"
SET "OtherLiabilitiesAMT" = 4500.00, "Date" = '2022-02-01'
WHERE "id" = 1;
 
INSERT INTO "865 Main Office" ("OtherLiabilitiesAMT", "Date") 
VALUES (10000.00, '2023-03-14');
 
UPDATE "865 Main Office"
SET "OtherLiabilitiesAMT" = 15000.00, "Date" = '2023-03-15'
WHERE "id" = 1;
 
 
INSERT INTO "866 Undisbursed Loan Proceeds" ("OtherLiabilitiesAMT", "Date") 
VALUES (5000.00, '2023-03-14');
 
UPDATE "866 Undisbursed Loan Proceeds"
SET "OtherLiabilitiesAMT" = 8000.00, "Date" = '2023-03-15'
WHERE "id" = 1;
 
 
INSERT INTO "869 Other Liabilities" ("OtherLiabilitiesAMT", "Date") 
VALUES (20000.00, '2023-03-14');
 
UPDATE "869 Other Liabilities"
SET "OtherLiabilitiesAMT" = 25000.00, "Date" = '2023-03-15'
WHERE "id" = 1;
 
 
 
 
870 Unapplied Data Processing Exceptions
•      871 Unapplied Data Processing Exceptions (Receipts)
•      872 Unapplied Data Processing Exceptions (Disbursements)
 
 
CREATE VIEW "870UnappliedDataProcessingExceptions" AS
SELECT SUM("UnappliedDataProcessingExceptionsAMT") AS "TotalUnappliedDataProcessingExceptions"
FROM (
    SELECT "UnappliedDataProcessingExceptionsAMT" FROM "871 Unapplied Data Processing Exceptions (Receipts)"
    UNION ALL
    SELECT "UnappliedDataProcessingExceptionsAMT" FROM "872 Unapplied Data Processing Exceptions (Disbursements)"
) AS "UnappliedDataProcessingExceptionsTable";
 
 
INSERT INTO "871 Unapplied Data Processing Exceptions (Receipts)" ("Date", "UnappliedDataProcessingExceptionsAMT")
VALUES ('2023-03-14', 5000.00);
 
UPDATE "871 Unapplied Data Processing Exceptions (Receipts)"
SET "Date" = '2023-03-15', "UnappliedDataProcessingExceptionsAMT" = 7500.00
WHERE "ID" = 1;
 
 
INSERT INTO "872 Unapplied Data Processing Exceptions (Disbursements)" ("Date", "UnappliedDataProcessingExceptionsAMT")
VALUES ('2023-03-14', 7500.00);
 
UPDATE "872 Unapplied Data Processing Exceptions (Disbursements)"
SET "Date" = '2023-03-15', "UnappliedDataProcessingExceptionsAMT" = 10000.00
WHERE "ID" = 1;
 
 
 
 
880 Deferred Credits
•      881 Unearned Interest on Loans
•      882 Deferred Credits—Insurance Premium Rebates
•      883 Deferred Gain on Liquidation of Loans
•      883.1 Deferred Gain on Transfer of Securities
•      884 Deferred Credits—Credit Card Commitments
•      885 Deferred Credits—Prepaid Interest—Real Estate Loans
•      886 Unamortized Discount on Sale of Assets
•      887 Deferred Credits—Fees Received on Loans to be Purchased
•      888 Deferred Credits—Insurance Premium Stabilization Reserve
•      889 Other Deferred Credits
•      890 Deferred Credits—Net Origination Fees (Costs)—Lines of Credit to Members
•      891 Deferred Credits—Net Origination Fees (Costs)—Lines of  Credit to Members—Credit Cards
•      892 Deferred Credits—Net Origination Fees (Costs)—Home Equity Lines of Credit
•      893 Deferred Credits—Net Commitment Fees (Costs)—Home Equity Lines of Credit
•      894 Deferred Credits—Net Commitment Fees (Costs)—Loans to Members
 
CREATE VIEW 880DeferredCredits AS
SELECT SUM(DeferredCreditsAMT) AS TotalDeferredCreditsAMT
FROM (
  SELECT DeferredCreditsAMT FROM table_881_Unearned_Interest_on_Loans
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_882_Deferred_Credits_Insurance_Premium_Rebates
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_883_Deferred_Gain_on_Liquidation_of_Loans
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_883_1_Deferred_Gain_on_Transfer_of_Securities
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_884_Deferred_Credits_Credit_Card_Commitments
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_885_Deferred_Credits_Prepaid_Interest_Real_Estate_Loans
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_886_Unamortized_Discount_on_Sale_of_Assets
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_887_Deferred_Credits_Fees_Received_on_Loans_to_be_Purchased
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_888_Deferred_Credits_Insurance_Premium_Stabilization_Reserve
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_889_Other_Deferred_Credits
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_890_Deferred_Credits_Net_Origination_Fees_Costs_Lines_of_Credit_to_Members
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_891_Deferred_Credits_Net_Origination_Fees_Costs_Lines_of_Credit_to_Members_Credit_Cards
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_892_Deferred_Credits_Net_Origination_Fees_Costs_Home_Equity_Lines_of_Credit
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_893_Deferred_Credits_Net_Commitment_Fees_Costs_Home_Equity_Lines_of_Credit
  UNION ALL
  SELECT DeferredCreditsAMT FROM table_894_Deferred_Credits_Net_Commitment_Fees_Costs_Loans_to_Members
) AS TotalDeferredCredits;
 
 
-- 881 Unearned Interest on Loans
INSERT INTO table_881 (DeferredCreditsAMT, Date)
VALUES (123.45, '2022-01-01');
 
UPDATE table_881
SET DeferredCreditsAMT = 678.90, Date = '2022-02-01'
WHERE id = 1;
 
-- 882 Deferred Credits—Insurance Premium Rebates
INSERT INTO table_882 (DeferredCreditsAMT, Date)
VALUES (234.56, '2022-01-01');
 
UPDATE table_882
SET DeferredCreditsAMT = 789.01, Date = '2022-02-01'
WHERE id = 1;
 
-- 883 Deferred Gain on Liquidation of Loans
INSERT INTO table_883 (DeferredCreditsAMT, Date)
VALUES (345.67, '2022-01-01');
 
UPDATE table_883
SET DeferredCreditsAMT = 890.12, Date = '2022-02-01'
WHERE id = 1;
 
-- 883.1 Deferred Gain on Transfer of Securities
INSERT INTO table_883_1 (DeferredCreditsAMT, Date)
VALUES (456.78, '2022-01-01');
 
UPDATE table_883_1
SET DeferredCreditsAMT = 901.23, Date = '2022-02-01'
WHERE id = 1;
 
-- 884 Deferred Credits—Credit Card Commitments
INSERT INTO table_884 (DeferredCreditsAMT, Date)
VALUES (567.89, '2022-01-01');
 
UPDATE table_884
SET DeferredCreditsAMT = 012.34, Date = '2022-02-01'
WHERE id = 1;
 
-- 885 Deferred Credits—Prepaid Interest—Real Estate Loans
INSERT INTO table_885 (DeferredCreditsAMT, Date)
VALUES (678.90, '2022-01-01');
 
UPDATE table_885
SET DeferredCreditsAMT = 123.45, Date = '2022-02-01'
WHERE id = 1;
 
-- 886 Unamortized Discount on Sale of Assets
INSERT INTO table_886 (DeferredCreditsAMT, Date)
VALUES (789.01, '2022-01-01');
 
UPDATE table_886
SET DeferredCreditsAMT = 234.56, Date = '2022-02-01'
WHERE id = 1;
 
-- 887 Deferred Credits—Fees Received on Loans to be Purchased
INSERT INTO table_887 (DeferredCreditsAMT, Date)
VALUES (890.12, '2022-01-01');
 
UPDATE table_887
SET DeferredCreditsAMT = 345.67, Date = '2022-02-01'
WHERE id = 1;
 
-- 888 Deferred Credits—Insurance Premium Stabilization Reserve
INSERT INTO table_888 (DeferredCreditsAMT, Date)
VALUES (901.23, '2022-01-01');
 
UPDATE table_888
SET DeferredCreditsAMT = 456.78, Date = '2022-02-01'
WHERE id = 1;
 
-- 889 Other Deferred Credits
INSERT INTO table_889 (DeferredCreditsAMT, Date)
VALUES (012.34, '2022-01-01');
 
UPDATE table_889
SET DeferredCreditsAMT = 567.89, Date = '2022-02-01'
WHERE id = 1;
 
 
BEGIN;
 
-- Insert new record
INSERT INTO "890 Deferred Credits—Net Origination Fees (Costs)—Lines of Credit to Members" ("DeferredCreditsAMT", "Date")
VALUES (<deferred_credits_amt>, <date>);
 
INSERT INTO "891 Deferred Credits—Net Origination Fees (Costs)—Lines of Credit to Members—Credit Cards" ("DeferredCreditsAMT", "Date")
VALUES (<deferred_credits_amt>, <date>);
 
INSERT INTO "892 Deferred Credits—Net Origination Fees (Costs)—Home Equity Lines of Credit" ("DeferredCreditsAMT", "Date")
VALUES (<deferred_credits_amt>, <date>);
 
INSERT INTO "893 Deferred Credits—Net Commitment Fees (Costs)—Home Equity Lines of Credit" ("DeferredCreditsAMT", "Date")
VALUES (<deferred_credits_amt>, <date>);
 
INSERT INTO "894 Deferred Credits—Net Commitment Fees (Costs)—Loans to Members" ("DeferredCreditsAMT", "Date")
VALUES (<deferred_credits_amt>, <date>);
 
-- Update existing record
UPDATE "890 Deferred Credits—Net Origination Fees (Costs)—Lines of Credit to Members"
SET "DeferredCreditsAMT" = <new_deferred_credits_amt>, "Date" = <new_date>
WHERE <condition>;
 
UPDATE "891 Deferred Credits—Net Origination Fees (Costs)—Lines of Credit to Members—Credit Cards"
SET "DeferredCreditsAMT" = <new_deferred_credits_amt>, "Date" = <new_date>
WHERE <condition>;
 
UPDATE "892 Deferred Credits—Net Origination Fees (Costs)—Home Equity Lines of Credit"
SET "DeferredCreditsAMT" = <new_deferred_credits_amt>, "Date" = <new_date>
WHERE <condition>;
 
UPDATE "893 Deferred Credits—Net Commitment Fees (Costs)—Home Equity Lines of Credit"
SET "DeferredCreditsAMT" = <new_deferred_credits_amt>, "Date" = <new_date>
WHERE <condition>;
 
UPDATE "894 Deferred Credits—Net Commitment Fees (Costs)—Loans to Members"
SET "DeferredCreditsAMT" = <new_deferred_credits_amt>, "Date" = <new_date>
WHERE <condition>;
 
COMMIT;
 
 
900 Shares of Members
•      901 Regular Shares
•      902 Share Drafts
•      903 Club Accounts
•      904 Other Shares
•      905 Escrow Accounts
•      906 IRA/Keogh Retirement Services
•      908 Share Certificates
•      909 Shares—Unposted Payroll Deductions
•      910 Public Unit Shares
•      911 Money Market Shares
•      921 Shares of Nonmembers
 
 
CREATE VIEW 900SharesofMembers AS
SELECT SUM(SharesofMembersAMT) AS TotalSharesofMembersAMT
FROM (
    SELECT SharesofMembersAMT FROM "901 Regular Shares"
    UNION ALL
    SELECT SharesofMembersAMT FROM "902 Share Drafts"
    UNION ALL
    SELECT SharesofMembersAMT FROM "903 Club Accounts"
    UNION ALL
    SELECT SharesofMembersAMT FROM "904 Other Shares"
    UNION ALL
    SELECT SharesofMembersAMT FROM "905 Escrow Accounts"
    UNION ALL
    SELECT SharesofMembersAMT FROM "906 IRA/Keogh Retirement Services"
    UNION ALL
    SELECT SharesofMembersAMT FROM "908 Share Certificates"
    UNION ALL
    SELECT SharesofMembersAMT FROM "909 Shares—Unposted Payroll Deductions"
    UNION ALL
    SELECT SharesofMembersAMT FROM "910 Public Unit Shares"
    UNION ALL
    SELECT SharesofMembersAMT FROM "911 Money Market Shares"
    UNION ALL
    SELECT SharesofMembersAMT FROM "921 Shares of Nonmembers"
) AS all_shares;
 
 
-- INSERT INTO 901 Regular Shares
INSERT INTO "901 Regular Shares" (SharesofMembersAMT, Date)
VALUES (500, '2023-03-14');
 
-- UPDATE 901 Regular Shares
UPDATE "901 Regular Shares"
SET SharesofMembersAMT = 700, Date = '2023-03-15'
WHERE RegularSharesID = 1;
 
-- INSERT INTO 902 Share Drafts
INSERT INTO "902 Share Drafts" (SharesofMembersAMT, Date)
VALUES (300, '2023-03-14');
 
-- UPDATE 902 Share Drafts
UPDATE "902 Share Drafts"
SET SharesofMembersAMT = 400, Date = '2023-03-15'
WHERE ShareDraftsID = 1;
 
-- INSERT INTO 903 Club Accounts
INSERT INTO "903 Club Accounts" (SharesofMembersAMT, Date)
VALUES (200, '2023-03-14');
 
-- UPDATE 903 Club Accounts
UPDATE "903 Club Accounts"
SET SharesofMembersAMT = 300, Date = '2023-03-15'
WHERE ClubAccountID = 1;
 
-- INSERT INTO 904 Other Shares
INSERT INTO "904 Other Shares" (SharesofMembersAMT, Date)
VALUES (100, '2023-03-14');
 
-- UPDATE 904 Other Shares
UPDATE "904 Other Shares"
SET SharesofMembersAMT = 200, Date = '2023-03-15'
WHERE OtherSharesID = 1;
 
-- INSERT INTO 905 Escrow Accounts
INSERT INTO "905 Escrow Accounts" (SharesofMembersAMT, Date)
VALUES (50, '2023-03-14');
 
-- UPDATE 905 Escrow Accounts
UPDATE "905 Escrow Accounts"
SET SharesofMembersAMT = 75, Date = '2023-03-15'
WHERE EscrowAccountID = 1;
 
-- INSERT INTO 906 IRA/Keogh Retirement Services
INSERT INTO "906 IRA/Keogh Retirement Services" (SharesofMembersAMT, Date)
VALUES (2000, '2023-03-14');
 
-- UPDATE 906 IRA/Keogh Retirement Services
UPDATE "906 IRA/Keogh Retirement Services"
SET SharesofMembersAMT = 2500, Date = '2023-03-15'
WHERE IRAKeoghRetirementServiceID = 1;
 
-- INSERT INTO 908 Share Certificates
INSERT INTO "908 Share Certificates" (SharesofMembersAMT, Date)
VALUES (750, '2023-03-14');
 
-- UPDATE 908 Share Certificates
UPDATE "908 Share Certificates"
SET SharesofMembersAMT = 1000, Date = '2023-03-15'
WHERE ShareCertificateID = 1;
 
-- INSERT INTO 909 Shares—Unposted Payroll Deductions
INSERT INTO "909 Shares—Unposted Payroll Deductions" (SharesofMembersAMT, Date)
VALUES (500, '2023-03-14');
 
-- UPDATE 909 Shares—Unposted Payroll Deductions
UPDATE "909 Shares—Unposted Payroll Deductions"
SET SharesofMembersAMT = 700, Date = '2023-03-15'
WHERE UnpostedPayrollDeductionID = 1;
 
-- INSERT INTO 910 Public Unit Shares
INSERT INTO "910 Public Unit Shares" (SharesofMembersAMT, Date)
VALUES (250, '2023-03-14');
 
-- UPDATE 910 Public Unit Shares
UPDATE "910 Public Unit Shares"
SET SharesofMembersAMT = 350, Date = '2023-03-15'
WHERE PublicUnitShareID = 1;
 
-- INSERT INTO 911 Money Market Shares
INSERT INTO "911 Money Market Shares" (SharesofMembersAMT, Date)
VALUES (1000, '2023-03-14');
 
-- UPDATE 911 Money Market Shares
UPDATE "911 Money Market Shares"
SET SharesofMembersAMT = 1500, Date = '2023-03-15'
WHERE MoneyMarketShareID = 1;
 
-- INSERT INTO 921 Shares of Nonmembers
INSERT INTO "921 Shares of Nonmembers" (SharesofMembersAMT, Date)
VALUES (500, '2023-03-14');
 
-- UPDATE 921 Shares of Nonmembers
UPDATE "921 Shares of Nonmembers"
SET SharesofMembersAMT = 700, Date = '2023-03-15'
WHERE NonmemberShareID = 1;
 
 
925 Deposits
 
 
-- CREATE VIEW 925Deposits
CREATE VIEW "925Deposits" AS
SELECT SUM(DepositsAMT) AS TotalDeposits
FROM "925_1Deposits";
 
-- INSERT INTO 925_1Deposits
INSERT INTO "925_1Deposits" (DepositsAMT, Date)
VALUES (5000, '2023-03-14');
 
-- UPDATE 925_1Deposits
UPDATE "925_1Deposits"
SET DepositsAMT = 7000, Date = '2023-03-15'
WHERE DepositsID = 1;
 
 
 
930 Reserves
•      931 Regular Reserves
•      932 Special Reserve for Losses
•      933 Other Revocable Reserves
•      934 Reserve for Loss Contingencies
•      935 Corporate Central Reserve
 
 
-- CREATE VIEW 930Reserves
CREATE VIEW "930Reserves" AS
SELECT SUM(ReservesAMT) AS TotalReserves
FROM (
    SELECT ReservesAMT FROM "931RegularReserves"
    UNION ALL SELECT ReservesAMT FROM "932SpecialReserveForLosses"
    UNION ALL SELECT ReservesAMT FROM "933OtherRevocableReserves"
    UNION ALL SELECT ReservesAMT FROM "934ReserveForLossContingencies"
    UNION ALL SELECT ReservesAMT FROM "935CorporateCentralReserve"
) AS Reserves;
 
-- INSERT INTO 931RegularReserves
INSERT INTO "931RegularReserves" (ReservesAMT, Date)
VALUES (5000, '2023-03-14');
 
-- UPDATE 931RegularReserves
UPDATE "931RegularReserves"
SET ReservesAMT = 7000, Date = '2023-03-15'
WHERE ReservesID = 1;
 
-- INSERT INTO 932SpecialReserveForLosses
INSERT INTO "932SpecialReserveForLosses" (ReservesAMT, Date)
VALUES (3000, '2023-03-14');
 
-- UPDATE 932SpecialReserveForLosses
UPDATE "932SpecialReserveForLosses"
SET ReservesAMT = 5000, Date = '2023-03-16'
WHERE ReservesID = 1;
 
-- INSERT INTO 933OtherRevocableReserves
INSERT INTO "933OtherRevocableReserves" (ReservesAMT, Date)
VALUES (2000, '2023-03-14');
 
-- UPDATE 933OtherRevocableReserves
UPDATE "933OtherRevocableReserves"
SET ReservesAMT = 3000, Date = '2023-03-17'
WHERE ReservesID = 1;
 
-- INSERT INTO 934ReserveForLossContingencies
INSERT INTO "934ReserveForLossContingencies" (ReservesAMT, Date)
VALUES (1000, '2023-03-14');
 
-- UPDATE 934ReserveForLossContingencies
UPDATE "934ReserveForLossContingencies"
SET ReservesAMT = 1500, Date = '2023-03-18'
WHERE ReservesID = 1;
 
-- INSERT INTO 935CorporateCentralReserve
INSERT INTO "935CorporateCentralReserve" (ReservesAMT, Date)
VALUES (4000, '2023-03-14');
 
-- UPDATE 935CorporateCentralReserve
UPDATE "935CorporateCentralReserve"
SET ReservesAMT = 4500, Date = '2023-03-19'
WHERE ReservesID = 1;
 
 
 
940 Undivided Earnings
•      942 Appropriated Undivided Earnings
•      945 Unrealized Loss in Value of Long-term Investment in Equity Securities
 
 
CREATE VIEW 940UndividedEarnings AS
SELECT SUM(UndividedEarningsAMT) as TotalUndividedEarnings
FROM (
    SELECT UndividedEarningsAMT FROM 942_AppropriatedUndividedEarnings
    UNION ALL
    SELECT UndividedEarningsAMT FROM 945_UnrealizedLossesInEquitySecurities
) AS UndividedEarnings;
 
 
INSERT INTO 942_AppropriatedUndividedEarnings (UndividedEarningsAMT, Date) VALUES (1000, '2022-01-01');
INSERT INTO 945_UnrealizedLossesInEquitySecurities (UndividedEarningsAMT, Date) VALUES (500, '2022-01-01');
 
 
UPDATE 942_AppropriatedUndividedEarnings SET UndividedEarningsAMT = 1200 WHERE Date = '2022-01-01';
UPDATE 945_UnrealizedLossesInEquitySecurities SET UndividedEarningsAMT = 800 WHERE Date = '2022-02-01';
 
 
 
950 Donated Equity
 
 
-- create view 950DonatedEquity
CREATE VIEW 950DonatedEquity AS
SELECT SUM(DonatedEquityAMT) AS TotalDonatedEquity
FROM 950_1_DonatedEquity;
 
INSERT INTO 950_1_DonatedEquity (DonatedEquityAMT, Date)
VALUES ([donated equity amount], [date]);
 
-- update DonatedEquityAMT and Date fields in 950_1_DonatedEquity
UPDATE 950_1_DonatedEquity
SET DonatedEquityAMT = [new value],
    Date = [new date]
WHERE [condition];
 
 
960 Net Income (Loss)
 
 
CREATE VIEW "960NetIncome(Loss)" AS
SELECT SUM("NetIncome(Loss)AMT") AS "TotalNetIncomeLoss"
FROM (
    SELECT "NetIncome(Loss)AMT" FROM "960_1_NetIncome(Loss)"
) AS "NetIncomeLoss";
 
 
-- Insert data
INSERT INTO 960_1_NetIncome(Loss) (NetIncome(Loss)AMT, Date)
VALUES ([net income/loss amount], [date]);
 
-- Update data
UPDATE 960_1_NetIncome(Loss)
SET NetIncome(Loss)AMT = [new net income/loss amount], Date = [new date]
WHERE [condition];

