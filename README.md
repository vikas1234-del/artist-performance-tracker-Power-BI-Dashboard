# artist-performance-tracker-Power-BI-Dashboard

# Power BI Project – Sales & Insights Dashboard
This repository contains a Power BI report (`power bi project updated.pbix`) to analyze sales and customer insights with interactive visuals.
<img width="1919" height="1013" alt="Screenshot 2025-08-30 174911" src="https://github.com/user-attachments/assets/934c1dde-548f-4572-9cdf-e6cf84694384" />

## Highlights
- Clean dashboard with key KPIs (Revenue, Profit, Orders)
- Drill-through pages and slicers for quick filtering
- Reusable model with measures and calculated columns
- Works with sample data; can be connected to your own sources

<img width="1918" height="1012" alt="Screenshot 2025-08-30 174935" src="https://github.com/user-attachments/assets/063b2741-aa7b-4afa-bf9a-3f7817bf3eb3" />

Project Title
Short one-line description: A simple data project containing (choose one) Power BI report / SQL database / Excel workbook for analyzing artists, artworks, customers, and sales.

What’s included
power bi project updated.pbix — Power BI report (interactive dashboard).
sql projects.sql — SQL script to create database, tables, sample data, and queries.
Vikas Excel ProjectSheet.xlsx — Excel workbook with pivots, charts and dashboards.


Quick start
Download the file you want (PBIX / SQL / XLSX).
For Power BI: open the .pbix in Power BI Desktop and refresh data.
For SQL: run source sql projects.sql; in MySQL / MariaDB to create the database and load sample data.
For Excel: open the workbook in Excel, update the input sheet, then refresh pivots/charts.

## Example Insights
- Revenue trend by month
- Top products/customers
- Profitability by category/region
- Drill-down from summary to detailed tables


What you can do
View summary dashboards and KPIs
Run SQL queries to get sales reports and top customers
Reuse the Excel templates for your own data

Requirements
Power BI Desktop (for .pbix) or
MySQL / MariaDB (for .sql) or
Microsoft Excel 2019+ / Microsoft 365 (for .xlsx)

Notes
Change the database name or file paths as needed.
Feel free to add screenshots in an assets/ folder.

License
MIT

Important :-
* Add powerbi backend data SQL file before creating visualization in power BI

  🔹 Steps to Connect SQL Database in Power BI
1. Open Power BI Desktop
Launch Power BI Desktop.

2. Get Data
On the Home tab, click Get Data → Select SQL Server.

3. Enter SQL Server Details
A dialog box will appear:
Server → Enter your SQL Server instance name (e.g., localhost, DESKTOP\SQLEXPRESS, or cloud server like mydb.database.windows.net).
Database → Enter your database name if you know it, or leave blank to browse later.

Data Connectivity mode:
Import → Loads a copy of the data into Power BI.
DirectQuery → Keeps data in SQL Server and queries live when you use visuals.

👉 Choose based on your need (usually Import for small-medium data, DirectQuery for large/real-time).

4. Authentication
Select how you connect:
Windows Authentication (default, uses your login).
Database Authentication (enter SQL username & password).
Microsoft Account (if Azure SQL).

5. Navigator Window
After successful connection, Power BI shows all tables & views in your database.

✅ Select the required tables (like Employees, Sales, etc.).

You can also run a SQL query directly by selecting "Advanced options" → paste your SQL script.


