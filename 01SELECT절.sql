-- ����Ŭ �ּ���
/*
������ �ּ�
����Ŭ�� ��ҹ��ڸ� �������� �ʽ��ϴ�.
*/
SELECT * FROM employees;
SELECT  FIRST_NAME,  EMAIL,  HIRE_DATE FROM employees;
SELECT JOB_ID, SALARY, DEPARTMENT_ID FROM employees;

SELECT * FROM departments;

--����
-- �÷��� ��ȸ�ϴ� ��ġ���� * / + -
SELECT FIRST_NAME, SALARY, SALARY+SALARY*0.1 FROM EMPLOYEES;

--NULL
SELECT FIRST_NAME,  COMMISSION_PCT FROM EMPLOYEES; 

--����� AS
SELECT FIRST_NAME AS �̸�, 
        LAST_NAME AS ��, 
        SALARY �޿�, 
        SALARY+SALARY *0.1 �ѱ޿� 
        FROM EMPLOYEES;
        
--���ڿ��� ���� ||
--����Ŭ�� ���ڸ�''�� ǥ���մϴ�.
SELECT FIRST_NAME ||
        ' '|| LAST_NAME 
        || '''s salary $' 
        || SALARY FROM EMPLOYEES;
        
--DISTINCT �ߺ��� ����
SELECT DISTINCT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES; -- �̸� �μ����� ������ �ߺ��� ����

--ROWID(�������� �ּ�), ROWNUM(��ȸ�� ����)
SELECT ROWNUM, ROWID, EMPLOYEE_ID, FIRST_NAME FROM EMPLOYEES;

