-- Q1 - Count the total number of Hospitals (unique facilities)
select count(distinct Facility_ID) as Total_Hospital 
from healthcare_survey;

-- Q2 - Find Top 10 states with the most hospitals
select State, 
count(distinct Facility_ID) as total_facilities 
from healthcare_survey 
group by State 
order by total_facilities desc 
limit 10;

-- Q3 - Average patient survey star rating by state 
select State, 
round(avg(Patient_Survey_Star_Rating), 2) as avg_star_rating 
from healthcare_survey 
group by State 
order by avg_star_rating desc;

-- Q4 - Calculate Average performance score by satisfaction level 
select Satisfaction_Level, round(avg(Performance_Score), 2) as avg_performance   
from healthcare_survey 
group by Satisfaction_Level 
order by avg_performance desc;

-- Q5 - Identify hospitals with rating below average of their state 
select h1.Facility_Name, h1.State, h1.Patient_Survey_Star_Rating
from healthcare_survey h1
join (
    select State, avg(Patient_Survey_Star_Rating) as state_avg
    from healthcare_survey
    group by State
) h2 on h1.State = h2.State
where h1.Patient_Survey_Star_Rating < h2.state_avg
order by h1.State, h1.Patient_Survey_Star_Rating asc;

-- Q6 - Compare satisfaction by question category 
select Question_Category,
       round(avg(Patient_Survey_Star_Rating), 2) as avg_rating,
       round(avg(HCAHPS_Answer_Percent), 2) as avg_answer_percent
from healthcare_survey
group by Question_Category
order by avg_rating desc;

-- Q7 - Average surveys completed & response rate per state 
select State,
round(avg(Number_of_Completed_Surveys), 0) as avg_completed_surveys,
round(avg(Survey_Response_Rate_Percent), 2) as avg_response_rate
from healthcare_survey
group by State
order by avg_response_rate desc;

-- Q8 - Find top 10 facilities with the highest star ratings 
select Facility_Name,
round(avg(Patient_Survey_Star_Rating), 2) as Avg_Star_Rating
from Healthcare_survey
group by Facility_Name
order by Avg_Star_Rating desc
limit 10;

-- Q9 - Analyze Satisfaction by State
select State,
round(avg(HCAHPS_Answer_Percent), 2) as Avg_Satisfaction,
count(distinct Facility_ID) as Num_Facilities
from Healthcare_survey
group by State
order by Avg_Satisfaction desc;

-- Q10 - Year Wise Performance Trend
select Survey_Year,
round(avg(HCAHPS_Linear_Mean_Value), 2) as Avg_Linear_Score,
round(avg(Patient_Survey_Star_Rating), 2) as Avg_Star_Rating
from healthcare_survey
group by Survey_Year
order by Survey_Year;

-- Q11 - Satisfaction Level Distribution
select Satisfaction_Level,
count(*) as Num_Responses,
round(avg(HCAHPS_Answer_Percent), 2) as Avg_Satisfaction
from Healthcare_survey
group by Satisfaction_Level desc;

-- Q12 - Facilities with best rating-to-response ratio
select Facility_Name,
round(avg(Rating_to_Response_Ratio), 2) as Avg_Ratio
from Healthcare_survey
group by Facility_Name
order by Avg_Ratio desc 
limit 10;

-- Q13 - Identify underperforming facilities (below threshold)
select Facility_Name, State,
avg(Patient_Survey_Star_Rating) as Avg_Rating
from Healthcare_survey
group by Facility_Name, State
having Avg_Rating < 2.5
order by Avg_Rating asc;