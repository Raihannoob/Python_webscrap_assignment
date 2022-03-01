<h1 align="center">web scrap using scrapy 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
</p>

# web scrap using scrapy Library

This is basically a python code where we use scrapy library.Scrapy is a fast high-level web crawling and web scraping framework, used to crawl websites and extract structured data from their pages. It can be used for a wide range of purposes, from data mining to monitoring and automated testing.


## Tools and Libraries

- Tools: Xampp
- Library: scrapy

 


## Prerequisites

- Python
- Mysql

## Installation Steps 


#### step 1
 - Clone this project in your Computer
#### step 2
- After cloning this project open project and active venv by this command 
 ```bash
  source venv/bin/activate
```
#### step 3
- Then install scrapy by this command 
 ```bash
  pip install Scrapy 
```
#### step 4
- Then go to web_scrape Directory by this command

```bash
  cd web_scrape
```
#### step 5
- Install mysqlconnector by this command 

```bash
  python -m pip install mysql-connector-python
```
#### step 6
- Activate xamp server 


#### step 7
- Then run this project by this command 
```bash
  scrapy crawl quotes
```
    
## File Name and Directory

- Filename: data.py
- Directory: web_scrape>web_scrape>spider>data.py

## Run Project
- scrapy crawl quotes
## For Mysql 
- python -m pip install mysql-connector-python

## Usage

- Import data_from_web.sql 
- If the  data_from_web.sql does't work then create table using the query bellow

CREATE TABLE `data_from_web` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ratting` varchar(255) NOT NULL,
  `prices` varchar(255) NOT NULL,
  `Amenities` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
## Feedback

If you have any feedback, please reach out to us at raihan.tanvir961@gmail.com


## 🚀 About Me
I'm a Softwere Engineer
