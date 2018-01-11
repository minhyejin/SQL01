--1
 select first_name ||' '|| last_name as "이름",
        salary "월급",
        phone_number "전화번호", 
        hire_date "입사일"
 from employees 
 order by hire_date asc;
 
 --2
  select job_title, max_salary
  from jobs
  order by max_salary desc;
 --3
 select first_name,
        manager_id, 
        commission_pct,
        salary
 from employees
 where commission_pct is null and salary>3000;
 --4
 select job_title , 
        max_salary
 from jobs
 where max_salary>10000
 order by max_salary desc;
 --5
  select first_name,
        salary,
        nvl(commission_pct,0)
 from employees
 order by salary desc;
 --6
 select first_name "이름", 
        salary "월급",
        hire_date "입사일", 
        department_id "부서번호"
 from employees
 where department_id in (10,90,100);
 --7 
 select first_name "이름", 
         salary "월급"
 from employees
 where first_name like 'S%';
 --8
 select department_name, 
        length(department_name)
 from departments
 order by length(department_name) desc;
 --9
 select upper(country_name)
 from countries
 order by upper(country_name) asc;
 --10
 select first_name "이름",
        salary "월급", 
        phone_number "전화번호",
        hire_date "입사일"
 from employees
 where hire_date < '03/12/31';
 
 