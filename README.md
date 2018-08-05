# Google Analytics Conversion Indexing
SQL models (in the [DBT](https://getdbt.com) framework) for calculating top-performing channels and landing pages from Google Analytics data.

These models leverage the [Agency Data Pipeline](https://codingisforlosers.com/agency-data-pipeline) stack we use internally:

1. BigQuery as a data warehouse
2. [Stitch](https://stitchdata.com) + Google Apps Script to push data to BigQuery
3. The DBT SQL framework to model raw data into tables of metrics, and [Sinter](https://sinterdata.com) to run them from ‘le cloud’
4. [A Data Studio template](https://datastudio.google.com/u/0/reporting/1SEDAx62zeht3hN3-0DZmHqkvCARWcyek/page/JsbF) to visualize it all

To get set up, read the blog post at

https://codingisforlosers.com/google-analytics-bigquery-data-pipeline

And copy the Tracking Plan at the bottom of the post.

Questions?  Need a custom setup? Holler to help@codingisforlosers.com.  
