/* TABLE dangers */

--DROP TABLE IF EXISTS sdis.dangers CASCADE;
CREATE TABLE sdis.dangers (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.dangers IS 'Dangers';

ALTER TABLE sdis.dangers ADD COLUMN type         varchar(255); COMMENT ON COLUMN sdis.dangers.type IS 'Feu, Gaz, Electrique, Toxique, Radioactif, Infectieux, Pollution, Autre';
ALTER TABLE sdis.dangers ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN document     varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'dangers', 'geom', 21781, 'Point', 2);
CREATE INDEX dangers_geom_idx ON sdis.dangers USING GIST (geom);



/* TABLE risques */

--DROP TABLE IF EXISTS sdis.risques CASCADE;
CREATE TABLE sdis.risques (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.risques IS 'Risques';

ALTER TABLE sdis.risques ADD COLUMN type         varchar(255); COMMENT ON COLUMN sdis.risques.type IS 'EMS, Hôpital, Ecole, Parking souterrain, Bien culturel, Pisciculture, Bâtiment isolé, Autre';
ALTER TABLE sdis.risques ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.risques ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.risques ADD COLUMN document     varchar(255);
ALTER TABLE sdis.risques ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'risques', 'geom', 21781, 'Point', 2);
CREATE INDEX risques_geom_idx ON sdis.risques USING GIST (geom);
