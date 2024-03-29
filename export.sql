--------------------------------------------------------
-- Archivo creado  - viernes-octubre-18-2019   
--------------------------------------------------------
DROP TABLE "J_HERRERA"."BARRIOS";
DROP TABLE "J_HERRERA"."COMUNAS";
DROP TABLE "J_HERRERA"."ESTADOS_PRESTADORES";
DROP TABLE "J_HERRERA"."MODALIDADES";
DROP TABLE "J_HERRERA"."PRESTADORES";
DROP TABLE "J_HERRERA"."SEDES";
DROP TABLE "J_HERRERA"."TIPO_COMUNAS";
--------------------------------------------------------
--  DDL for Table BARRIOS
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."BARRIOS" 
   (	"ID" NUMBER(22,0), 
	"NOMBRE" VARCHAR2(255), 
	"COMUNA_ID" NUMBER(22,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table COMUNAS
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."COMUNAS" 
   (	"ID" NUMBER(22,0), 
	"NOMBRE" VARCHAR2(255), 
	"TIPO_COMUNA_ID" NUMBER(22,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table ESTADOS_PRESTADORES
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."ESTADOS_PRESTADORES" 
   (	"ID" NUMBER(22,0), 
	"NOMBRE" VARCHAR2(255), 
	"COMUNA_ID" NUMBER(22,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table MODALIDADES
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."MODALIDADES" 
   (	"ID" NUMBER(22,0), 
	"NOMBRE" VARCHAR2(255)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table PRESTADORES
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."PRESTADORES" 
   (	"ID" NUMBER(22,0), 
	"NOMBRE" VARCHAR2(255), 
	"FECHA_CONTRATACION" DATE, 
	"VALOR_CONTRATO" NUMBER(19,2), 
	"ESTADO_ID" NUMBER(22,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table SEDES
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."SEDES" 
   (	"ID" NUMBER(22,0), 
	"SEDE" NUMBER(22,0), 
	"TELEFONO" NUMBER(22,0), 
	"DIRECCION" NUMBER(22,0), 
	"CUPOS_DISPUESTOS" NUMBER(22,0), 
	"BARRIO_ID" NUMBER(22,0), 
	"MODALIDAD_ID" NUMBER(22,0), 
	"PRESTADOR_ID" NUMBER(22,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table TIPO_COMUNAS
--------------------------------------------------------

  CREATE TABLE "J_HERRERA"."TIPO_COMUNAS" 
   (	"ID" NUMBER(22,0), 
	"TIPO" VARCHAR2(255)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  Constraints for Table ESTADOS_PRESTADORES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."ESTADOS_PRESTADORES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."ESTADOS_PRESTADORES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."ESTADOS_PRESTADORES" MODIFY ("COMUNA_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."ESTADOS_PRESTADORES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEDES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("SEDE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("CUPOS_DISPUESTOS" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("BARRIO_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("MODALIDAD_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" MODIFY ("PRESTADOR_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."SEDES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_COMUNAS
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."TIPO_COMUNAS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."TIPO_COMUNAS" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."TIPO_COMUNAS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BARRIOS
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."BARRIOS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."BARRIOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."BARRIOS" MODIFY ("COMUNA_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."BARRIOS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MODALIDADES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."MODALIDADES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."MODALIDADES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."MODALIDADES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRESTADORES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."PRESTADORES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."PRESTADORES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."PRESTADORES" MODIFY ("FECHA_CONTRATACION" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."PRESTADORES" MODIFY ("VALOR_CONTRATO" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."PRESTADORES" MODIFY ("ESTADO_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."PRESTADORES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMUNAS
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."COMUNAS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."COMUNAS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."COMUNAS" MODIFY ("TIPO_COMUNA_ID" NOT NULL ENABLE);
  ALTER TABLE "J_HERRERA"."COMUNAS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BARRIOS
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."BARRIOS" ADD CONSTRAINT "BARRIOS_COMUNAS_FK" FOREIGN KEY ("COMUNA_ID")
	  REFERENCES "J_HERRERA"."COMUNAS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMUNAS
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."COMUNAS" ADD CONSTRAINT "TIPO_COMUNAS_FK" FOREIGN KEY ("TIPO_COMUNA_ID")
	  REFERENCES "J_HERRERA"."TIPO_COMUNAS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRESTADORES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."PRESTADORES" ADD CONSTRAINT "PRESTADORES_FK" FOREIGN KEY ("ESTADO_ID")
	  REFERENCES "J_HERRERA"."ESTADOS_PRESTADORES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEDES
--------------------------------------------------------

  ALTER TABLE "J_HERRERA"."SEDES" ADD CONSTRAINT "PRESTADORES_SEDES_FK" FOREIGN KEY ("PRESTADOR_ID")
	  REFERENCES "J_HERRERA"."PRESTADORES" ("ID") ENABLE;
  ALTER TABLE "J_HERRERA"."SEDES" ADD CONSTRAINT "MODALIDAD_FK" FOREIGN KEY ("MODALIDAD_ID")
	  REFERENCES "J_HERRERA"."MODALIDADES" ("ID") ENABLE;
  ALTER TABLE "J_HERRERA"."SEDES" ADD CONSTRAINT "BARRIO_FK" FOREIGN KEY ("BARRIO_ID")
	  REFERENCES "J_HERRERA"."BARRIOS" ("ID") ENABLE;


ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

create tablespace mid_term
datafile 'any.dbf' size 20M;


ALTER profile parcial limit
FAILED_LOGIN_ATTEMPTS 19
IDLE_TIME 20;

CREATE USER JHERRERA
IDENTIFIED BY Developer123
DEFAULT TABLESPACE mid_term
QUOTA UNLIMITED ON mid_term;

ALTER USER JHERRERA PROFILE parcial;

CREATE USER ANYUSER
IDENTIFIED BY Developer123
DEFAULT TABLESPACE mid_term;

ALTER USER ANYUSER PROFILE parcial;

CREATE ROLE MINI_DBA;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW TO MINI_DBA;

CREATE ROLE STUDENT;
GRANT CREATE SESSION TO STUDENT;

GRANT MINI_DBA TO JHERRERA;

