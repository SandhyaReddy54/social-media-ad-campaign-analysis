# 📊social-media-ad-campaign-analysis
#### End-to-End Analytics Project using SQL Server & Power BI

## 📌Project Overview
This project presents an end-to-end analysis of social media advertising campaigns using Power BI and SQL Server. The objective was to evaluate campaign effectiveness, analyze ad-level performance, and understand user engagement patterns across demographics, geography, and time.
Interactive dashboards, drill-through navigation, and DAX-based metrics are used to transform raw advertising data into actionable insights that support data-driven decision-making.
The project demonstrates how raw, multi-table campaign data can be transformed into actionable marketing insights through proper data modeling, SQL-based preprocessing, and interactive dashboarding.

## 🎯 Business Objective
The primary goals of this analysis were to:
* Assess advertising performance across Facebook and Instagram
* Identify high-performing campaign types and ad formats
* Analyze audience engagement patterns by demographics and geography
* Evaluate budget utilization and cost efficiency
* Support data-driven decisions for campaign optimization and budget reallocation

## 🧩 Dataset Description
The analysis is based on four relational datasets:

#### 1. Campaigns
Contains campaign-level information such as:
Campaign name and ID
Start and end dates
Campaign duration
Total budget allocation

#### 2. Ads
Stores advertisement-level metadata including:
AD_Platform (Facebook / Instagram) and AD_ID
Ad Type (Video, Stories, Carousel, Image)
Targeted demographics and interests

#### 3. Users
Includes user demographic attributes:
User ID
Age and age group
Gender
Country and location
Interest categories

#### 4. Ad Events
Captures user interaction events:
Impressions, Likes, Shares
Event timestamps
Day-of-week and time-of-day attributes

## 🏗️ Architecture & Workflow
The project follows a layered analytics approach:
CSV Files
   ↓
SQL Server (Data Modeling & Views)
   ↓
Power BI (Power Query + DAX)
   ↓
Interactive Dashboards(Tooltips and Drillthrough) & Insights

## 🗄️ SQL Data Modeling & Preparation
#### Database Design
* Created a dedicated SQL Server database for the project
* Imported raw CSV files into relational tables
* Defined primary keys and logical relationships

#### Data Validation
* Checked for missing values and duplicate records
* Verified referential integrity between campaigns, ads, users, and events

## 📐 Analytical SQL Views
To support reporting and performance analysis, multiple SQL views were created:
* Campaign Performance View – Aggregated engagement metrics by campaign and platform
* Ad Format Performance View – Compared engagement across ad types
* Audience Engagement View – Summarized interactions by age, gender, and country
* Time-Based Engagement View – Analyzed performance by day and time of day
* Campaign Budget Efficiency View – Enabled cost-per-engagement and ROI proxy analysis
* These views were directly consumed by Power BI for downstream analysis.

## 📊 Power BI Data Transformation & Modeling
#### Power Query
* Renamed and standardized columns
* Converted data types
* Normalized multi-valued interest fields
* Performed light shaping without duplicating SQL logic

#### Data Model (relationships & star-like schema)
* Fact–dimension schema for performance optimization
* Clean relationship design to support cross-filtering
* Separate date handling for time-based analysis


## 📈 Key KPIs & Metrics
The following business metrics were calculated using DAX:
* Total Impressions, Likes, Shares
* Engagement Rate
* Cost per Engagement
* Demographic Match Score
* Platform and Campaign Performance Indicators


## 📉 Dashboard Design & Features

#### The Interactive Power BI dashboards include:

* Executive Overview – High-level campaign performance summary
* Campaign Performance Analysis – Platform, campaign type, and ad format comparisons
* User Behavior & Demographics – Engagement by gender, age, interests, and country
* Geographic & Time Analysis – Engagement patterns by country, day, and time of day
* Budget Efficiency Analysis – Spend vs engagement evaluation

#### Advanced Features

* Campaign-to-ad drill-through navigation page for detailed campaign analysis
* Bookmarks for multiple dashboard views (Executive / Analyst)
* Dynamic tooltips for contextual insights
* DAX measures for engagement and efficiency metrics
* Mobile-optimized layouts

## 🔍 Key Insights & Findings

#### 📌 Overall Performance
* The overall engagement rate across all campaigns is ~4.1%, indicating moderate user interaction across platforms.
* Q3 campaigns achieved the highest engagement rate (≈5.16%), followed by Launch campaigns, outperforming Summer and Winter campaigns.
#### 📌 Platform Effectiveness
* Instagram demonstrates higher engagement rates, particularly among younger demographics, making it more effective for engagement-driven campaigns.
* Facebook delivers higher reach in terms of impressions and total engagements, making it suitable for awareness-focused objectives.
#### 📌 Ad Format Performance
* Carousel ads generated the highest engagement, followed by Stories, Videos, and Images.
Platform-specific trends were observed:
* On Instagram, Stories and Carousel ads perform best.
* On Facebook, Carousel and Video ads drive higher engagement.
#### 📌 Audience & Demographics
* Young adults (25–34 age group) were the most engaged segment across campaigns.
* Male users showed slightly higher engagement compared to female users across both platforms.
* USA recorded the highest engagement volume, indicating strong market presence.
#### 📌 Interest-Based Engagement
* Interest categories such as Sports, Fitness, Finance, Photography, and Lifestyle emerged as the strongest engagement drivers, with engagement rates exceeding other categories.
#### 📌 Temporal Behavior
Engagement peaks were observed on:
* Days: Friday, followed by Wednesday and Saturday
* Time of day: Evenings, followed by Night and Morning
This suggests that user interaction is highest during leisure hours and weekends.

##### Launch and Q3 campaigns achieved higher engagement with shorter campaign durations, indicating better budget efficiency.
##### Winter campaigns ran for longer durations but showed lower engagement efficiency, resulting in comparatively lower ROI.
##### Budget efficiency analysis using cost per engagement highlights opportunities for reallocating spend from underperforming campaigns to high-performing ones.

## 💡 Business Recommendations

Based on the findings, the following actions are recommended:
* Prioritize Instagram for engagement-focused campaigns and Facebook for reach-oriented objectives.
* Increase investment in Carousel and Stories ad formats.
* Optimize campaign duration to avoid diminishing returns from prolonged exposure.
* Schedule campaigns during evenings and weekends to maximize engagement.
* Refine demographic and interest-based targeting to improve campaign efficiency.

## 🚀 Learning Outcomes

This project strengthened my ability to:
Design relational databases for analytics
Apply SQL for data preparation and performance optimization
Build scalable BI solutions using Power BI
Translate data into actionable business insights
Communicate analytical findings effectively

## 📌 Next Enhancements

Potential future improvements include:
Integrating real-time data sources via APIs
Adding predictive models for campaign performance
Automating refresh schedules in Power BI Service
Expanding analysis to include conversion and revenue data



This project analyzes digital advertising performance across multiple campaigns, platforms, and audience segments using Power BI. The objective was to evaluate campaign effectiveness, diagnose ad-level performance, and understand user engagement patterns to support data-driven optimization decisions.

The analysis integrates campaign, ad, user, and event-level data to compute key performance indicators such as impressions, engagement rate, and cost efficiency. A structured dashboard flow was designed, beginning with an executive overview and progressively enabling deeper analysis through campaign comparisons, ad-level drill-through, and focused tooltip insights.

Advanced Power BI features such as drill-through navigation, tooltip pages, and DAX-based efficiency metrics were implemented to enhance analytical clarity while maintaining proper business context. The final dashboards provide actionable insights into budget utilization, platform effectiveness, creative performance, and audience behavior.

## 🛠️ Tools & Technologies Used
#### SQL Server (SSMS)
Data ingestion from CSV files
Relational table design
Data validation and quality checks
Creation of analytical SQL views

#### Power BI Desktop
Power Query for data shaping
DAX for KPI calculations and time intelligence
Interactive dashboards with drill-through, bookmarks, and tooltips

## 📎 Detailed Results & Analysis

For deeper technical and business-level documentation, please refer to:
- **Business Analysis Report (PDF)** – Detailed insights, findings, and strategic recommendations  
- **DAX Formula Reference (PDF)** – Complete list of measures with explanations  
These documents provide additional depth beyond the dashboard visuals.

