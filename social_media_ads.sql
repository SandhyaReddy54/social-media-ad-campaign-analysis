-- ===============================
-- Data Validation Checks
-- ===============================

-- 1. Check record counts in each table
SELECT COUNT(*) AS campaigns_count FROM campaigns;
SELECT COUNT(*) AS ads_count FROM ads;
SELECT COUNT(*) AS users_count FROM users;
SELECT COUNT(*) AS ad_events_count FROM ad_events;

-- 2. Check for NULL primary keys
SELECT COUNT(*) AS null_campaign_ids
FROM campaigns
WHERE campaign_id IS NULL;

SELECT COUNT(*) AS null_ad_ids
FROM ads
WHERE ad_id IS NULL;

SELECT COUNT(*) AS null_user_ids
FROM users
WHERE user_id IS NULL;

-- 3. Check for duplicate primary keys
SELECT campaign_id, COUNT(*) AS cnt
FROM campaigns
GROUP BY campaign_id
HAVING COUNT(*) > 1;

SELECT ad_id, COUNT(*) AS cnt
FROM ads
GROUP BY ad_id
HAVING COUNT(*) > 1;

SELECT user_id, COUNT(*) AS cnt
FROM users
GROUP BY user_id
HAVING COUNT(*) > 1;

-- 4. Referential integrity checks
-- Ads without matching campaigns
SELECT a.ad_id
FROM ads a
LEFT JOIN campaigns c
    ON a.campaign_id = c.campaign_id
WHERE c.campaign_id IS NULL;

-- Ad events without matching ads
SELECT e.event_id
FROM ad_events e
LEFT JOIN ads a
    ON e.ad_id = a.ad_id
WHERE a.ad_id IS NULL;

-- Ad events without matching users
SELECT e.event_id
FROM ad_events e
LEFT JOIN users u
    ON e.user_id = u.user_id
WHERE u.user_id IS NULL;

-- ===============================
-- Exploratory Business Analysis
-- ===============================

-- 1. Total events by platform
SELECT a.ad_platform,
       COUNT(*) AS total_events
FROM ad_events e
JOIN ads a
    ON e.ad_id = a.ad_id
GROUP BY a.ad_platform;

-- 2. Engagement breakdown by event type
SELECT event_type,
       COUNT(*) AS total_events
FROM ad_events
GROUP BY event_type;

-- 3. Engagements by campaign type
SELECT c.campaign_type,
       COUNT(*) AS engagements
FROM ad_events e
JOIN ads a
    ON e.ad_id = a.ad_id
JOIN campaigns c
    ON a.campaign_id = c.campaign_id
WHERE e.event_type IN ('Like', 'Share')
GROUP BY c.campaign_type;

-- 4. Engagements by ad type
SELECT a.ad_type,
       COUNT(*) AS engagements
FROM ad_events e
JOIN ads a
    ON e.ad_id = a.ad_id
WHERE e.event_type IN ('Like', 'Share')
GROUP BY a.ad_type;

-- 5. Engagements by country
SELECT u.country,
       COUNT(*) AS engagements
FROM ad_events e
JOIN users u
    ON e.user_id = u.user_id
WHERE e.event_type IN ('Like', 'Share')
GROUP BY u.country
ORDER BY engagements DESC;


---Campaign performance view
CREATE OR ALTER VIEW vw_campaign_performance AS
SELECT
    c.campaign_id,
    c.campaign_type,
    a.ad_platform,
    COUNT(*) AS total_events,
    SUM(CASE WHEN e.event_type = 'Impression' THEN 1 ELSE 0 END) AS impressions,
    SUM(CASE WHEN e.event_type IN ('Like','Share') THEN 1 ELSE 0 END) AS engagements
FROM ad_events e
JOIN ads a
    ON e.ad_id = a.ad_id
JOIN campaigns c
    ON a.campaign_id = c.campaign_id
GROUP BY
    c.campaign_id,
    c.campaign_type,
    a.ad_platform;

---Ad Format Performance View
CREATE OR ALTER VIEW vw_ad_format_performance AS
SELECT
    a.ad_type,
    a.ad_platform,
    COUNT(*) AS total_events,
    SUM(CASE WHEN e.event_type IN ('Like','Share') THEN 1 ELSE 0 END) AS engagements
FROM ad_events e
JOIN ads a
    ON e.ad_id = a.ad_id
GROUP BY
    a.ad_type,
    a.ad_platform;

---Audience Engagement View
CREATE OR ALTER VIEW vw_audience_engagement AS
SELECT
    u.age_group,
    u.user_gender,
    u.country,
    COUNT(*) AS engagements
FROM ad_events e
JOIN users u
    ON e.user_id = u.user_id
WHERE e.event_type IN ('Like','Share')
GROUP BY
    u.age_group,
    u.user_gender,
    u.country;

--Time-Based Engagement View
CREATE OR ALTER VIEW vw_time_engagement AS
SELECT
    e.day_of_week,
    e.time_of_day,
    COUNT(*) AS engagements
FROM ad_events e
WHERE e.event_type IN ('Like','Share')
GROUP BY
    e.day_of_week,
    e.time_of_day;

---Budget Efficiency View
CREATE OR ALTER VIEW vw_budget_efficiency AS
SELECT
    c.campaign_id,
    c.campaign_type,
    c.total_budget,
    COUNT(CASE WHEN e.event_type IN ('Like','Share') THEN 1 END) AS engagements,
    CAST(c.total_budget AS FLOAT) /
        NULLIF(COUNT(CASE WHEN e.event_type IN ('Like','Share') THEN 1 END), 0)
        AS cost_per_engagement
FROM campaigns c
JOIN ads a
    ON c.campaign_id = a.campaign_id
JOIN ad_events e
    ON a.ad_id = e.ad_id
GROUP BY
    c.campaign_id,
    c.campaign_type,
    c.total_budget;


