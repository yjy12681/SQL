--���ڿ� �Լ�
--LOWER()�ҹ��ڷ�, INITCAP()ù���ڸ� �빮��, UPPER()�빮�ڷ�
SELECT LOWER('HELLO'), INITCAP('HELLO'), UPPER('HELLO') FROM DUAL; -- DUAL�� �������̺�
SELECT LOWER(FIRST_NAME), INITCAP(FIRST_NAME), UPPER(FIRST_NAME) FROM EMPLOYEES;

--�Լ��� WHERE������ ����˴ϴ�.
SELECT FIRST_NAME FROM EMPLOYEES WHERE UPPER(FIRST_NAME) = 'STEVEN';

--LENGTH()����, INSTR()����ã��
SELECT FIRST_NAME, LENGTH(FIRST_NAME),INSTR(FIRST_NAME,'e') FROM EMPLOYEES;

--SUBSTR()���ڿ��ڸ���, CONCAT()���ڿ���ġ��
SELECT FIRST_NAME, SUBSTR(FIRST_NAME,1,3) FROM EMPLOYEES; -- 1��°���� 3��°���ڸ� ���
SELECT FIRST_NAME, CONCAT(FIRST_NAME,LAST_NAME) FROM EMPLOYEES; -- FIRST,LAST NAME�� ���ļ� ��� ||�� ����

--LPAD()���� ä���, RPAD()������ ä���
SELECT LPAD('HELLO',10,'*') FROM DUAL; -- 10ĭ��� ��ĭ�������� ���ʺ��� ä��
SELECT LPAD(SALARY,10,'*') FROM EMPLOYEES; 
SELECT RPAD(SALARY,10,'-') FROM EMPLOYEES; --�����ʺ��� ä��

--LTRIM()���� ����, RTRIM()������ ����, TRIM()���ʸ�� ����
SELECT LTRIM('   HELLO') FROM DUAL;
SELECT FIRST_NAME,LTRIM(FIRST_NAME,'A') FROM EMPLOYEES; -- ���ʿ� ó���߰ߵǴ� ���� ����
SELECT RTRIM('   HELLO  ')AS RESULT FROM DUAL;
SELECT TRIM('    HELLO    ')FROM DUAL;

--REPLACE()���ڿ� ����
SELECT REPLACE('HELLO WORLD','HELLO','BYE') FROM DUAL; -- (��¹��ڿ�, �ٲٰ���� �ܾ�, �����Ҵܾ�)
SELECT REPLACE('HELLO WORLD ~!', ' ','') FROM DUAL; --��� ���� ����

--��ø
SELECT REPLACE('HELLO WORLD ~!', 'HELLO','BYE') FROM DUAL;
SELECT REPLACE(REPLACE('HELLO WORLD ~!', 'HELLO','BYE'), ' ','') FROM DUAL;

-----------------------------------------------------
--��������
/*
���� 1.
EMPLOYEES ���̺� ���� �̸�, �Ի����� �÷����� �����ؼ� �̸������� �������� ��� �մϴ�.
���� 1) �̸� �÷��� first_name, last_name�� �ٿ��� ����մϴ�.
���� 2) �Ի����� �÷��� xx/xx/xx�� ����Ǿ� �ֽ��ϴ�. xxxxxx���·� �����ؼ� ����մϴ�.
*/
SELECT FIRST_NAME||LAST_NAME, REPLACE(HIRE_DATE,'/','') FROM EMPLOYEES; 
/*
���� 2.
EMPLOYEES ���̺� ���� phone_numbe�÷��� ###.###.####���·� ����Ǿ� �ִ�
���⼭ ó�� �� �ڸ� ���� ��� ���� ������ȣ (02)�� �ٿ� ��ȭ ��ȣ�� ����ϵ��� ������ �ۼ��ϼ���
*/
SELECT PHONE_NUMBER FROM EMPLOYEES;
SELECT REPLACE(PHONE_NUMBER,SUBSTR(PHONE_NUMBER,1,3),'(02)') FROM EMPLOYEES;


/*
���� 3. 
EMPLOYEES ���̺��� JOB_ID�� it_prog�� ����� �̸�(first_name)�� �޿�(salary)�� ����ϼ���.
���� 1) ���ϱ� ���� ���� �ҹ��ڷ� �Է��ؾ� �մϴ�.(��Ʈ : lower �̿�)
���� 2) �̸��� �� 3���ڱ��� ����ϰ� �������� *�� ����մϴ�. 
�� ���� �� ��Ī�� name�Դϴ�.(��Ʈ : rpad�� substr �Ǵ� substr �׸��� length �̿�)
���� 3) �޿��� ��ü 10�ڸ��� ����ϵ� ������ �ڸ��� *�� ����մϴ�. 
�� ���� �� ��Ī�� salary�Դϴ�.(��Ʈ : lpad �̿�)
*/
SELECT JOB_ID FROM EMPLOYEES;
SELECT RPAD(SUBSTR(FIRST_NAME,1,3),LENGTH(FIRST_NAME),'*') AS name,LPAD(SUBSTR(SALARY,1,10),10,'*')AS salary FROM EMPLOYEES WHERE LOWER(JOB_ID) = 'it_prog';



