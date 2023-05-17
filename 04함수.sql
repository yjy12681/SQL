--문자열 함수
--LOWER()소문자로, INITCAP()첫글자만 대문자, UPPER()대문자로
SELECT LOWER('HELLO'), INITCAP('HELLO'), UPPER('HELLO') FROM DUAL; -- DUAL은 가상테이블
SELECT LOWER(FIRST_NAME), INITCAP(FIRST_NAME), UPPER(FIRST_NAME) FROM EMPLOYEES;

--함수는 WHERE절에도 적용됩니다.
SELECT FIRST_NAME FROM EMPLOYEES WHERE UPPER(FIRST_NAME) = 'STEVEN';

--LENGTH()길이, INSTR()문자찾기
SELECT FIRST_NAME, LENGTH(FIRST_NAME),INSTR(FIRST_NAME,'e') FROM EMPLOYEES;

--SUBSTR()문자열자르기, CONCAT()문자열합치기
SELECT FIRST_NAME, SUBSTR(FIRST_NAME,1,3) FROM EMPLOYEES; -- 1번째에서 3번째글자를 출력
SELECT FIRST_NAME, CONCAT(FIRST_NAME,LAST_NAME) FROM EMPLOYEES; -- FIRST,LAST NAME을 합쳐서 출력 ||과 동일

--LPAD()왼쪽 채우기, RPAD()오른쪽 채우기
SELECT LPAD('HELLO',10,'*') FROM DUAL; -- 10칸잡고 빈칸이있으면 왼쪽부터 채움
SELECT LPAD(SALARY,10,'*') FROM EMPLOYEES; 
SELECT RPAD(SALARY,10,'-') FROM EMPLOYEES; --오른쪽부터 채움

--LTRIM()왼쪽 제거, RTRIM()오른쪽 제거, TRIM()양쪽모두 제거
SELECT LTRIM('   HELLO') FROM DUAL;
SELECT FIRST_NAME,LTRIM(FIRST_NAME,'A') FROM EMPLOYEES; -- 왼쪽에 처음발견되는 문자 제거
SELECT RTRIM('   HELLO  ')AS RESULT FROM DUAL;
SELECT TRIM('    HELLO    ')FROM DUAL;

--REPLACE()문자열 변경
SELECT REPLACE('HELLO WORLD','HELLO','BYE') FROM DUAL; -- (출력문자열, 바꾸고싶은 단어, 변경할단어)
SELECT REPLACE('HELLO WORLD ~!', ' ','') FROM DUAL; --모든 공백 제거

--중첩
SELECT REPLACE('HELLO WORLD ~!', 'HELLO','BYE') FROM DUAL;
SELECT REPLACE(REPLACE('HELLO WORLD ~!', 'HELLO','BYE'), ' ','') FROM DUAL;

-----------------------------------------------------
--연습문제
/*
문제 1.
EMPLOYEES 테이블 에서 이름, 입사일자 컬럼으로 변경해서 이름순으로 오름차순 출력 합니다.
조건 1) 이름 컬럼은 first_name, last_name을 붙여서 출력합니다.
조건 2) 입사일자 컬럼은 xx/xx/xx로 저장되어 있습니다. xxxxxx형태로 변경해서 출력합니다.
*/
SELECT FIRST_NAME||LAST_NAME, REPLACE(HIRE_DATE,'/','') FROM EMPLOYEES; 
/*
문제 2.
EMPLOYEES 테이블 에서 phone_numbe컬럼은 ###.###.####형태로 저장되어 있다
여기서 처음 세 자리 숫자 대신 서울 지역변호 (02)를 붙여 전화 번호를 출력하도록 쿼리를 작성하세요
*/
SELECT PHONE_NUMBER FROM EMPLOYEES;
SELECT REPLACE(PHONE_NUMBER,SUBSTR(PHONE_NUMBER,1,3),'(02)') FROM EMPLOYEES;


/*
문제 3. 
EMPLOYEES 테이블에서 JOB_ID가 it_prog인 사원의 이름(first_name)과 급여(salary)를 출력하세요.
조건 1) 비교하기 위한 값은 소문자로 입력해야 합니다.(힌트 : lower 이용)
조건 2) 이름은 앞 3문자까지 출력하고 나머지는 *로 출력합니다. 
이 열의 열 별칭은 name입니다.(힌트 : rpad와 substr 또는 substr 그리고 length 이용)
조건 3) 급여는 전체 10자리로 출력하되 나머지 자리는 *로 출력합니다. 
이 열의 열 별칭은 salary입니다.(힌트 : lpad 이용)
*/
SELECT JOB_ID FROM EMPLOYEES;
SELECT RPAD(SUBSTR(FIRST_NAME,1,3),LENGTH(FIRST_NAME),'*') AS name,LPAD(SUBSTR(SALARY,1,10),10,'*')AS salary FROM EMPLOYEES WHERE LOWER(JOB_ID) = 'it_prog';



