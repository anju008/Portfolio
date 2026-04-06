# TheLook E-Commerce Performance Analysis

SQL-based analysis of an e-commerce dataset using Google BigQuery,
with results visualised in a Looker Studio dashboard.

## Project Overview

This project analyses channel performance, product revenue, and 
customer behaviour for a fictitious clothing retailer using Google's 
public `thelook_ecommerce` dataset (21,000+ completed orders).

**Key findings:**
- Search drives 73% of total revenue — creating channel concentration risk
- Email generates only 7% of orders despite being the highest-ROI channel
- Outerwear & Coats accounts for 7 of the top 10 revenue-generating products
- Average order value is consistent across all channels ($59–62),
  meaning the revenue gap is a volume problem, not a quality problem

## Tools Used

- **BigQuery** — SQL queries across 4 joined tables
- **Looker Studio** — live dashboard visualisation
- **Dataset** — `bigquery-public-data.thelook_ecommerce` (public)

## Files in This Repo

| `channel_revenue_analysis.sql` | Revenue, orders, and AOV by traffic source |
| `top_products_by_revenue.sql` | Top 10 products ranked by total revenue |
| `master_ecommerce_join.sql` | Master query joining orders, users, products, and order items |

## Live Dashboard

[View Looker Studio Dashboard →](https://lookerstudio.google.com/reporting/667ce446-f43b-4b45-8cda-d5836bdbe7d9)

## Author

Anju Shaji — [LinkedIn](https://www.linkedin.com/in/anju-shaji-268652188/)
