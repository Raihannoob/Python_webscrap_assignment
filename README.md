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

## Installation

```bash
  python3 --version
  sudo apt-get install python(version)
  Python3 -m venv venv
  source venv/bin/activate
  pip install Scrapy
  scrapy startproject projectname
  cd project name 
  python -m pip install mysql-connector-python

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

If you have any feedback, please reach out to us at tanvir@w3engineers.com


## 🚀 About Me
I'm a Softwere Engineer Intern...
