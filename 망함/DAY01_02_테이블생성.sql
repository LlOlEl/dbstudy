/* 
    테이블(table)
    1. 관계형 데이터베이스에서 데이터를 저장하는 객체이다.
    2. 표 형식을 가진다.
    3. 행(Row)과 열(Column)의 집합
    
*/

/*
    테이블 만들기
    1. 열(Column)을 만드는 과정이다.
    2. 테이블 만드는 쿼리문 
        CREATE TABLE 테이블이름 (
            칼럼이름1 데이터타입 제약조건,
            칼럼이름2 데이터타입 제약조건,
            칼럼이름3 데이터타입 제약조건,
            ...
        );
*/
    
/*
    데이터타입 종류
    1. NUMBER (P,S) : 정밀도가 P이고, 스케일이 S인 숫자
        1) 정밀도 P : 전체 유효 숫자 (전체 몇글자로 할건지)
        2) 스케일 S : 소수부의 유효 숫자 (소수점 뒤에 몇인지)
        NUMBER(2,2) = 0.XX , NUMBER(3) = 최대 999 까지 가능
        3) 스케일만 생략하면 정수로 표시하는 숫자
        4) 정밀도와 스케일을 생략하면 정수, 실수 모두 표시할 수 있는 숫자
    2. CHAR (size) : 글자수가 최대 size인 고정 문자 타입
        1) 고정 문자 : 글자수의 변동이 적은 문자(예시 : 휴대전화번호, 주민번호, 우편번호 등)
        2) 최대 size : 2000 byte
    3. VARCHAR2 (size) : 글자수가 최대 size인 가변 문자
        1) 가변 문자 : 글자수의 변동이 큰 문자(예시 : 이름, 주소 등)
        2) 최대 size : 4000 byte
    4. CLOB : VARCHAR2(size) 로 처리할 수 없는 큰 문자
    5. DATE : 날짜/시간(년,월,일,시,분,초)
    6. TIMESTAMP : 정밀한 날짜/시간 (년,월,일,시,분,초,마이크로초(백만분의 1초))
*/

/* 
    제약조건 종류 5가지
    1. NOT NULL : 필수 입력
    2. UNIQUE : 중복(데이터) 불가
    3. PRIMARY KEY : 기본키
    4. FOREIGN KEY : 외래키
    5. CHECK : 작성한 조건으로 값의 제한
    
    
*/

-- 블로그 구현을 위한 블로그 테이블
CREATE TABLE BLOG_T ( 
    BLOG_NO NUMBER             NOT NULL PRIMARY KEY,
    TITLE   VARCHAR2(100 BYTE) NOT NULL, --제목 필수니까 NOT NULL
    EDITOR  VARCHAR2(100 BYTE) NOT NULL, --블로그 작성자 필수니까 NOT NULL
    CONTENTS CLOB              NULL, -- NULL은 생략 가능함
    CREATED DATE               NOT NULL  
);
--블로그 테이블 삭제하기
DROP TABLE BLOG_T;






