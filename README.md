# Pewlett-Hackard-Analysis
## Overview of the Analysis

Pewlett Hackard is a large company boasting several thousand employees, and it's been around for a long time. As baby boomers begin to retire at a rapid rate, Pewlett Hackard is looking toward the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future.
We were given csv files to add to Postgre SQL in order to analyze the data.
The objective is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Results

Note that the number of all employees currently working at the company is 300,024.

### On the employees retiring
![image](https://user-images.githubusercontent.com/75656368/202828834-de9d8a38-a044-4a33-bdfa-8ee88a1bd02d.png)

As we can see there are 72,458 employees that will be retiring (across all job titles). This represents 24% of the total employees. That's a large number of current employees that won't be here at the end of the "silver tsunami".
We have added a new query, see the "additional_query" file for details and employees_full_details.xls.

#### A. Age of employees retiring

As we filtered the birth date for retirement between 1952 and 1955, the average age of retiring employees is 68 years old.
To compare, the average age of retained employees is 62 years old. 
It's not much of a difference in reality, it explains that the company employees are aging. 
![image](https://user-images.githubusercontent.com/75656368/202830198-f6cd1010-6361-45ba-85f7-23b9f3352b33.png)

#### B. Experience of employees retiring
If we look further, we can also see that there are no employees with less than 22 years of experience within the company.
The impact is that with a large amount of employee retiring, even if PH hires a lot of newer employee, no one will be here (or almost) to train them on the long term.
![image](https://user-images.githubusercontent.com/75656368/202830174-bb88bf79-b5c5-4790-adb4-dd49ffd2e889.png)

### Employees eligible to participate in a mentorship program
#### A. Number of employees eligible
There are 1,565 employees eligible for mentorship program. It's a start but it is very far from the amount of employees we are loosing due to retirement.

#### B. Incentive to mentor
It would be interested to increase the range of mentorship, and its criterias to involve more employees within the program to train the newer and younger employees that will join, if we follow the recommendations.


## Summary and furthermore
### Financial impact
As our retiring employees leave the company, it will save a large amount of the money spent on salaries, in theory.
When we look into the actuals, whilst the retiring employees represent 24% of the total number of employees. The salary mass they represent is 30%. 

![image](https://user-images.githubusercontent.com/75656368/202830308-74a28e9d-2fbb-48b9-9e24-e94c581f18b8.png)
We can propose to hire (and fast to reduce the gap) more junior roles and younger employees, with a reduced salary (since they won't have as much experience) to reduce the impact on salary mass.

### Mid-Management promotion
Whilst the target is to hire younger employees to close the age gap to 30 years old (which would have young professionals with ~5 years college experience), we should also aim to recruit mid-manager with heavier experience in order to train and bring a new breath to the company.

