--1
/*
전체직원의 다음 정보를 조회하세요. 정렬은 입사일(hire_date)의 올림차순(ASC)으로 
가장 선임부터 출력이 되도록 하세요. 이름(first_name last_name), 월급(salary), 
전화번호(phone_number), 입사일(hire_date)순서이고 "이름","월급","전화번호",
"입사일"로 컬럼이름을 대체해보세요.
*/

 select first_name ||' '|| last_name as "이름",
        salary "월급",
        phone_number "전화번호", 
        hire_date "입사일"
 from employees 
 order by hire_date asc;
 
 --2
 /*
  * 업무별로 업무이름(job_title)과 최고월급(max_salary)을 월급의 내림차순(DESC)로 정렬하세요.
  */
 
  select job_title, max_salary
  from jobs
  order by max_salary desc;
 --3
 /*
  * 담당 매니저가 배정되어있으나 커미션 비율이 없고, 월급이 3000초과인 직원의 이름, 매니저아이디, 커미션 비율, 월급을 출력하세요
  */
 select first_name,
        manager_id, 
        commission_pct,
        salary
 from employees
 where commission_pct is null and salary>3000;
 --4
 /*
  * 최고월급(max_salary)이 1000 이상인 업무의 이름(job_title)과 
  * 최고월급(max_salary)을 최고월급의 내림차순(DESC)로 정렬하여 출력하세요
  */
 select job_title , 
        max_salary
 from jobs
 where max_salary>10000
 order by max_salary desc;
 --5
 /*
  *월급이 14000 미만 1000 이상인 직원의 이름 (first_name),
  *월급,커미션퍼센트를 월급순( 내림차순)으로 출력하시오. 단 커미션 퍼센트가 null이면 0으로 나타내시오  
  */
  select first_name,
        salary,
        nvl(commission_pct,0)
 from employees
 where salary between 1000 and 14000
 order by salary desc;
 --6
 select first_name "이름", 
        salary "월급",
         to_char(hire_date,'YYYY-MM-DD')"입사일", 
        department_id "부서번호"
 from employees
 where department_id in (10,90,100);
 --7 
 select first_name "이름", 
         salary "월급"
 from employees
 where first_name like 'S%'or first_name like 's%';;
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
 
 