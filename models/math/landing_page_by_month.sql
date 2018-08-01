SELECT
yyyymm, 
site,
platform,
channel, 
url,
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
    url,
    sum(sessions) sessions,
    sum(goal_completions) goal_completions
    FROM {{ ref('ga_stats') }}
    GROUP BY yyyymm, site, platform, channel, url
)
WINDOW w1 as (PARTITION BY yyyymm, site)