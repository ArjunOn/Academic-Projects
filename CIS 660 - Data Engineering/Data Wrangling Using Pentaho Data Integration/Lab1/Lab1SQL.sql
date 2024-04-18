
--1) How many total interactions, facebook likes, and facebook comments occurred in January, 2016?

SELECT 
    SUM(TotalInteractions) AS Total_Interactions,
    SUM(Facebook_likes) AS Total_Facebook_Likes,
    SUM(Facebook_comments) AS Total_Facebook_Comments
FROM fact_interactions
JOIN dim_time ON fact_interactions.TimeNo = dim_time.TimeNo
WHERE TimeMonth = 1 AND TimeYear = 2016;


--2) How many total interactions occurred for each channel over the entire time covered by the dataset?

SELECT dim_channel.ChannelName,
    SUM(fact_interactions.TotalInteractions) AS Total_Interactions
FROM fact_interactions
JOIN dim_channel ON fact_interactions.ChannelId = dim_channel.ChannelId
GROUP BY dim_channel.ChannelName;


--3) How many facebook likes occurred in May?

SELECT 
    SUM(Facebook_likes) AS Total_Facebook_Likes_In_May
FROM fact_interactions
JOIN dim_time ON fact_interactions.TimeNo = dim_time.TimeNo
WHERE TimeMonth = 5;


--4) How many facebook comments were entered in June of 2015 for the Facebook channel?

SELECT 
    SUM(Facebook_comments) AS Total_Facebook_Comments_June_2015
FROM fact_interactions
JOIN dim_time ON fact_interactions.TimeNo = dim_time.TimeNo
WHERE TimeMonth = 6 AND TimeYear = 2015
AND fact_interactions.ChannelId = (SELECT ChannelId FROM dim_channel WHERE ChannelName = 'FacebookPage');


--5) How many facebook likes occurred for each channel in June of 2015? List the channelname in your results.

SELECT dim_channel.ChannelName,
    SUM(fact_interactions.Facebook_likes) AS Total_Facebook_Likes_June_2015
FROM fact_interactions
JOIN dim_channel ON fact_interactions.ChannelId = dim_channel.ChannelId
JOIN dim_time ON fact_interactions.TimeNo = dim_time.TimeNo
WHERE TimeMonth = 6 AND TimeYear = 2015
GROUP BY dim_channel.ChannelName;

