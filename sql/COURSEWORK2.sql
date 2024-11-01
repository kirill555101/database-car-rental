ALTER TABLE rents 
    ADD damages_id INTEGER NOT NULL;

ALTER TABLE rents
    ADD CONSTRAINT rents_damages_fk FOREIGN KEY ( damages_id )
        REFERENCES damages ( id );
        
ALTER TABLE orders
    DROP CONSTRAINT orders_damages_fk;

ALTER TABLE orders
    DROP COLUMN damages_id;

ALTER TABLE cars
    DROP CONSTRAINT cars_companies_fk;

ALTER TABLE cars
    DROP COLUMN companies_id;