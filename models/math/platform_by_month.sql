SELECT
yyyymm, 
site,
platform,
channel, 
sessions,
sum(sessions) OVER w1 total_sessions,
goal_completions,
sum(goal_completions) OVER w1 total_goal_completions
FROM (
    SELECT 
    FORMAT_DATE("%Y-%m", date) AS yyyymm,
    site,
    platform,
    channel, 
    sum(sessions) sessions,
    sum(goal_completions) goal_completions
    FROM {{ ref('ga_stats') }}
    GROUP BY yyyymm, site, channel, platform
)
WINDOW w1 as (PARTITION BY yyyymm, site)