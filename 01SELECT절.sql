-- 오라클 주석문
/*
여러줄 주석
오라클은 대소문자를 구분하지 않습니다.
*/
SELECT * FROM employees;
SELECT  FIRST_NAME,  EMAIL,  HIRE_DATE FROM employees;
SELECT JOB_ID, SALARY, DEPARTMENT_ID FROM employees;

SELECT * FROM departments;

--연산
-- 컬럼을 조회하는 위치에서 * / + -
SELECT FIRST_NAME, SALARY, SALARY+SALARY*0.1 FROM EMPLOYEES;

--NULL
SELECT FIRST_NAME,  COMMISSION_PCT FROM EMPLOYEES; 

--엘리어스 AS
SELECT FIRST_NAME AS 이름, 
        LAST_NAME AS 성, 
        SALARY 급여, 
        SALARY+SALARY *0.1 총급여 
        FROM EMPLOYEES;
        
--문자열의 연걸 ||
--오라클은 문자를''로 표현합니다.
SELECT FIRST_NAME ||
        ' '|| LAST_NAME 
        || '''s salary $' 
        || SALARY FROM EMPLOYEES;
        
--DISTINCT 중복행 제거
SELECT DISTINCT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES; -- 이름 부서명이 동일한 중복행 제거

--ROWID(데이터의 주소), ROWNUM(조회된 순서)
SELECT ROWNUM, ROWID, EMPLOYEE_ID, FIRST_NAME FROM EMPLOYEES;

