# 📌 Social Media Data Analysis Project Report 📢✨

## 📖 1. Introduction

    In today’s digital world, social media plays a vital role in audience engagement and brand growth. 
    
    This project analyzes social media data to identify patterns in engagement rate, content performance, and 
    
    user interaction across platforms

## 🎯 2. Objectives

    ✅ Analyze the relationship between views and engagement rate.

    ✅ Identify the most engaging content type (e.g., Live stream, videos, Post, Shorts).

    ✅ Compare platform performance (e.g., Youtube, Instagram, Twitter, Tiktok).
    
    ✅ Determine the impact of hashtags and regions on engagement.

## 📌 Project Details

    📛 Project Name: Social Media Analysis

    👨‍💻 Author: Ajit Kumar Samal

    📅 Date: 14-03-2025

    🛠 Tools Used: My SQL, Excel, Power Query

## 📊 3. Dataset Overview

The dataset includes various features such as:

    •	🆔 Post_ID – Unique identifier for each post
    
    •	🌍 Platform – Social media platform (Facebook, Instagram, etc.)
    
    •	🔖 Hashtag – Associated hashtags
    
    •	🎬 Content_Type – Type of content (Image, Video, Text)
    
    •	🌎 Region – Geographic location of users
    
    •	👀 Views – Total views on the post
    
    •	❤️ Likes – Number of likes received
    
    •	🔄 Shares – Number of times the post was shared

    •	💬 Comments – Number of comments received
    
    •	📈 Engagement_Level – Categorized as Low, Medium, or High
    
    •	🔢 Engagement_Rate – Engagement percentage calculated
    
## 📌 4. Report Preview

![Screenshot 2025-03-15 113841](https://github.com/user-attachments/assets/803f19ea-f694-4048-9d4d-8af611346492)

## 🛠 5. Methodology

📂 Data Cleaning & Preprocessing
    🔹 Load data into power microsoft query editor.
    
    🔹 After loading data in power query editor trying to understand the 'Columns quality', 'Columns distribution' and 'Column profile option'.
    
    🔹Also since by default, profile will be opened for 1st 1000 rows so you need column profiling based on entire dataset.
    
    🔹 After doing above steps then i cleaned dataset like removed missing values and duplicates.
    
    🔹 Standardized engagement rate calculation using: Engagement Rate=(Likes + Shares + Comments)*100/views

    🔹 Converted categorical variables (Platform, Content Type, Region) into numerical values for analysis.

  ## 📈 6. Data Analysis & Visualizations

  #### After doing all these things then i load this data into Power BI Desktop for creating some DAX funnctions like -
  #### 'Count of post', 'Total views', 'Total comments', 'Total shares'
  
      ✅ Count of post = count(SocialMedia[post])
      
       A card visual used to represent the count of post.
       
  ![Screenshot 2025-03-14 105351](https://github.com/user-attachments/assets/1b62a688-5e63-4b19-bb50-f319d44f8a1d)
       
      ✅ Total views = sum(SocialMedia[views])
      
      A card visual used to represent the total views.
      
  ![Screenshot 2025-03-14 105522](https://github.com/user-attachments/assets/d40ca51c-bec2-420e-b6b5-ecef77d84dbc)
      
      ✅ Total likes = sum(SocialMedia[likes])
      
      A card visual used to represent the total likes.
      
  ![Screenshot 2025-03-14 105320](https://github.com/user-attachments/assets/7613c08f-0099-4585-a509-bb945b6a3477)
    
      ✅ Total shares = sum(SocialMedia[Shares])
      
      A card visual used to represent the total shares.
      
  ![Screenshot 2025-03-14 105430](https://github.com/user-attachments/assets/24f30b66-1a06-41da-89ab-b247f0ea5e09)
      
      ✅ Total comments = sum(SocialMedia[comments])
      
      A card visual used to represent the total comments.
      
  ![Screenshot 2025-03-14 105225](https://github.com/user-attachments/assets/bf47b974-4e83-4a8e-ba33-0baf58f9f308)
  
      ✅ Engagement-rate as per content type 🥯 (Doughnut Chart)
      
![Screenshot 2025-03-14 104825](https://github.com/user-attachments/assets/93c31a8e-2349-4895-9b2f-60994d74e39c)

      ✅ Engagement-rate as per platform 🥧 (Pie Chart)
      
 ![Screenshot 2025-03-14 104848](https://github.com/user-attachments/assets/699c4573-70cc-4ca1-afd5-fa8f0627ea8a)
 
      ✅ Engagement-rate as per Hashtag 📊 (Bar Chart)
      
![Screenshot 2025-03-14 105027](https://github.com/user-attachments/assets/00960fc1-3611-4fb5-b5b2-3ff9f41b9bdc)

      ✅ Engagement-rate as per Region 📊 (Column Chart)
      
![Screenshot 2025-03-14 105113](https://github.com/user-attachments/assets/a0d0e5db-7334-4ac2-b2b9-e151df0324d4)

      ✅ Views vs. Engagement Rate 📉 (Combo Chart[Line & Column])

![Screenshot 2025-03-14 112147](https://github.com/user-attachments/assets/9387daac-8632-4d71-9d51-56f7927ffe54)

## 📢 7. Key Findings

    📌 In platform wise 'Tiktok' has the highest engagement-rate compared to youtube, instagram, twitter.
    
    📌 In content type wise shorts has most engagement-rate.
    
    📌 Views positively correlate with engagement but in shorts case the views is too low but 
    
        the engagement rate is too high.

## 🎯 8. Conclusion

    This analysis provides valuable insights into how different social media strategies impact engagement. 
    
    By optimizing content type, hashtags, and platform strategy, brands can boost their social media performance effectively.
    
## 📞 Conatct Information 

        📧 Email: ajitkumarofficial79@gmail.com
        
        📱 Phone: 7978992711
        
## 🎉 Thank You!  

    We appreciate your time and interest in this project.  
    
    If you like it, consider giving a ⭐ to support the work!  

      

      
 



    

  



    



