-- Generated by Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   at:        2021-03-26 12:57:14 MSK
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cars (
    id               INTEGER NOT NULL,
    mark             CHAR(20) NOT NULL,
    produced_year    DATE NOT NULL,
    carcass_type     CHAR(20) NOT NULL,
    car_number       CHAR(15) NOT NULL,
    day_payment      INTEGER NOT NULL,
    number_of_seats  CHAR(1) NOT NULL,
    price            INTEGER NOT NULL,
    parks_id         INTEGER NOT NULL,
    is_available     INTEGER DEFAULT 1 NOT NULL
);

ALTER TABLE cars ADD CONSTRAINT cars_pk PRIMARY KEY ( id );

CREATE TABLE clients (
    id          INTEGER NOT NULL,
    surname     CHAR(25) NOT NULL,
    name        CHAR(25) NOT NULL,
    patronymic  CHAR(25),
    phone       CHAR(15) NOT NULL,
    email       CHAR(15) NOT NULL
);

ALTER TABLE clients ADD CONSTRAINT clients_pk PRIMARY KEY ( id );

CREATE TABLE companies (
    id     INTEGER NOT NULL,
    name   CHAR(15) NOT NULL,
    phone  CHAR(15) NOT NULL
);

ALTER TABLE companies ADD CONSTRAINT copanies_pk PRIMARY KEY ( id );

CREATE TABLE contracts (
    id            INTEGER NOT NULL,
    begin_date    DATE NOT NULL,
    end_date      DATE NOT NULL,
    clients_id    INTEGER NOT NULL,
    companies_id  INTEGER NOT NULL
);

ALTER TABLE contracts ADD CONSTRAINT contracts_pk PRIMARY KEY ( id );

CREATE TABLE damages (
    id       INTEGER NOT NULL,
    sum      INTEGER NOT NULL,
    measure  CHAR(10) NOT NULL
);

ALTER TABLE damages ADD CONSTRAINT damages_pk PRIMARY KEY ( id );

CREATE TABLE orders (
    id           INTEGER NOT NULL,
    total_price  INTEGER NOT NULL,
    rents_id     INTEGER NOT NULL
);

ALTER TABLE orders ADD CONSTRAINT orders_pk PRIMARY KEY ( id );

CREATE TABLE parks (
    id       INTEGER NOT NULL,
    phone    CHAR(15) NOT NULL,
    address  CHAR(30) NOT NULL
);

ALTER TABLE parks ADD CONSTRAINT parks_pk PRIMARY KEY ( id );

CREATE TABLE rents (
    id          INTEGER NOT NULL,
    begin_date  DATE NOT NULL,
    end_date    DATE NOT NULL,
    clients_id  INTEGER NOT NULL,
    cars_id     INTEGER NOT NULL,
    damages_id  INTEGER NOT NULL
);

ALTER TABLE rents ADD CONSTRAINT rent_pk PRIMARY KEY ( id );

ALTER TABLE cars
    ADD CONSTRAINT cars_parks_fk FOREIGN KEY ( parks_id )
        REFERENCES parks ( id );

ALTER TABLE contracts
    ADD CONSTRAINT contracts_clients_fk FOREIGN KEY ( clients_id )
        REFERENCES clients ( id );

ALTER TABLE contracts
    ADD CONSTRAINT contracts_companies_fk FOREIGN KEY ( companies_id )
        REFERENCES companies ( id );

ALTER TABLE orders
    ADD CONSTRAINT orders_rents_fk FOREIGN KEY ( rents_id )
        REFERENCES rents ( id );

ALTER TABLE rents
    ADD CONSTRAINT rents_cars_fk FOREIGN KEY ( cars_id )
        REFERENCES cars ( id );

ALTER TABLE rents
    ADD CONSTRAINT rents_clients_fk FOREIGN KEY ( clients_id )
        REFERENCES clients ( id );

ALTER TABLE rents
    ADD CONSTRAINT rents_damages_fk FOREIGN KEY ( damages_id )
        REFERENCES damages ( id );

CREATE SEQUENCE cars_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER cars_id_trg BEFORE
    INSERT ON cars
    FOR EACH ROW
BEGIN
    :new.id := cars_id_seq.nextval;
END;
/

CREATE SEQUENCE clients_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER clients_id_trg BEFORE
    INSERT ON clients
    FOR EACH ROW
BEGIN
    :new.id := clients_id_seq.nextval;
END;
/

CREATE SEQUENCE companies_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER companies_id_trg BEFORE
    INSERT ON companies
    FOR EACH ROW
BEGIN
    :new.id := companies_id_seq.nextval;
END;
/

CREATE SEQUENCE contracts_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER contracts_id_trg BEFORE
    INSERT ON contracts
    FOR EACH ROW
BEGIN
    :new.id := contracts_id_seq.nextval;
END;
/

CREATE SEQUENCE damages_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER damages_id_trg BEFORE
    INSERT ON damages
    FOR EACH ROW
BEGIN
    :new.id := damages_id_seq.nextval;
END;
/

CREATE SEQUENCE orders_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER orders_id_trg BEFORE
    INSERT ON orders
    FOR EACH ROW
BEGIN
    :new.id := orders_id_seq.nextval;
END;
/

CREATE SEQUENCE parks_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER parks_id_trg BEFORE
    INSERT ON parks
    FOR EACH ROW
BEGIN
    :new.id := parks_id_seq.nextval;
END;
/

CREATE SEQUENCE rents_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER rents_id_trg BEFORE
    INSERT ON rents
    FOR EACH ROW
BEGIN
    :new.id := rents_id_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           8
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          8
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
