--시퀀스 
-- 순서 있게, 특정의 컬럼을 자동 생성 하고, 
-- 중복 되지 않는게 목적임. 

CREATE SEQUENCE 시퀀스1; -- 생성(옵션없이) 
CREATE SEQUENCE 시퀀스2 
start with 1000 
INCREMENT by 10; --1000번부터 시작 10씩 증가하는 시퀀스2 

 

select * from user_sequences 
where sequence_name = '시퀀스2'; 

 

-- 테이블에 입력시 시퀀스 사용방법 

DROP TABLE 부서; 

CREATE TABLE 부서 ( 
    번호 number primary key, 
    이름 VARCHAR2(100) 
    ); 

INSERT INTO 부서 VALUES(시퀀스2.NEXTVAL, '영업부'); 

INSERT INTO 부서 VALUES(시퀀스2.NEXTVAL, '개발부'); 

INSERT INTO 부서 VALUES(시퀀스2.NEXTVAL, '회계부'); 

INSERT INTO 부서 VALUES(시퀀스2.NEXTVAL, '경영부'); 
INSERT INTO 부서 VALUES(시퀀스2.NEXTVAL, '경영부2'); 

select * from 부서; 

 

-- 시퀀스의 현재값 확인 CURRVAL 

select 시퀀스1.currval from dual; 

select 시퀀스2.currval from dual; 

 

-- 시퀀스의 삭제 DROP 

DROP SEQUENCE 시퀀스1; 

DROP SEQUENCE 시퀀스2; 

 

update 부서 

set 번호 = 시퀀스1.NEXTVAL; 

select * from 부서; 