# Exploratory-Analytics-Using-Excel-Tableau-and-SQL-The-2Market-Project
## Table of Contents
## Project Overview
This project focusses on the analysis of 2Market, a fictional global supermarket  sells products online and in-store, to help them understand their customer purchase behaviour. 
In particular, 2Market wants to understand:
- The demographics of their customers 
- Which advertising channels seem to be the most effective
- Which products seem to sell the best and if that varies based on demographic

## Data Source
The following files have been provided:
- marketing_data.csv which contains customer personal details and the types of commodidties they purchase.
- ad_data.csv which shows customer responses to adverts run on different social media platforms.

## Tools Used
- Excel for data cleaning, initial analysis and viasualisation.
- SQL for analysis.
- Tableau for visualisation.

## Data preparation and Cleaning
The first step was to upload the data onto excel and start the cleaning process. The top row was frozen using freeze panes navigation and it was also made bold. The was to help the column headers be more visible and stay static while scrolling up and down the sheet.Then the data was checked for blanks by navigating to “find and select”, “go to special”, then “blanks”. Blanks in data can make using different functions in excel impossible. This data did not have any blanks. I then checked for duplicates; having multiple records of the same entry can skew analysis results, leading to incorrect insights about the data. There were a few duplicates in the data that were detected and deleted.
There was a column with the years the customers were born. Having the year of birth would not be helpful as we needed the age of the customers instead. To obtain this, I created a blank column and called it age then subtracted the year of birth from the present year (2024), copied the formula down the sheet. Use copy special to copy the ages into the year of birth column and omitted the formula to make analysis and calculations easier later. Filtered ages from smallest to largest and vice versa to look for any outliers. Since outliers are values that fall out of the expected ranges, they can 
impede the accuracy of analysis. There were 3 entries of 123, 124, 130. It is highly unlikely that the customers of 2Market are this old, so I deleted these values. I hid all 
columns except the needed columns i.e. age, marital status and income. Replaced “YOLO” and “absurd” in marital status to “unknown” as these are not recognised categories of marital status. Also changed alone to “Single”. 
Got rid of dollar sign in the income column and the decimals too and put it into number format to make calculations easy. Sorted it and realised there was an entry of $666,666 
which was above what the rest of customers were earning. Deleted this entry.

## Analysis
 ### Excel 
 Used the average function to calculate the average age of all customers which is 56 years. The used the aggregate function to calculate age per marital status (aggregate, 1, 
5, range). See excel chart for record of these. The used number filter to get customers that earn between $90,000 and $100,000, Then used the aggregate function to get their 
average age. Grouped income into bands of 50,000 and calculated average age in each category. See sheet for record of this.
Used sort function to find income for the lowest and highest ages.
 ### SQL
 Moved to SQL and used the data I had cleaned in Excel. Excel allows analysis and easy combination of data from different sources. I saved the Excel file as a CSV file so that it is compatible with SQL. I created a new database and called it 2Market 
Assignment in pgAdmin, I then opened the query tool and used the create table syntax to create the table and the columns (please see the queries in the appendix section). I 
then did the same for the Ad-data. I imported the respective files and run queries to find out: 
1. Total spend per country by using the SELECT, SUM and GROUP BY commands. 
Spain had the highest spend of $657,704 while Montenegro had the lowest of 
$3122.
2. Total spend per product per country. Again, used the SUM command as 
illustrated in the appendix. Liquor had the highest spend across all countries 
while vegetables and chocolates were bottom on the list with the lowest 
spending.
3. Liquor was the most popular product in all the countries.
4. Liquor was the most popular product by marital status.
5. Liquor was still the most popular product whether the customers had a child or a 
teenager at home.

## Visualisation
### Excel
Used clustered column to show ages across different marital statuses. This visualisation was the best to showcase this as it put marital status into categories and showed the average age in each category. Then used a clustered bar to visualise average ages across different income brackets and then a scatter plot to show the relationship between income and age. There was a negative relationship as income did 
not increase according to age and was randomly distributed.
### Tableau
Leveraged tableau to create a dashboard and visualise different elements like sales of all categories of products, them sales across all countries, average age in different countries, average 
income in different marital statuses and products bought by people of different maritalstatuses. See attached tbwx document in the files section for the visualisations.

## Insights and Recommendations.
1. There is room to increase sales of vegetables as is the lowest selling product across all age groups. Targeted marketing adverts can be used as well as exploration of other avenues of making vegetables visible and attractive to customers.
2 Ages between 34 and 68 seem to the most responsive to social media ads. Ads can be increased to target these age groups. Personalised adverts that appeal to other younger and older age groups could help increase reach.
3. Social media adverts have overall better response than the brochure ads. More can be done to get maximum benefit out of these online platforms.
4. It would be helpful to know how much money was generated as a result of lead conversions to help allocate resources and marketing budgets more effectively.

## Limitations
The data provided had a lot of unusable columns that that to be gotten rid of during the cleaning process.

## References
London School of Economis and Political Science (2024) LSE_DA101_Data Analytics for Business_P2_2024, available at https://fourthrev.instructure.com/courses/730 accessed on February 2025.
