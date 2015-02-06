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



/* TABLE acces */

--DROP TABLE IF EXISTS sdis.acces CASCADE;
CREATE TABLE sdis.acces (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.acces IS 'Accès';

ALTER TABLE sdis.acces ADD COLUMN type         varchar(255); COMMENT ON COLUMN sdis.acces.type IS 'Véhicule, Reconnaissance, Echelle, Entrée, Motopompe, Barrage';
ALTER TABLE sdis.acces ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.acces ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.acces ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'acces', 'geom', 21781, 'MultiLineString', 2);
CREATE INDEX acces_geom_idx ON sdis.acces USING GIST (geom);



/* TABLE signalisation */

--DROP TABLE IF EXISTS sdis.signalisation CASCADE;
CREATE TABLE sdis.signalisation (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.signalisation IS 'Signalisation';

ALTER TABLE sdis.signalisation ADD COLUMN type     varchar(255); COMMENT ON COLUMN sdis.signalisation.type IS 'Sens interdit, Travaux, Danger, Interdiction camions, Hauteur limitée, Largeur limitée, Poids limité, Tout droit, Déviation';
ALTER TABLE sdis.signalisation ADD COLUMN valeur   varchar(5);   COMMENT ON COLUMN sdis.signalisation.valeur IS 'Hauteur, largeur ou poids maximal';
ALTER TABLE sdis.signalisation ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'signalisation', 'geom', 21781, 'MultiLineString', 2);
CREATE INDEX signalisation_geom_idx ON sdis.signalisation USING GIST (geom);



/* TABLE emplacements */

--DROP TABLE IF EXISTS sdis.emplacements CASCADE;
CREATE TABLE sdis.emplacements (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.emplacements IS 'Emplacements';

ALTER TABLE sdis.emplacements ADD COLUMN type     varchar(255); COMMENT ON COLUMN sdis.emplacements.type IS 'Motopompe, Tonne pompe, Echelle';
ALTER TABLE sdis.emplacements ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'emplacements', 'geom', 21781, 'Point', 2);
CREATE INDEX emplacements_geom_idx ON sdis.emplacements USING GIST (geom);
