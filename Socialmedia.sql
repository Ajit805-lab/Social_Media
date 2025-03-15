--- BASIC DATA EXPLORATION ---

-- Find Unique Values From Platform:
select count(distinct platform) as cnt from social_media;

-- Find Unique Values From Hashtag:
SELECT 
    COUNT(DISTINCT hashtag) AS cnt1
FROM
    social_media;

-- Find Unique Values From Content_Type:
SELECT 
    COUNT(DISTINCT Content_Type) AS cnt2
FROM
    social_media;

--- Find Unique Values From Region:
select count(distinct region) as cnt3 from social_media;

-- Find Total Views,like,Comments,Share As Per Platform:
with a as (
select platform,sum(views) as v,sum(likes) as b,sum(comments) as c,sum(shares) as d from social_media group by platform)
select platform,case when v >= 1000000000 then concat(round(v/1000000000,1),"Billions") end as Views,
case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as likes,
case when c >= 10000000 then concat(round(c/10000000,1)," ",'Millions') end as Comments,
case when d >= 10000000 then concat(round(d/10000000,1)," ",'Millions') end as Shares from a;

-- Find Total Views,like,Comments,Share As Per Hashtag:
with a as (
select Hashtag,sum(views) as v,sum(likes) as b,sum(comments) as c,sum(shares) as d from social_media group by Hashtag)
select Hashtag,case when v >= 1000000000 then concat(round(v/1000000000,1),"Billions") end as Views,
case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as likes,
case when c >= 10000000 then concat(round(c/10000000,1)," ",'Millions') end as Comments,
case when d >= 10000000 then concat(round(d/10000000,1)," ",'Millions') end as Shares from a;

-- Find Total Views,like,Comments,Share As Per Content_Type:
with a as (
select Content_Type,sum(views) as v,sum(likes) as b,sum(comments) as c,sum(shares) as d from social_media group by Content_Type)
select Content_Type,case when v >= 1000000000 then concat(round(v/1000000000,1),"Billions") end as Views,
case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as likes,
case when c >= 10000000 then concat(round(c/10000000,1)," ",'Millions') end as Comments,
case when d >= 10000000 then concat(round(d/10000000,1)," ",'Millions') end as Shares from a;

-- Find Total Views,like,Comments,Share As Per Region:
with a as (
select Region,sum(views) as v,sum(likes) as b,sum(comments) as c,sum(shares) as d from social_media group by Region)
select Region,case when v >= 1000000000 then concat(round(v/1000000000,1),"Billions") end as Views,
case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as likes,
case when c >= 10000000 then concat(round(c/10000000,1)," ",'Millions') end as Comments,
case when d >= 10000000 then concat(round(d/10000000,1)," ",'Millions') end as Shares from a;

-- Find Average of Views,like,Comments,Share As Per Platform:
with a as (
select platform,avg(views) as b,avg(likes) as c,avg(comments) as d,avg(shares) as e from social_media group by platform)
select platform,case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as Views,
case when c >= 1000 then concat(round(c/1000,1),'k') end as Likes,
Case when d >= 1000 then concat(round(d/1000,1),'k') end as Comments,
case when e >= 1000 then concat(round(e/1000,1),'k') end as Shares from a;

-- Find Average of Views,like,Comments,Share As Per Hashtag:
with a as (
select hashtag,avg(views) as b,avg(likes) as c,avg(comments) as d,avg(shares) as e from social_media group by hashtag)
select Hashtag,case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as Views,
case when c >= 1000 then concat(round(c/1000,1),'k') end as Likes,
Case when d >= 1000 then concat(round(d/1000,1),'k') end as Comments,
case when e >= 1000 then concat(round(e/1000,1),'k') end as Shares from a;

-- Find Average of Views,like,Comments,Share As Per Content_Type:
with a as (
select content_type,avg(views) as b,avg(likes) as c,avg(comments) as d,avg(shares) as e from social_media group by content_type)
select content_Type,case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as Views,
case when c >= 1000 then concat(round(c/1000,1),'k') end as Likes,
Case when d >= 1000 then concat(round(d/1000,1),'k') end as Comments,
case when e >= 1000 then concat(round(e/1000,1),'k') end as Shares from a;

-- Find Average of Views,like,Comments,Share As Per Region:
with a as (
select Region,avg(views) as b,avg(likes) as c,avg(comments) as d,avg(shares) as e from social_media group by Region)
select Region,case when b >= 1000000 then concat(round(b/1000000,1)," ",'Millions') end as Views,
case when c >= 1000 then concat(round(c/1000,1),'k') end as Likes,
Case when d >= 1000 then concat(round(d/1000,1),'k') end as Comments,
case when e >= 1000 then concat(round(e/1000,1),'k') end as Shares from a;

---  Engagement Rate CALCULATION ---
SELECT 
    *,round((likes+shares+comments),1) As Engagement,
    ROUND(((likes + shares + comments) * 100 / NULLIF(views, 0)),
            1) AS Engagement_rate
FROM
    social_media;
    
--- TOP 50 Engagement Rate CALCULATION  ---
SELECT 
    *,round((likes+shares+comments),1) As Engagement,
    ROUND(((likes + shares + comments) * 100 / NULLIF(views, 0)),
            1) AS Engagement_rate
FROM
    social_media
ORDER BY engagement_rate DESC
LIMIT 50;

-- Total Engagement As Per Platform --
with a as (
select platform,(likes+comments+shares) as b,(likes+shares+comments)*100/views as c from social_media)
select platform,sum(b) As Engagement,round(sum(c),1)As Engagement_Rate from a group by platform;

-- Total Engagement As Per Hashtag --
with a as (
select Hashtag,(likes+comments+shares) as b,(likes+shares+comments)*100/views as c from social_media)
select Hashtag,sum(b) As Engagement,round(sum(c),1)As Engagement_Rate from a group by Hashtag;

-- Total Engagement As Per Content_Type --
with a as (
select Content_Type,(likes+comments+shares) as b,(likes+shares+comments)*100/views as c from social_media)
select Content_Type,sum(b) As Engagement,round(sum(c),1)As Engagement_Rate from a group by Content_Type;

-- Total Engagement As Per Region --
with a as (
select Region,(likes+comments+shares) as b,(likes+shares+comments)*100/views as c from social_media)
select Region,sum(b) As Engagement,round(sum(c),1)As Engagement_Rate from a group by Region;










