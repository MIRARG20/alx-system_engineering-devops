# **Postmortem: The Day Our Database Went Rogue – A Tale of Queries, Indexes, and Unexpected Traffic**

## 
<img src=./photo.png width=50%>


## Issue Summary

Duration: 

The outage lasted from 13:00 AM to 3:00 PM UTC on April 18th, 2024\.

Impact: 

Users experienced slow load times and intermittent failures when accessing our primary web application. Approximately 60% of users were affected, leading to increased error rates and a degraded user experience.

Root Cause: 

The root cause was identified as a database query performance issue stemming from inefficient indexing and a sudden spike in traffic due to a marketing campaign.

## Timeline

* 10:05 AM: The issue was detected via monitoring alerts indicating increased latency and error rates on our web application.  
* 10:10 AM \- 11:30 AM: Initial investigation focused on network issues and external service dependencies, assuming the problem lay outside our infrastructure.  
* 11:40 AM: Realisation that the issue was internal led to database performance being investigated. Misleading paths included exploring recent deployments for potential bugs.  
* 12:00 PM: Incident escalated to the Database Administration team for deeper investigation.  
* 1:20 PM: Identification of inefficient database indexing as the root cause.  
* 1:50 PM: Resolution implemented by optimising indexing and temporarily scaling up database resources.  
* 2:00 PM: Service fully restored with normal performance metrics observed.  
  


## Root Cause and Resolution

The issue was caused by inefficient indexing on our primary database, exacerbated by a sudden increase in traffic from a marketing campaign launched earlier that day. This combination led to query performance degradation, affecting the responsiveness of our web application.

Resolution involved optimising the database indexes to better handle the query load and temporarily scaling up our database resources to accommodate the increased traffic. These actions restored normal service performance.

## Corrective and Preventative Measures

Improvements/Fixes:

* Implement more robust monitoring around database performance metrics.  
* Establish a process for stress testing prior to major marketing campaigns or feature launches.  
* Regularly review and optimise database indexing strategies.

Tasks:

* Patch database management system to latest stable version.  
* Add monitoring alerts for database query performance metrics.  
* Schedule bi-weekly database performance reviews.  
* Develop a scaling plan for handling sudden traffic spikes.  
* Implement automated stress testing tools for pre-launch checks.