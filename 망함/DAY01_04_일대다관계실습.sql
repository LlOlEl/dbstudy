
CREATE TABLE STUDENT_T (
    STUDENT_NO        NUMBER                NOT NULL PRIMARY KEY,
    STUDENT_NAME      VARCHAR2(100 BYTE)    NOT NULL,
    STUDENT_GRADE     NUMBER                NOT NULL,  
    STUDENT_CLASS     NUMBER                NOT NULL,    
    STUDENT_CLASS_NO  NUMBER                NOT NULL
);
--과목테이블
CREATE TABLE SUBJECT_T (
    SUBJECT_NO        NUMBER                NOT NULL PRIMARY KEY,
    SUBJECT_NAME      VARCHAR2(100 BYTE)    NOT NULL
);
--수강신청 테이블
CREATE TABLE ENROLL_T (
    ENROLL_NO        NUMBER        NOT NULL PRIMARY KEY,
    STUDENT_NO       NUMBER        REFERENCES STUDENT_T(STUDENT_NO) ON DELETE CASCADE, --학생이 지워지면 수강신청도 지원진다
    SUBJECT_NO       NUMBER        REFERENCES SUBJECT_T(SUBJECT_NO) ON DELETE SET NULL  --과목이 지워지면 수강신청에서 과목번호만 지운다.       
);

/*
--학생 테이블 삭제
DROP TABLE ENROLL_T;
--수강신청 테이블 삭제
DROP TABLE STUDENT_T;
--과목 테이블 삭제
DROP TABLE SUBJECT_T;

*/



/*
CREATE TABLE A_T (
    A_NO         NUMBER             NOT NULL PRIMARY KEY, --학번
    B            VARCHAR2(100 BYTE)   NOT NULL, --성명
    C            NUMBER               NOT NULL --나이
);

CREATE TABLE B_T (
    D_NO        VARCHAR2(100 BYTE)   NOT NULL PRIMARY KEY, --과목코드
    E           VARCHAR2(100 BYTE)   NOT NULL, --과목명
    F           VARCHAR2(100 BYTE)   NOT NULL  --교수명
);    

CREATE TABLE C_T (
    ORDER_NO    NUMBER               NOT NULL PRIMARY KEY, --신청번호
    PRODUCT_NO  NUMBER               REFERENCES A_T(A_NO), --학번
    CODE_NO     VARCHAR2(100 BYTE)   REFERENCES B_T(D_NO) --과목코드
);
*/