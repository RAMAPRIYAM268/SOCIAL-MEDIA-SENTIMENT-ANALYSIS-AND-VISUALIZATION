-- Create Database
CREATE DATABASE social_media_project;
USE social_media_project; 

-- Check Data
SELECT * FROM cleaned_social_media_dataset LIMIT 10;

-- Check Total Rows
SELECT COUNT(*) FROM cleaned_social_media_dataset;

--  Data Understanding
SELECT DISTINCT Platform FROM cleaned_social_media_dataset;
SELECT DISTINCT Sentiment FROM cleaned_social_media_dataset;

-- Data Analysis Queries
-- Sentiment Count
SELECT Sentiment, COUNT(*) AS Total_Posts
FROM cleaned_social_media_dataset
GROUP BY Sentiment;

-- Platform Usage
SELECT Platform, COUNT(*) AS Total_Posts
FROM cleaned_social_media_dataset
GROUP BY Platform;

-- Engagement Analysis
SELECT Sentiment, AVG(Engagement) AS Avg_Engagement
FROM cleaned_social_media_dataset
GROUP BY Sentiment;

-- Top Topics
SELECT Topic, AVG(Engagement) AS Avg_Engagement
FROM cleaned_social_media_dataset
GROUP BY Topic
ORDER BY Avg_Engagement DESC;

-- Region Analysis
SELECT Region, COUNT(*) AS Total_Posts
FROM cleaned_social_media_dataset
GROUP BY Region;

-- Advanced Queries
-- Top 5 High Engagement Posts
SELECT * 
FROM cleaned_social_media_dataset
ORDER BY Engagement DESC
LIMIT 5;

-- Average Likes Per Platform
SELECT Platform, AVG(Likes) AS Avg_Likes
FROM cleaned_social_media_dataset
GROUP BY Platform;

-- Positive Sentiment Percentage
SELECT 
  (COUNT(CASE WHEN Sentiment = 'Positive' THEN 1 END) * 100.0 / COUNT(*)) AS Positive_Percentage
FROM cleaned_social_media_dataset;

-- Create View
CREATE VIEW sentiment_summary AS
SELECT Sentiment, COUNT(*) AS Total_Posts
FROM cleaned_social_media_dataset
GROUP BY Sentiment;

SELECT * FROM sentiment_summary;

SELECT Sentiment, COUNT(*) AS Total_Posts
FROM cleaned_social_media_dataset
GROUP BY Sentiment;