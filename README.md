# **Spotify SQL Project**

![Spotify Logo](https://th.bing.com/th/id/OIP.AQMr9AlfRCf_s_uYlsudNQHaEs?w=272&h=180&c=7&r=0&o=5&pid=1.7)

## **Overview**
This project is a analysis the artist, tracks, albums and many more from the spotify dataset by using **SQL**.
---
### **Project steps**

#### 1. Database creation and table creation
Database and table were created to store the data for future queries writing.
#### 2. Data Exploration
Before diving into SQL, it’s important to understand the dataset thoroughly. The dataset contains attributes such as:
- `Artist`: The performer of the track.
- `Track`: The name of the song.
- `Album`: The album to which the track belongs.
- `Album_type`: The type of album (e.g., single or album).
- `Views`: How many times viewed.
- `Likes`: Number of times liked.
- `Comments`: How many times it gets comment.
- `Duration`: Duration of the track.
- `Title`: Name of the track.
- Various metrics such as `danceability`, `energy`, `loudness`, `tempo`, and more.
#### 4. Querying the Data
After the data is inserted, various SQL queries can be written to explore and analyze the data.
---

---
## **Queries
1.Calculate the average danceability of tracts in each album
2.Find the top 5 tracks with the highest energy values.
3. List all tracks with their views and likes where official_vedio = 'True'
4.Find the top3 most viewed tracks for each artist using window function
5.write query to find tracks where the liveness score above avg
6.Use a WITH clause to calculate the diff b/w the highest ans lowest energy values for tracks in each album
---

---
# Technology Stack
- **Database**: PostgreSQL
- **SQL Queries**: DDL, DML, Aggregations, Joins, Subqueries, Window Functions
- **Tools**: pgAdmin 4 (or any SQL editor), PostgreSQL (via Homebrew, Docker, or direct installation)

## How to Run the Project
1. Install PostgreSQL and pgAdmin (if not already installed).
2. Set up the database schema and tables using the provided normalization structure.
3. Insert the sample data into the respective tables.
4. Execute SQL queries to solve the listed problems.
5. Explore query optimization techniques for large datasets.
---
