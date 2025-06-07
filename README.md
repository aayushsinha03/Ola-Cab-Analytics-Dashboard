# Ola Cab Analytics Dashboard 
## Project Objective 
The objective of this project is to analyze Ola Cab’s booking data to uncover key business insights using a complete data analytics pipeline. By leveraging Excel for data cleaning, SQL for query-based analysis, and Power BI for interactive dashboards, the goal is to evaluate booking trends, revenue performance, cancellation behavior, and customer satisfaction across different vehicle types. This project enables data-driven decision-making by providing stakeholders with clear, actionable visuals and performance metrics.
## 🛠 Technologies Used
Excel:	Initial data cleaning and formatting of raw booking data

SQL (MySQL): Data analysis using aggregations, joins, and filtering for KPIs

Power BI:	Creating a multi-page interactive dashboard with charts, cards, slicers

Power Query Editor:	Data transformation inside Power BI (e.g., type conversion, null handling)

DAX: 	Custom measures like cancellation rate, total revenue, and averages

ChatGPT (Gen AI): 	Used for dataset generation, DAX/SQL guidance, and project documentation
## 📈 Project Workflow
### 1. 📥 Data Collection
Dataset was generated using Generative AI (ChatGPT) based on real-world cab booking structures.
Initially stored in Excel (.xlsx) format, containing 100,000+ rows across 19 columns.
### 2. 🧹 Data Cleaning (Excel)
Removed duplicates and nulls

Standardized column names and date formats

Fixed formatting issues and ensured consistency
### 3. 🗃 Data Analysis (SQL)
Connected cleaned Excel file to MySQL database
Wrote SQL queries to compute:
1. Retrieve all successful bookings:
 2. Find the average ride distance for each vehicle type:
 3. Get the total number of cancelled rides by customers:
 4. List the top 5 customers who booked the highest number of rides:
 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 7. Retrieve all rides where payment was made using UPI:
 8. Find the average customer rating per vehicle type:
 9. Calculate the total booking value of rides completed successfully:
 10. List all incomplete rides along with the reason
### 4. 🔄 Data Transformation (Power Query)

Imported SQL output into Power BI

Performed type conversions, null handling, and minor reshaping

Removed unnecessary columns and error rows
### 5. 📊Data Visualization (Power BI)
Created an interactive, multi-page Power BI dashboard that presents booking, revenue, and customer behavior insights in a clean and visually engaging format.
Pages included:

Overall Summary – Key KPIs like Total Bookings, Revenue, Cancellation Rate, and visual trend lines

Vehicle Types – Analysis of ride distribution, average distance, and customer ratings per cab type

Revenue – Payment method breakdown, high-value customers, and revenue trends

Cancellations – Driver vs. customer cancellation analysis, with reason-based breakdowns

Ratings – Comparison of customer and driver ratings across different ride categories
Visual Elements:

KPI cards, bar charts, pie charts, line graphs, and data tables

Slicers for dynamic filtering by date, vehicle type, payment method, and booking status
Design Features:

Custom formatting for clean and professional UI/UX

Removed visual borders, applied light shadows

Consistent layout and color
### 6. 📌 Insights & Recommendations
#### 🔹 Booking & Usage Trends

Total Bookings Analyzed: 100,000+

Prime Sedan was the most popular and top-performing vehicle in terms of both bookings and revenue.

Ride demand remained consistent, with slight spikes during weekends and holidays (based on booking dates).
#### 🔹 Revenue & Payment Behavior

Cash was the most preferred payment method, followed by UPI.

High-value customers were responsible for a significant share of total revenue.

Revenue distribution was strongest in Prime vehicle categories.
#### 🔹 Ratings & Customer Experience

Prime Sedan received the highest average ratings from both drivers and customers.

Customer ratings were slightly lower for mini and micro vehicles, suggesting room for service improvement in those segments.
#### 🔹 Cancellations & Operational Efficiency

28% of total bookings were cancelled

Driver-side cancellations were more frequent than customer-side

Personal issues and car-related problems were the top reasons for incomplete rides
#### 🔹 Overall Recommendation

Focus on maintaining service quality in top-performing categories like Prime Sedan.

Improve cancellation handling and customer feedback loops for better retention.

Encourage UPI and wallet payments through offers to reduce cash handling overhead
### ✅ Outcome

With this dashboard, decision-makers can:

Reduce driver-side cancellations

Focus on top-performing vehicles (like Prime Sedan)

Improve payment system efficiency

Enhance overall customer satisfaction through data-backed improvements


![Screenshot 2025-06-08 004807](https://github.com/user-attachments/assets/9cfa53f6-e238-45f6-8b82-bfb3fe9e4e99)
![Screenshot 2025-06-08 004833](https://github.com/user-attachments/assets/5331faf7-db90-4bd6-9957-c2f703e76cff)
![Screenshot 2025-06-08 004853](https://github.com/user-attachments/assets/a0667e62-45bb-43c7-ac21-278c627e6f41)
![Screenshot 2025-06-08 004905](https://github.com/user-attachments/assets/49e506f7-7833-4ea8-83a8-e0ba56601125)





















