create table MBER
(
    NO           NUMBER               not null
        constraint MBER_PK
            primary key,
    NM           VARCHAR2(20)         not null,
    EMAIL        VARCHAR2(50)         not null,
    PASSWORD     VARCHAR2(50)         not null,
    TY           CHAR default 'U'     not null,
    RGSDE        DATE default SYSDATE not null,
    EXPERT_CTGRY VARCHAR2(30)
)
/

comment on table MBER is '회원'
/

comment on column MBER.NO is '회원 번호'
/

comment on column MBER.NM is '이름'
/

comment on column MBER.EMAIL is '이메일'
/

comment on column MBER.PASSWORD is '비밀번호'
/

comment on column MBER.TY is 'U: 이용자, E: 전문가, A: 관리자'
/

comment on column MBER.RGSDE is '등록일'
/

comment on column MBER.EXPERT_CTGRY is '전문가 범주'
/

create table RQSTDOC
(
    NO      NUMBER               not null
        constraint RQSTDOC_PK
            primary key,
    MBER_NO NUMBER               not null
        constraint RQSTDOC_MBER_NO_FK
            references MBER,
    CTGRY   VARCHAR2(30)         not null,
    SJ      VARCHAR2(100)        not null,
    CN      VARCHAR2(1000)       not null,
    PHOTO   VARCHAR2(100)        not null,
    STTUS   CHAR default 'N'     not null,
    RGSDE   DATE default SYSDATE not null
)
/

comment on table RQSTDOC is '의뢰서'
/

comment on column RQSTDOC.NO is '의뢰서 번호'
/

comment on column RQSTDOC.MBER_NO is '이용자 번호'
/

comment on column RQSTDOC.CTGRY is '범주'
/

comment on column RQSTDOC.SJ is '제목'
/

comment on column RQSTDOC.CN is '내용'
/

comment on column RQSTDOC.PHOTO is '사진'
/

comment on column RQSTDOC.STTUS is '현재 상황. Y: 완료, N: 미완료'
/

comment on column RQSTDOC.RGSDE is '등록일'
/

create table PRPSL
(
    NO         NUMBER               not null
        constraint PRPSL_PK
            primary key,
    RQSTDOC_NO NUMBER               not null
        constraint PRPSL_RQSTDOC_NO_FK
            references RQSTDOC,
    EXPERT_NO  NUMBER               not null
        constraint PRPSL_MBER_NO_FK
            references MBER,
    SJ         VARCHAR2(100)        not null,
    CN         VARCHAR2(1000)       not null,
    ESTMT      NUMBER               not null,
    STTUS      CHAR default 'N'     not null,
    RGSDE      DATE default SYSDATE not null
)
/

comment on table PRPSL is '제안서'
/

comment on column PRPSL.NO is '제안서 번호'
/

comment on column PRPSL.RQSTDOC_NO is '의뢰서 번호'
/

comment on column PRPSL.EXPERT_NO is '전문가 번호'
/

comment on column PRPSL.SJ is '제목'
/

comment on column PRPSL.CN is '내용'
/

comment on column PRPSL.ESTMT is '견적 금액'
/

comment on column PRPSL.STTUS is '현재 상황. Y: 완료, N: 미완료'
/

comment on column PRPSL.RGSDE is '등록일'
/

create table NOTICE
(
    NO    NUMBER               not null
        constraint NOTICE_PK
            primary key,
    SJ    VARCHAR2(100)        not null,
    CN    VARCHAR2(1000)       not null,
    CO    NUMBER               not null,
    RGSDE DATE default SYSDATE not null
)
/

comment on table NOTICE is '공지 사항'
/

comment on column NOTICE.NO is '공지 사항 번호'
/

comment on column NOTICE.SJ is '제목'
/

comment on column NOTICE.CN is '내용'
/

comment on column NOTICE.CO is '조회수'
/

comment on column NOTICE.RGSDE is '등록일'
/

create table QNA
(
    NO        NUMBER               not null
        constraint QNA_PK
            primary key,
    WRITER_NO NUMBER               not null
        constraint QNA_MBER_NO_FK
            references MBER,
    SJ        VARCHAR2(100)        not null,
    CN        VARCHAR2(1000)       not null,
    CO        NUMBER               not null,
    RGSDE     DATE default SYSDATE not null
)
/

comment on table QNA is 'QNA'
/

comment on column QNA.NO is 'QNA 번호'
/

comment on column QNA.WRITER_NO is '작성자'
/

comment on column QNA.SJ is '제목'
/

comment on column QNA.CN is '내용'
/

comment on column QNA.CO is '조회수'
/

comment on column QNA.RGSDE is '등록일'
/

create table QNA_ANSWER
(
    NO        NUMBER               not null
        constraint QNA_ANSWER_PK
            primary key,
    QNA_NO    NUMBER               not null,
    WRITER_ID NUMBER               not null
        constraint QNA_ANSWER_MBER_NO_FK
            references MBER,
    SJ        VARCHAR2(100)        not null,
    CN        VARCHAR2(1000)       not null,
    RGSDE     DATE default SYSDATE not null
)
/

comment on table QNA_ANSWER is 'QNA 댓글'
/

comment on column QNA_ANSWER.NO is 'QNA 댓글 번호'
/

comment on column QNA_ANSWER.QNA_NO is 'QNA 번호'
/

comment on column QNA_ANSWER.WRITER_ID is '작성자'
/

comment on column QNA_ANSWER.SJ is '제목'
/

comment on column QNA_ANSWER.CN is '내용'
/

comment on column QNA_ANSWER.RGSDE is '등록일'
/

create table DELNG_DTLS
(
    NO         NUMBER               not null
        constraint DELNG_DTLS_PK
            primary key,
    USER_ID    NUMBER               not null
        constraint DELNG_DTLS_MBER_NO_FK
            references MBER,
    RQSTDOC_NO NUMBER               not null
        constraint DELNG_DTLS_RQSTDOC_NO_FK
            references RQSTDOC,
    EXPERT_NO  NUMBER               not null
        constraint DELNG_DTLS_MBER_NO_FK_2
            references MBER,
    PRPSL_NO   NUMBER               not null
        constraint DELNG_DTLS_PRPSL_NO_FK
            references PRPSL,
    ESTMT      NUMBER               not null,
    RGSDE      DATE default SYSDATE not null
)
/

comment on table DELNG_DTLS is '거래 내역'
/

comment on column DELNG_DTLS.NO is '거래 번호'
/

comment on column DELNG_DTLS.USER_ID is '이용자 번호'
/

comment on column DELNG_DTLS.RQSTDOC_NO is '의뢰서 번호'
/

comment on column DELNG_DTLS.EXPERT_NO is '전문가 번호'
/

comment on column DELNG_DTLS.PRPSL_NO is '제안서 번호'
/

comment on column DELNG_DTLS.ESTMT is '견적액'
/

comment on column DELNG_DTLS.RGSDE is '등록일'
/


