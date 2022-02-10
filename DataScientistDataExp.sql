#To check total records in the table
select * from major.salcomp;

#create a table of companies with highest rating and their salary (ie 5)
create table major.comp_with_five_ratings as
select index1,company_name,salary from major.salcomp
where rating=5;

#To check the new table
select * from major.comp_with_five_ratings;

#Changing salary column name to salary_range to avoid confusion
alter table major.salcomp
change salary salary_range varchar(20);

#To find the highest paying industries
select industry, max(uppersal) from major.salcomp
group by industry;

#To find the highest paying job titles with industries
select job_title,max(uppersal) from major.salcomp
group by job_title
order by max(uppersal) desc;

#To find python,tableau and sql skills highest paying jobs grouped by title and industries ordered by max sal
select job_title,industry,max(uppersal),max(python),max(tableau),max(sql1) from major.salcomp
where python=1 and tableau=1 and sql1=1
group by job_title,industry
order by max(uppersal)desc ;

# creating a new Relation with company age and rating 
create table major.c_age as
select index1,company_name,job_title,age,rating from major.salcomp;






 









