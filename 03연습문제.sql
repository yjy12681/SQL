SELECT * FROM EMPLOYEES;
--1. ��� ����� �����ȣ, �̸�, �Ի���, �޿��� ����ϼ���.
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY FROM EMPLOYEES;
--2. ��� ����� �̸��� ���� �ٿ� ����ϼ���. �� ��Ī�� name���� �ϼ���.
SELECT  FIRST_NAME || LAST_NAME AS NAME FROM EMPLOYEES;
--3. 50�� �μ� ����� ��� ������ ����ϼ���.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID =50;
--4. 50�� �μ� ����� �̸�, �μ���ȣ, �������̵� ����ϼ���.
SELECT LAST_NAME,PHONE_NUMBER,MANAGER_ID FROM EMPLOYEES WHERE DEPARTMENT_ID =50;
--5. ��� ����� �̸�, �޿� �׸��� 300�޷� �λ�� �޿��� ����ϼ���.
SELECT LAST_NAME,SALARY,SALARY+300 FROM EMPLOYEES;
--6. �޿��� 10000���� ū ����� �̸��� �޿��� ����ϼ���.
SELECT LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY > 10000;
--7. ���ʽ��� �޴� ����� �̸��� ����, ���ʽ����� ����ϼ���.
SELECT LAST_NAME,JOB_ID, COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;
--8. 2003�⵵ �Ի��� ����� �̸��� �Ի��� �׸��� �޿��� ����ϼ���.(BETWEEN ������ ���)
SELECT LAST_NAME,HIRE_DATE,SALARY FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '03/01/01'AND '03/12/31';
--9. 2003�⵵ �Ի��� ����� �̸��� �Ի��� �׸��� �޿��� ����ϼ���.(LIKE ������ ���)
SELECT LAST_NAME,HIRE_DATE,SALARY FROM EMPLOYEES WHERE HIRE_DATE LIKE '03%';
--10. ��� ����� �̸��� �޿��� �޿��� ���� ������� ���� ��������� ����ϼ���.
SELECT LAST_NAME, SALARY FROM EMPLOYEES  ORDER BY SALARY ASC;
--11. �� ���Ǹ� 60�� �μ��� ����� ���ؼ��� �����ϼ���. (�÷�: department_id)
SELECT LAST_NAME, SALARY,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID =60 ORDER BY SALARY ASC ;
--12. �������̵� IT_PROG �̰ų�, SA_MAN�� ����� �̸��� �������̵� ����ϼ���.
SELECT LAST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID ='IT_PROG' OR JOB_ID ='SA_MAN'; 
--13. Steven King ����� ������ ��Steven King ����� �޿��� 24000�޷� �Դϴ١� �������� ����ϼ���.
SELECT FIRST_NAME || LAST_NAME ||'����� �޿���'|| SALARY ||'�޷� �Դϴ�'FROM EMPLOYEES WHERE FIRST_NAME = 'steven' AND LAST_NAME = 'king';
--14. �Ŵ���(MAN) ������ �ش��ϴ� ����� �̸��� �������̵� ����ϼ���. (�÷�:job_id)
SELECT LAST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID LIKE '%MAN%';
--15. �Ŵ���(MAN) ������ �ش��ϴ� ����� �̸��� �������̵� �������̵� ������� ����ϼ���
SELECT LAST_NAME, JOB_ID FROM EMPLOYEES WHERE JOB_ID LIKE '%MAN%' ORDER BY LAST_NAME, JOB_ID ASC;

