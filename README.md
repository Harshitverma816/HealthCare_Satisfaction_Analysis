🩺 Healthcare Satisfaction Data Analytics Project

📘 Overview

This project focuses on analyzing hospital satisfaction data to uncover insights about patient experiences and hospital performance across the United States.
The complete analytics pipeline was built — from data loading and cleaning in Python, to SQL-based exploration in MySQL (XAMPP), followed by data visualization and dashboard creation in Power BI, and finally project documentation and presentation using Gamma.

The goal was to identify key trends, improve healthcare benchmarking, and provide a data-driven overview for decision-making.

📊 Dataset

Source: 2016 U.S. Hospital Survey Dataset

Description: The dataset contains hospital-level survey results, star ratings, and response metrics from the HCAHPS (Hospital Consumer Assessment of Healthcare Providers and Systems) survey.

Key Columns:

Facility ID – Unique identifier for each hospital

Facility Name – Hospital name

State – U.S. state code

Patient_Survey_Star_Rating – Overall patient rating (1–5 stars)

HCAHPS_Linear_Mean_Value – Mean score of responses

HCAHPS_Answer_Percent – Percentage of positive responses

Response_Rate_Percent – Response rate for survey

🧰 Tools and Technologies
Tool	Purpose
Python (Pandas, NumPy, Matplotlib)	Data loading, cleaning, and EDA
MySQL (XAMPP)	SQL queries and data management
Power BI	Interactive dashboard creation
Gamma App	Project report and presentation
Excel	Supporting data preparation
⚙️ Steps and Workflow
1. Data Loading and Cleaning (Python)

Imported dataset using pandas.

Handled missing values in Patient_Survey_Star_Rating, HCAHPS_Linear_Mean_Value, and HCAHPS_Answer_Percent using state-wise mean imputation.

Performed feature formatting and removed duplicates.

2. Exploratory Data Analysis (EDA)

Analyzed distribution of star ratings across states.

Correlation analysis between Star Rating, Linear Mean, and Response Rate.

Visualized trends using bar charts and boxplots.

3. Database Integration (MySQL / XAMPP)

Loaded the cleaned dataset into MySQL using SQLAlchemy.

Created and executed 10+ SQL queries for:

Aggregating ratings by state and facility.

Filtering top-performing hospitals.

Identifying trends and averages by response rate.

Performing advanced queries using GROUP BY, JOIN, and HAVING.

4. Dashboard Development (Power BI)

Connected Power BI to the MySQL database.

Designed a 2-page dashboard:

Overview Page: KPIs (Total Facilities, Avg Rating, Avg Response Rate, Avg Linear Mean)

Benchmarking Page: Top N hospitals by State and Star Rating

Question Deep-Dive Page: Drill-down visualizations of satisfaction dimensions

Used slicers for State, Question Category, Survey Response Category, ZIP Code , and Star Rating filters.

Added hospital logos, clean color theme.

5. Report & Presentation (Gamma App)

Summarized project objectives, findings, and dashboard visuals.

Created a professional PowerPoint-style presentation.

Added recommendations for improving patient satisfaction and hospital performance.

📈 Dashboard Insights

Average Patient Rating: 3.2 stars across all hospitals.

Top States: California and Texas showed highest satisfaction scores.

Improvement Areas: Low response rate linked to lower star ratings.

Benchmarking: High-rated hospitals maintained a consistent linear mean score above 85%.

🧭 How to Run the Project

Clone the Repository

git clone https://github.com/Harshitverma816/healthcare-satisfaction-analysis.git
cd healthcare-satisfaction-analysis


Set Up Python Environment

pip install -r requirements.txt


Run Python Scripts

Load and clean data: python data_cleaning.py

Perform EDA: python eda_analysis.py

Import Data into MySQL

Start XAMPP → Open MySQL.

Run upload_data.sql script to import dataset.

Explore Dashboard

Open Power BI → Load .pbix file.

Interact with filters, KPIs, and benchmarking visuals.

View Project Presentation

Access the final Gamma presentation via shared link or .pdf.

📋 Results Summary

Improved data quality by handling missing values accurately.

Created a dynamic Power BI dashboard for real-time healthcare benchmarking.

Identified actionable insights to enhance patient satisfaction.

Presented the findings through an interactive Gamma report.

💡 Future Recommendations

Integrate data from additional years for trend analysis.

Incorporate hospital type and ownership as analytical dimensions.

Use predictive modeling (e.g., regression) to forecast future ratings.

Deploy the dashboard on Power BI Service for live updates.

👨‍💻 Author

Harshit Verma
Data Analyst | Healthcare Analytics | Power BI & SQL Developer
📧 harsh692002@gmail.com

🔗 LinkedIn : Harshit Verma
 | GitHub: Harshitverma816
