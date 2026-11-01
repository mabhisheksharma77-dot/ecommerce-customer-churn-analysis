-- E-Commerce Customer Churn Analysis
-- Database: churn
-- Table: Ecommerce

-- 1. Overall Churn Analysis
SELECT
    Churn,
    COUNT(*) AS Customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Ecommerce), 2) AS Percentage
FROM Ecommerce
GROUP BY Churn;


-- 2. Churn by Customer Value
SELECT
    CASE
        WHEN Total_Spend < 20000 THEN 'Low Value'
        WHEN Total_Spend < 50000 THEN 'Medium Value'
        ELSE 'High Value'
    END AS Customer_Value,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Total_Spend < 20000 THEN 'Low Value'
        WHEN Total_Spend < 50000 THEN 'Medium Value'
        ELSE 'High Value'
    END;


-- 3. Churn by Tenure
SELECT
    CASE
        WHEN Tenure_Months <= 6 THEN '0-6 Months'
        WHEN Tenure_Months <= 12 THEN '7-12 Months'
        WHEN Tenure_Months <= 24 THEN '13-24 Months'
        ELSE '24+ Months'
    END AS Tenure_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Tenure_Months <= 6 THEN '0-6 Months'
        WHEN Tenure_Months <= 12 THEN '7-12 Months'
        WHEN Tenure_Months <= 24 THEN '13-24 Months'
        ELSE '24+ Months'
    END;


-- 4. Churn by Order Frequency
SELECT
    CASE
        WHEN Total_Orders <= 5 THEN '1-5 Orders'
        WHEN Total_Orders <= 10 THEN '6-10 Orders'
        WHEN Total_Orders <= 20 THEN '11-20 Orders'
        ELSE '20+ Orders'
    END AS Order_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Total_Orders <= 5 THEN '1-5 Orders'
        WHEN Total_Orders <= 10 THEN '6-10 Orders'
        WHEN Total_Orders <= 20 THEN '11-20 Orders'
        ELSE '20+ Orders'
    END;


-- 5. Churn by Customer Rating
SELECT
    CASE
        WHEN Customer_Rating < 3 THEN 'Below 3'
        WHEN Customer_Rating < 4 THEN '3.0-3.9'
        WHEN Customer_Rating < 4.5 THEN '4.0-4.4'
        ELSE '4.5-5.0'
    END AS Rating_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Customer_Rating < 3 THEN 'Below 3'
        WHEN Customer_Rating < 4 THEN '3.0-3.9'
        WHEN Customer_Rating < 4.5 THEN '4.0-4.4'
        ELSE '4.5-5.0'
    END;


-- 6. Churn by Return Count
SELECT
    CASE
        WHEN Return_Count = 0 THEN 'No Returns'
        WHEN Return_Count = 1 THEN '1 Return'
        WHEN Return_Count = 2 THEN '2 Returns'
        ELSE '3+ Returns'
    END AS Return_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Return_Count = 0 THEN 'No Returns'
        WHEN Return_Count = 1 THEN '1 Return'
        WHEN Return_Count = 2 THEN '2 Returns'
        ELSE '3+ Returns'
    END;


-- 7. Churn by Cancellation Count
SELECT
    CASE
        WHEN Cancellation_Count = 0 THEN 'No Cancellations'
        WHEN Cancellation_Count = 1 THEN '1 Cancellation'
        WHEN Cancellation_Count = 2 THEN '2 Cancellations'
        ELSE '3+ Cancellations'
    END AS Cancellation_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY
    CASE
        WHEN Cancellation_Count = 0 THEN 'No Cancellations'
        WHEN Cancellation_Count = 1 THEN '1 Cancellation'
        WHEN Cancellation_Count = 2 THEN '2 Cancellations'
        ELSE '3+ Cancellations'
    END;


-- 8. Churn by Payment Method
SELECT
    Payment_Method,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM Ecommerce
GROUP BY Payment_Method
ORDER BY Churn_Rate DESC;
