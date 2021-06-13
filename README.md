# Pewlett-Hackard_Analysis
## 1. Overview of the analysis 
Using the SQL techniques we learned in module 7 to determine the number of retiring employees 
per title and employees who are eligible to participate in a mentorship program. Based on these 
results we will help the manager to prepare for the upcoming event "silver tsunami". 

## 2. Results 
#### Result 1: 
Using the query select count(*) we see that there are totally 90398 unique employees retiring 
who were born between January 1,1952 and December 31 1955. 

#### Result 2: 
There are 2 managers retiring who were born between January 1,1952 and December 31 1955. 

#### Result 3: 
There are totally 1549 current employees who are eligible to participate in a mentorship program 

#### Result 4: 
There are totally 1549 current employees who were born between January 1, 1965 and December 31, 1965

## 3. Summary 
#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
By the retiring_titles.csv we need the following job titles 
1. Senior Engineer 
2. Senior Staff 
3. Engineer 
4. Staff 
5. Technique Leader 
6. Assistant Engineer 
7. Manager 
Totally 7 roles and 90398 employees 

![image](https://user-images.githubusercontent.com/49871539/121823818-98b26480-cc75-11eb-94c5-b2fb55e7ad21.png)
#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
![WeChat Image_20210613185521](https://user-images.githubusercontent.com/49871539/121824450-47f13a80-cc7a-11eb-9a20-3a3d8d06ec22.png)
The above query help us found the employees comes after 1997, which I define them as "new generation". The results show that there are 
73227 new generation employees. 
Compare with the 90398 retiring employees, we are glad to say that we have enough qualified employees to train the new generation. 


