-- Query 1: Overall KPIs for July–December 2024

SELECT
    SUM(sessions) AS sessions,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(spend) / SUM(conversions), 2) AS cpa,
    ROUND(SUM(revenue) / SUM(spend), 2) AS roas,
    ROUND(SUM(conversions) * 100.0 / SUM(sessions), 2) AS conversion_rate
FROM marketing_events
WHERE date BETWEEN '2024-07-01' AND '2024-12-31';

-- Query 2: Overall KPIs for July–December 2025

SELECT
    SUM(sessions) AS sessions,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(spend) / SUM(conversions), 2) AS cpa,
    ROUND(SUM(revenue) / SUM(spend), 2) AS roas,
    ROUND(SUM(conversions) * 100.0 / SUM(sessions), 2) AS conversion_rate
FROM marketing_events
WHERE date BETWEEN '2025-07-01' AND '2025-12-31';

-- Query 3: KPIs by channel for July–December 2024

SELECT
    channel,
    SUM(sessions) AS sessions,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(spend) / SUM(conversions), 2) AS cpa,
    ROUND(SUM(revenue) / SUM(spend), 2) AS roas,
    ROUND(SUM(conversions) * 100.0 / SUM(sessions), 2) AS conversion_rate
FROM marketing_events
WHERE date BETWEEN '2024-07-01' AND '2024-12-31'
GROUP BY channel
ORDER BY roas DESC;

-- Query 4: KPIs by channel for July–December 2025

SELECT
    channel,
    SUM(sessions) AS sessions,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(spend) / SUM(conversions), 2) AS cpa,
    ROUND(SUM(revenue) / SUM(spend), 2) AS roas,
    ROUND(SUM(conversions) * 100.0 / SUM(sessions), 2) AS conversion_rate
FROM marketing_events
WHERE date BETWEEN '2025-07-01' AND '2025-12-31'
GROUP BY channel
ORDER BY roas DESC;

-- Query 5: KPIs by channel and region for July–December 2025

SELECT
    channel,
    region,
    SUM(sessions) AS sessions,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(spend) / SUM(conversions), 2) AS cpa,
    ROUND(SUM(revenue) / SUM(spend), 2) AS roas,
    ROUND(SUM(conversions) * 100.0 / SUM(sessions), 2) AS conversion_rate
FROM marketing_events
WHERE date BETWEEN '2025-07-01' AND '2025-12-31'
GROUP BY channel, region
ORDER BY channel, roas DESC;

-- Query 6: KPIs by campaign for July–December 2025

SELECT
    campaigns.campaign_name,
    marketing_events.channel,
    SUM(marketing_events.sessions) AS sessions,
    ROUND(SUM(marketing_events.revenue), 2) AS revenue,
    ROUND(SUM(marketing_events.spend) / SUM(marketing_events.conversions), 2) AS cpa,
    ROUND(SUM(marketing_events.revenue) / SUM(marketing_events.spend), 2) AS roas,
    ROUND(SUM(marketing_events.conversions) * 100.0 /
          SUM(marketing_events.sessions), 2) AS conversion_rate
FROM marketing_events
JOIN campaigns
    ON marketing_events.campaign_id = campaigns.campaign_id
WHERE marketing_events.date BETWEEN '2025-07-01' AND '2025-12-31'
GROUP BY campaigns.campaign_name, marketing_events.channel
ORDER BY roas DESC;