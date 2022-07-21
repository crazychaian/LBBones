-- tbl_doctor Table Create SQL
CREATE TABLE tbl_doctor
(
    doc_id          VARCHAR2(30)    NOT NULL, 
    doc_pw          VARCHAR2(30)    NOT NULL, 
    doc_name        VARCHAR2(30)    NOT NULL, 
    doc_hospital    VARCHAR2(60)    NOT NULL, 
    doc_date        DATE            NOT NULL, 
    mem_type        CHAR(1)         NOT NULL, 
     PRIMARY KEY (doc_id)
)
/

COMMENT ON TABLE tbl_doctor IS '�ǻ� ���� ���̺�'
/

COMMENT ON COLUMN tbl_doctor.doc_id IS '�ǻ� ���̵�'
/

COMMENT ON COLUMN tbl_doctor.doc_pw IS '�ǻ� ���'
/

COMMENT ON COLUMN tbl_doctor.doc_name IS '�ǻ� �̸�'
/

COMMENT ON COLUMN tbl_doctor.doc_hospital IS '�ǻ� �ҼӺ�����'
/

COMMENT ON COLUMN tbl_doctor.doc_date IS '�ǻ� �������'
/

COMMENT ON COLUMN tbl_doctor.mem_type IS 'ȸ�� ����'
/


-- tbl_patient Table Create SQL
CREATE TABLE tbl_patient
(
    p_seq       NUMBER(30, 0)    NOT NULL, 
    doc_id      VARCHAR2(30)     NOT NULL, 
    p_date      DATE             NOT NULL, 
    p_name      VARCHAR2(30)     NOT NULL, 
    p_birth     VARCHAR2(30)     NOT NULL, 
    p_gender    CHAR(1)          NOT NULL, 
     PRIMARY KEY (p_seq)
)
/

CREATE SEQUENCE tbl_patient_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_patient_AI_TRG
BEFORE INSERT ON tbl_patient 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_patient_SEQ.NEXTVAL
    INTO :NEW.p_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_patient_AI_TRG; /

--DROP SEQUENCE tbl_patient_SEQ; /

COMMENT ON TABLE tbl_patient IS 'ȯ�� ���̺�'
/

COMMENT ON COLUMN tbl_patient.p_seq IS 'ȯ�� ����'
/

COMMENT ON COLUMN tbl_patient.doc_id IS '��� �ǻ�'
/

COMMENT ON COLUMN tbl_patient.p_date IS 'ȯ�� �������'
/

COMMENT ON COLUMN tbl_patient.p_name IS 'ȯ�� �̸�'
/

COMMENT ON COLUMN tbl_patient.p_birth IS 'ȯ�� �������'
/

COMMENT ON COLUMN tbl_patient.p_gender IS 'ȯ�� ����'
/

ALTER TABLE tbl_patient
    ADD CONSTRAINT FK_tbl_patient_doc_id FOREIGN KEY (doc_id)
        REFERENCES tbl_doctor (doc_id) ON DELETE RESTRICT 
/


-- tbl_xray Table Create SQL
CREATE TABLE tbl_xray
(
    xray_seq     NUMBER(30, 0)    NOT NULL, 
    p_seq        NUMBER(30, 0)    NOT NULL, 
    xray_img     VARCHAR2(60)     NOT NULL, 
    xray_date    DATE             NOT NULL, 
     PRIMARY KEY (xray_seq)
)
/

CREATE SEQUENCE tbl_xray_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_xray_AI_TRG
BEFORE INSERT ON tbl_xray 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_xray_SEQ.NEXTVAL
    INTO :NEW.xray_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_xray_AI_TRG; /

--DROP SEQUENCE tbl_xray_SEQ; /

COMMENT ON TABLE tbl_xray IS '�������� ���̺�'
/

COMMENT ON COLUMN tbl_xray.xray_seq IS '�������� ����'
/

COMMENT ON COLUMN tbl_xray.p_seq IS 'ȯ�� ����'
/

COMMENT ON COLUMN tbl_xray.xray_img IS '�������� ����'
/

COMMENT ON COLUMN tbl_xray.xray_date IS '�Կ� ����'
/

ALTER TABLE tbl_xray
    ADD CONSTRAINT FK_tbl_xray_p_seq FOREIGN KEY (p_seq)
        REFERENCES tbl_patient (p_seq) ON DELETE RESTRICT 
/


-- tbl_landmark Table Create SQL
CREATE TABLE tbl_landmark
(
    landmark_seq     NUMBER(30, 0)    NOT NULL, 
    xray_seq         NUMBER(30, 0)    NOT NULL, 
    l_top_x          NUMBER(10, 0)    NOT NULL, 
    l_top_y          NUMBER(10, 0)    NOT NULL, 
    l_mid_x          NUMBER(10, 0)    NOT NULL, 
    l_mid_y          NUMBER(10, 0)    NOT NULL, 
    l_bot_x          NUMBER(10, 0)    NOT NULL, 
    l_bot_y          NUMBER(10, 0)    NOT NULL, 
    r_top_x          NUMBER(10, 0)    NOT NULL, 
    r_top_y          NUMBER(10, 0)    NOT NULL, 
    r_mid_x          NUMBER(10, 0)    NOT NULL, 
    r_mid_y          NUMBER(10, 0)    NOT NULL, 
    r_bot_x          NUMBER(10, 0)    NOT NULL, 
    r_bot_y          NUMBER(10, 0)    NOT NULL, 
    l_femur_len      NUMBER(30, 0)    NOT NULL, 
    l_tibia_len      NUMBER(30, 0)    NOT NULL, 
    l_total_len      NUMBER(30, 0)    NOT NULL, 
    r_femur_len      NUMBER(30, 0)    NOT NULL, 
    r_tibia_len      NUMBER(30, 0)    NOT NULL, 
    r_total_len      NUMBER(30, 0)    NOT NULL, 
    lr_femur_gap     NUMBER(30, 0)    NOT NULL, 
    lr_tibia_gap     NUMBER(30, 0)    NOT NULL, 
    lr_total_gap     NUMBER(30, 0)    NOT NULL, 
    landmark_date    DATE             NOT NULL, 
     PRIMARY KEY (landmark_seq)
)
/

CREATE SEQUENCE tbl_landmark_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_landmark_AI_TRG
BEFORE INSERT ON tbl_landmark 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_landmark_SEQ.NEXTVAL
    INTO :NEW.landmark_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_landmark_AI_TRG; /

--DROP SEQUENCE tbl_landmark_SEQ; /

COMMENT ON TABLE tbl_landmark IS '�������� ���帶ũ ���̺�'
/

COMMENT ON COLUMN tbl_landmark.landmark_seq IS '���帶ũ ����'
/

COMMENT ON COLUMN tbl_landmark.xray_seq IS '�������� ����'
/

COMMENT ON COLUMN tbl_landmark.l_top_x IS 'L_TOP_X'
/

COMMENT ON COLUMN tbl_landmark.l_top_y IS 'L_TOP_Y'
/

COMMENT ON COLUMN tbl_landmark.l_mid_x IS 'L_MIDDLE_X'
/

COMMENT ON COLUMN tbl_landmark.l_mid_y IS 'L_MIDDLE_Y'
/

COMMENT ON COLUMN tbl_landmark.l_bot_x IS 'L_BOTTOM_X'
/

COMMENT ON COLUMN tbl_landmark.l_bot_y IS 'L_BOTTOM_Y'
/

COMMENT ON COLUMN tbl_landmark.r_top_x IS 'R_TOP_X'
/

COMMENT ON COLUMN tbl_landmark.r_top_y IS 'R_TOP_Y'
/

COMMENT ON COLUMN tbl_landmark.r_mid_x IS 'R_MIDDLE_X'
/

COMMENT ON COLUMN tbl_landmark.r_mid_y IS 'R_MIDDLE_Y'
/

COMMENT ON COLUMN tbl_landmark.r_bot_x IS 'R_BOTTOM_X'
/

COMMENT ON COLUMN tbl_landmark.r_bot_y IS 'R_BOTTOM_Y'
/

COMMENT ON COLUMN tbl_landmark.l_femur_len IS '���� ����� ����'
/

COMMENT ON COLUMN tbl_landmark.l_tibia_len IS '���� ���Ƹ� ����'
/

COMMENT ON COLUMN tbl_landmark.l_total_len IS '���� ��ü ����'
/

COMMENT ON COLUMN tbl_landmark.r_femur_len IS '������ ����� ����'
/

COMMENT ON COLUMN tbl_landmark.r_tibia_len IS '������ ���Ƹ� ����'
/

COMMENT ON COLUMN tbl_landmark.r_total_len IS '������ ��ü ����'
/

COMMENT ON COLUMN tbl_landmark.lr_femur_gap IS '���� ����� ����'
/

COMMENT ON COLUMN tbl_landmark.lr_tibia_gap IS '���� ���Ƹ� ����'
/

COMMENT ON COLUMN tbl_landmark.lr_total_gap IS '���� ��ü ����'
/

COMMENT ON COLUMN tbl_landmark.landmark_date IS '���帶ũ �������'
/

ALTER TABLE tbl_landmark
    ADD CONSTRAINT FK_tbl_landmark_xray_seq FOREIGN KEY (xray_seq)
        REFERENCES tbl_xray (xray_seq) ON DELETE RESTRICT 
/


-- tbl_xray_cmt Table Create SQL
CREATE TABLE tbl_xray_cmt
(
    cmt_seq        NUMBER(30, 0)     NOT NULL, 
    xray_seq       NUMBER(30, 0)     NOT NULL, 
    doc_id         VARCHAR2(30)      NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_date       DATE              NOT NULL, 
     PRIMARY KEY (cmt_seq)
)
/

CREATE SEQUENCE tbl_xray_cmt_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_xray_cmt_AI_TRG
BEFORE INSERT ON tbl_xray_cmt 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_xray_cmt_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_xray_cmt_AI_TRG; /

--DROP SEQUENCE tbl_xray_cmt_SEQ; /

COMMENT ON TABLE tbl_xray_cmt IS '�������� �ڸ�Ʈ ���̺�'
/

COMMENT ON COLUMN tbl_xray_cmt.cmt_seq IS '�ڸ�Ʈ ����'
/

COMMENT ON COLUMN tbl_xray_cmt.xray_seq IS '�������� ����'
/

COMMENT ON COLUMN tbl_xray_cmt.doc_id IS '��� �ǻ�'
/

COMMENT ON COLUMN tbl_xray_cmt.cmt_content IS '�ڸ�Ʈ ����'
/

COMMENT ON COLUMN tbl_xray_cmt.cmt_date IS '�ڸ�Ʈ ����'
/

ALTER TABLE tbl_xray_cmt
    ADD CONSTRAINT FK_tbl_xray_cmt_xray_seq_tbl_xray_xray_seq FOREIGN KEY (xray_seq)
        REFERENCES tbl_xray (xray_seq) ON DELETE RESTRICT 
/

ALTER TABLE tbl_xray_cmt
    ADD CONSTRAINT FK_tbl_xray_cmt_doc_id_tbl_doctor_doc_id FOREIGN KEY (doc_id)
        REFERENCES tbl_doctor (doc_id) ON DELETE RESTRICT 
/






select * from tbl_doctor

select * from tbl_patient

select * from tbl_xray

select * from tbl_landmark

select * from tbl_xray_cmt



