create  database star

use star


CREATE TABLE Blog
(
	b_id int IDENTITY(1,1),
	b_title nvarchar(50),
	b_date date,
	b_Discrip nvarchar(max),
	b_img nvarchar(max) ,
)	


CREATE TABLE category_T
(
	cat_id int IDENTITY(1,1),
	cat_title nvarchar(50),
	cat_discrip nvarchar(500),
)
CREATE TABLE client
(
	client_id int IDENTITY(1,1),
	client_name nvarchar(50),
	client_email nvarchar(50),
	client_fk_Cat int foreign key references category_T(cat_id),
	client_fk_ser int foreign key references service(ser_id),
	client_msg nvarchar(50),
)

CREATE TABLE contact
(
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar (50) NULL,
	email nvarchar(50) NULL,
	number nvarchar(100) NULL,
	message nvarchar(max) NULL,
)
CREATE TABLE employe_Reg
(
	reg_id_code [int] IDENTITY(1,1) NOT NULL,
	reg_name nvarchar(50) NULL,
	reg_role nvarchar(50) NULL,
	reg_depart nvarchar(50) NULL,
	reg_client nvarchar(50) NULL,
	reg_grade nvarchar(50) NULL,
	reg_education nvarchar(50) NULL,
	reg_achieve nvarchar(50) NULL,
	reg_number nvarchar(50) NOT NULL,
	reg_email nvarchar(50) NOT NULL,
	reg_address nvarchar(100) NULL,
	reg_img nvarchar(max) NULL,
	password nvarchar(50) NULL,
	code nvarchar(50) NULL,

CREATE TABLE job
(
	id int IDENTITY(1,1) NOT NULL,
	first_name nvarchar(50) NULL,
	last_name nvarchar(50) NULL,
	country nvarchar(50) NULL,
	address nvarchar(100) NULL,
	city nvarchar(50) NULL,
	qolifi nvarchar(50) NULL,
	expe nvarchar(50) NULL,
	job_name nvarchar(50) NULL,
	email nvarchar(50) NULL,
	number nvarchar(50) NULL,
	age date NULL,
	gender nvarchar(50) NULL,

)
CREATE TABLE PKG(
	P_id [int] IDENTITY(1,1) NOT NULL,
	p_title nvarchar(50) NULL,
	p_price nvarchar(50) NULL,
	p_1 nvarchar(50) NULL,
	p_2 nvarchar(50) NULL,
	p_3 nvarchar(50) NULL,
	p_4 nvarchar(50) NULL,
	p_5 nvarchar(50) NULL,
	p_6 nvarchar(50) NULL,
)
CREATE TABLE service(
	ser_id int IDENTITY(1,1) NOT NULL,
	ser_title nvarchar(50) NULL,
	ser_discrip nvarchar(1000) NULL,
	ser_img nvarchar(max) NULL,
	ser_fk_cat int foreign key references category_T(cat_id),
	ser_img_2 nvarchar(max) NULL,
	ser_discrip_2 nvarchar(max) NULL,

)
CREATE TABLE vacancy(
	vac_id [int] IDENTITY(1,1) NOT NULL,
	vac_title [nvarchar](50) NULL,
	vac_discrip_1 nvarchar(max) NULL,
	vac_discrip_2 nvarchar(max) NULL,
	vac_last_date nvarchar(50) NULL,
	vac_image nvarchar(max) NULL,

)
