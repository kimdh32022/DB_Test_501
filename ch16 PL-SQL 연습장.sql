-- 실습 16-1 

SET SERVEROUTPUT ON; -- 실행 결과를 화면에 출력 

BEGIN 
   DBMS_OUTPUT.PUT_LINE('Hello, PL/SQL!'); 
END; 

/ 

 

-- 실습 16-2 
DECLARE 
   V_EMPNO NUMBER(4) := 7788; 
   V_ENAME VARCHAR2(10); 
BEGIN 
   V_ENAME := 'SCOTT'; 
   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 
   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 
END; 

/ 

 

-- 실습 16-3 

DECLARE 

   V_EMPNO NUMBER(4) := 7788; 

   V_ENAME VARCHAR2(10); 

BEGIN 

   V_ENAME := 'SCOTT'; 

/* 

   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 

   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 

*/ 

END; 

/ 

 

-- 실습 16-4 

DECLARE 

   V_EMPNO NUMBER(4) := 7788; 

   V_ENAME VARCHAR2(10); 

BEGIN 

   V_ENAME := 'SCOTT'; 

   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 

   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 

END; 

/ 

 

-- 실습 16-5 

DECLARE 

   V_TAX CONSTANT NUMBER(1) := 3; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_TEX : ' || V_TAX); 

END; 

/ 

 

-- 실습 16-6 

DECLARE 
   V_DEPTNO NUMBER(2) DEFAULT 10; 
BEGIN 
   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- 실습 16-7 

DECLARE 

   V_DEPTNO NUMBER(2) NOT NULL := 10; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- 실습 16-8 

DECLARE 

   V_DEPTNO NUMBER(2) NOT NULL DEFAULT 10; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- 실습 16-9 
DECLARE 
   V_DEPTNO DEPT.DEPTNO%TYPE := 50; 
BEGIN 
   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 
END; 

/ 

 

-- 실습 16-10 

DECLARE 
   V_DEPT_ROW DEPT%ROWTYPE; 
BEGIN 
   SELECT DEPTNO, DNAME, LOC INTO V_DEPT_ROW 
     FROM DEPT 
    WHERE DEPTNO = 40; 

   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO); 

   DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME); 
   DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC); 

END; 

/ 

 

-- 실습 16-11 

DECLARE 
   V_NUMBER NUMBER := 13; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 1 THEN 

      DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수입니다!'); 

   END IF; 

END; 

/ 

 

-- 실습 16-12 

DECLARE 
   V_NUMBER NUMBER := 14; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 1 THEN 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수입니다!'); 
   END IF; 
END; 

/ 

 

-- 실습 16-13 

DECLARE 
   V_NUMBER NUMBER := 14; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 0 THEN 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수입니다!'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER는 짝수입니다!'); 
   END IF; 
END; 

/ 

 

-- 실습 16-14 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   IF V_SCORE >= 90 THEN 
      DBMS_OUTPUT.PUT_LINE('A학점'); 
   ELSIF V_SCORE >= 80 THEN 
      DBMS_OUTPUT.PUT_LINE('B학점'); 
   ELSIF V_SCORE >= 70 THEN 
      DBMS_OUTPUT.PUT_LINE('C학점'); 
   ELSIF V_SCORE >= 60 THEN 
      DBMS_OUTPUT.PUT_LINE('D학점'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('F학점'); 
   END IF; 
END; 

/ 

 

-- 실습 16-15 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   CASE TRUNC(V_SCORE/10) 
      WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('A학점'); 
      WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('A학점'); 
      WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('B학점'); 
      WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('C학점'); 
      WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('D학점'); 
      ELSE DBMS_OUTPUT.PUT_LINE('F학점'); 
   END CASE; 
END; 

/ 

 

-- 실습 16-16 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   CASE 
      WHEN V_SCORE >= 90 THEN DBMS_OUTPUT.PUT_LINE('A학점'); 
      WHEN V_SCORE >= 80 THEN DBMS_OUTPUT.PUT_LINE('B학점'); 
      WHEN V_SCORE >= 70 THEN DBMS_OUTPUT.PUT_LINE('C학점'); 
      WHEN V_SCORE >= 60 THEN DBMS_OUTPUT.PUT_LINE('D학점'); 

      ELSE DBMS_OUTPUT.PUT_LINE('F학점'); 

   END CASE; 

END; 

/ 

 

-- 실습 16-17 

DECLARE 
   V_NUM NUMBER := 0; 
BEGIN 
   LOOP 
      DBMS_OUTPUT.PUT_LINE('현재 V_NUM : ' || V_NUM); 
      V_NUM := V_NUM + 1; 
      EXIT WHEN V_NUM > 4; 
   END LOOP; 

END; 

/ 

 

-- 실습 16-18 

DECLARE 
   V_NUM NUMBER := 0; 
BEGIN 
   WHILE V_NUM < 4 LOOP 
      DBMS_OUTPUT.PUT_LINE('현재 V_NUM : ' || V_NUM); 
      V_NUM := V_NUM + 1; 
   END LOOP; 

END; 

/ 

 

-- 실습 16-19 

BEGIN 
   FOR i IN 0..4 LOOP 
      DBMS_OUTPUT.PUT_LINE('현재 i의 값 : ' || i); 
   END LOOP; 

END; 

/ 

 

-- 실습 16-20 

BEGIN 
   FOR i IN REVERSE 0..4 LOOP 
      DBMS_OUTPUT.PUT_LINE('현재 i의 값 : ' || i); 
      END LOOP; 
END; 

/ 

 

-- 실습 16-21 

BEGIN 
   FOR i IN 0..4 LOOP 
      CONTINUE WHEN MOD(i, 2) = 1; 
      DBMS_OUTPUT.PUT_LINE('현재 i의 값 : ' || i); 
   END LOOP; 

END; 

/ 