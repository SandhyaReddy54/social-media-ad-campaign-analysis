# 📊social-media-ad-campaign-analysis
#### End-to-End Analytics Project using SQL Server & Power BI

## 📌Project Overview

This project presents an end-to-end business intelligence analysis of social media advertising campaigns using SQL Server and Power BI. The objective is to evaluate campaign effectiveness, analyze ad-level performance, and understand user engagement patterns across demographics, geography, and time to support data-driven optimization decisions.

Raw multi-table advertising data is transformed into actionable marketing insights through structured data modeling, SQL-based preparation, and interactive Power BI dashboards. Advanced Power BI features such as drill-through navigation, tooltip pages, and DAX-based efficiency metrics were implemented to enhance analytical clarity while maintaining proper business context.

## 🎯 Business Objective

* Assess advertising performance across Facebook and Instagram
* Identify high-performing campaign types and ad formats
* Analyze audience engagement patterns by demographics and geography
* Evaluate budget utilization and cost efficiency
* Support data-driven decisions for campaign optimization and budget reallocation

## 🧩 Dataset Description
The analysis is based on four relational datasets:

#### 1. Campaigns
* Campaign name and ID
* Start and end dates
* Campaign duration
* Total budget allocation

#### 2. Ads
* AD_Platform (Facebook / Instagram) and AD_ID
* Ad Type (Video, Stories, Carousel, Image)
* Targeted demographics and interests

#### 3. Users
* User ID
* Age and age group
* Gender
* Country and location
* Interest categories

#### 4. Ad Events
* Impressions, Likes, Shares
* Event timestamps
* Day-of-week and time-of-day attributes

## 🏗️ Architecture & Workflow

* CSV Files
   ↓
* SQL Server (Tables + Analytical Views)
   ↓
* Power BI (Power Query + DAX)
   ↓
* Interactive Dashboards(Tooltips and Drillthrough) & Insights

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
These views were directly consumed by Power BI.

## 📊 Power BI Data Transformation & Modeling
#### Power Query
* Renamed and standardized columns
* Converted data types
* Normalized multi-valued interest fields
* Performed light shaping without duplicating SQL logic

#### Data Model
* Star-like Fact–dimension schema
* Clean relationship for effective cross-filtering
* Dedicated date handling for time-based analysis

## 📈 Key KPIs & Metrics (DAX)
* Total Impressions, Likes, Shares
* Engagement Rate
* Cost per Engagement
* Demographic Match Score
* Platform and Campaign Performance Indicators


## 📉 Dashboard Design & Features

#### The Power BI solution include:
* Executive Overview – High-level campaign performance summary
* Campaign Performance Analysis – Platform, campaign type, and ad format comparisons
* User Behavior & Demographics – Engagement by gender, age, interests, and country
* Geographic & Time Analysis – Engagement patterns by country, day, and time of day
* Ad-Level Drill-Through – Detailed performance analysis at ad level

#### Advanced Features

* Campaign-to-ad drill-through navigation 
* Bookmark-based dashboard views 
* Dynamic tooltips pages
* DAX-based efficiency metrics
* Mobile-optimized layouts

## 🔍 Key Insights & Findings

* The overall engagement rate across campaigns is ~4.1%
* Q3 and Launch campaigns outperform Summer and Winter campaigns in engagement
* Instagram shows higher engagement, while Facebook delivers higher reach
* Carousel and Stories ads generate the strongest engagement
* 25–34 age group is the most responsive audience segment
* Engagement peaks during evenings and weekends
* Winter campaigns show lower budget efficiency due to longer durations and lower engagement


## 💡 Business Recommendations

* Prioritize Instagram for engagement-focused campaigns and Facebook for reach.
* Increase investment in Carousel and Stories ad formats.
* Optimize campaign duration to avoid diminishing returns.
* Schedule ads during evenings and weekends to maximize engagement.
* Refine demographic and interest-based targeting to improve campaign efficiency.

## 🚀 Learning Outcomes

This project strengthened my ability to:
Design relational databases for analytics
Apply SQL for data preparation and performance optimization
Build scalable BI solutions using Power BI
Translate data into actionable business insights
Communicate analytical findings effectively

## 📌 Future Enhancements

Integrate real-time data via APIs
Add predictive models for campaign performance
Automating refresh schedules in Power BI Service
Extend analysis to include conversion and revenue data

## 🛠️ Tools & Technologies Used
#### SQL Server (SSMS) * Data ingestion, validation, analytical views
#### Power BI Desktop * Power Query, DAX, dashboards, drill-through, tooltips

## 📎 Detailed Results & Analysis

For deeper technical and business-level documentation, please refer to:
- **Business Analysis Report (PDF)** – Detailed insights, findings, and strategic recommendations  
- **DAX Formula Reference (PDF)** – Complete list of measures with explanations  
These documents provide additional depth beyond the dashboard visuals.

