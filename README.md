# Basketball-Analysis

# 🏀 NBA SQL Analytics Portfolio Project

## 📌 Overview
This project explores NBA player and team performance across multiple seasons using **SQL**.  
The goal is to practice advanced SQL queries, demonstrate analytical thinking, and present insights through visualizations and storytelling.

---

## 📂 Dataset
- **Source**: NBA player season stats dataset (multiple seasons, ~12k+ records)  
- **Structure**: Each row represents a player’s performance in a specific season.  
- **Key Fields**:
  - Player Info → `player_name`, `age`, `height`, `country`, `draft_year`, `draft_round`
  - Performance Stats → `pts`, `reb`, `ast`, `net_rating`, `usg_pct`, `ts_pct`, `oreb_pct`, `dreb_pct`
  - Context → `season`, `team_abbreviation`

---

## 🛠️ Methodology
- Cleaned and standardized data (age groups, height groups using `CASE` in SQL).  
- Aggregated stats using **`GROUP BY`** 
- Analyzed performance by:
  - Age groups
  - Height ranges
  - Teams and countries  
- Visualized outputs 

---

## ❓ Key Questions Explored
- Which **season** had the highest scoring players?
- Do **younger players** trade efficiency for volume?
- How do **age and height** affect scoring and rebounding?  
