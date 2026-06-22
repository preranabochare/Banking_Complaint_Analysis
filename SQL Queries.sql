 SELECT * FROM banking_complaints.complaints LIMIT 10;
 
 USE banking_complaints;
 -- Query 1 : Total Complaints
SELECT COUNT(*) AS Total_Complaints FROM complaints;

-- Query 2 : Top 10 Complaint Issues
SELECT Issue,
	   COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY Issue
ORDER BY Total_Complaints DESC
LIMIT 10;


-- Query 3 : Top 10 States by complaints
SELECT State,
	   COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY State
ORDER BY Total_Complaints DESC
LIMIT 10;


-- Query 4 : Complaints by products
SELECT Product,
       COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY Product
ORDER BY Total_Complaints DESC;


-- Query 5 : Submission Channels
SELECT Submitted_via,
        COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY Submitted_via
ORDER BY Total_Complaints DESC;


-- Query 6 : Timely Response Rate 
SELECT 'Timely_response?',
        COUNT(*) AS Total
FROM complaints
GROUP BY 'Timely_response?';

-- Query 7 : Top Companies
SELECT Company,
        COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY Company
ORDER BY Total_Complaints DESC
LIMIT 10;


-- Query 8 : Monthly Complaint TRend
SELECT YEAR(`Date received`) AS Year,
       MONTH(`Date received`) AS Month,
       COUNT(*) AS Total_Complaints
FROM complaints
GROUP BY YEAR(`Date received`),
         MONTH(`Date received`)
ORDER BY Year, Month;