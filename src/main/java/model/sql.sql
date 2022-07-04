create table doctor
(
	doc_cnt Number(30), 
	doc_date DATE,
	hos_name VARCHAR2(30) not null,
	doc_name VARCHAR2(20) not null,
	doc_id VARCHAR2(20) not null,
	doc_pw VARCHAR2(20) not null,
	
	constraint doc_cnt_pk primary key (doc_cnt)
)

create sequence doc_cnt_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

create table CUSTOMER
(
	cus_cnt NUMBER(30) not null, 
	doc_cnt NUMBER(30) not null,
	cus_date DATE,
	cus_name VARCHAR2(20) not null,
	cus_birth VARCHAR2(6) not null,
	cus_mw VARCHAR2(10),
	
	constraint cus_cnt_pk primary key (cus_cnt),
	constraint cus_doc_cnt_fk foreign key (doc_cnt) references DOCTOR(doc_cnt),
	CONSTRAINT check_cus_mw CHECK (cus_mw IN ('남성', '여성'))
)

create sequence cus_cnt_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

create table X_RAY
(
	xr_cnt Number(30) not null, 
	doc_cnt Number(30) not null,
	xr_date DATE,
	cus_cnt Number(30) not null,
	xr_name VARCHAR2(100) not null,
	
	constraint xr_cnt_pk primary key (xr_cnt),
	constraint xray_doc_cnt_fk foreign key (doc_cnt) references DOCTOR(doc_cnt),
	constraint xray_cus_cnt_fk foreign key (cus_cnt) references CUSTOMER(cus_cnt)
)

create sequence xr_cnt_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

create table X_RAY_COMMENT
(
	xr_com_cnt NUMBER(30) not null, 
	xr_com_date DATE,
	xr_cnt NUMBER(30) not null,
	xr_com VARCHAR2(2000) not null,
	
	constraint xrayc_xr_cnt_fk foreign key (xr_cnt) references X_RAY(xr_cnt)
)

create sequence xr_com_cnt_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache

create table LANDMARK
(
	xr_cnt NUMBER(30) not null, 
	lm_name VARCHAR2(100) not null,
	lt_x NUMBER(5) not null,
	lt_y NUMBER(5) not null,
	lm_x NUMBER(5) not null,
	lm_y NUMBER(5) not null,
	lb_x NUMBER(5) not null,
	lb_y NUMBER(5) not null,
	rt_x NUMBER(5) not null,
	rt_y NUMBER(5) not null,
	rm_x NUMBER(5) not null,
	rm_y NUMBER(5) not null,
	rb_x NUMBER(5) not null,
	rb_y NUMBER(5) not null,
	constraint lm_xr_cnt_fk foreign key (xr_cnt) references X_RAY(xr_cnt)
)


create table LANDMARKRESULT
(
	xr_cnt NUMBER(30) not null, 
	l_femur_len NUMBER(5) not null,
	l_tibia_len NUMBER(5) not null,
	l_total_len NUMBER(5) not null,
	r_femur_len NUMBER(5) not null,
	r_tibia_len NUMBER(5) not null,
	r_total_len NUMBER(5) not null,
	lr_femur_gap NUMBER(5) not null,
	lr_tibia_gap NUMBER(5) not null,
	lr_total_gap NUMBER(5) not null,
	constraint lmr_xr_cnt_fk foreign key (xr_cnt) references X_RAY(xr_cnt)
)


select * from doctor

insert into doctor 
values (1, '20220701', '조대', '테스터', 'test', 'test')

insert into CUSTOMER 
values (1, 1, '20220701', '최재황', '901107', 'man')
insert into CUSTOMER 
values (2, 1, '20220701', '김서진', '000101', 'woman')
insert into CUSTOMER 
values (3, 1, '20220701', '심가령', '950101', 'woman')

select * from CUSTOMER 




