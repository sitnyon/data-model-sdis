/* TABLE dangers */

--DROP TABLE IF EXISTS sdis.dangers CASCADE;
CREATE TABLE sdis.dangers (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.dangers IS 'Sources de danger';

ALTER TABLE sdis.dangers ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.dangers.type IS 'Feu, Gaz, Electrique, Toxique, Radioactif, Infectieux, Pollution, Autre';
ALTER TABLE sdis.dangers ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN document     varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'dangers', 'geom', 21781, 'Point', 2);
CREATE INDEX dangers_geom_idx ON sdis.dangers USING GIST (geom);



/* TABLE risques */

--DROP TABLE IF EXISTS sdis.risques CASCADE;
CREATE TABLE sdis.risques (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.risques IS 'Eléments à risque';

ALTER TABLE sdis.risques ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.risques.type IS 'EMS, Hôpital, Ecole, Parking souterrain, Bien culturel, Pisciculture, Bâtiment isolé, Autre';
ALTER TABLE sdis.risques ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.risques ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.risques ADD COLUMN document     varchar(255);
ALTER TABLE sdis.risques ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'risques', 'geom', 21781, 'Point', 2);
CREATE INDEX risques_geom_idx ON sdis.risques USING GIST (geom);



/* TABLE acces */

--DROP TABLE IF EXISTS sdis.acces CASCADE;
CREATE TABLE sdis.acces (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.acces IS 'Accès et cheminements';

ALTER TABLE sdis.acces ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.acces.type IS 'Véhicule, Reconnaissance, Echelle, Entrée, Motopompe, Barrage';
ALTER TABLE sdis.acces ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.acces ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.acces ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'acces', 'geom', 21781, 'MultiLineString', 2);
CREATE INDEX acces_geom_idx ON sdis.acces USING GIST (geom);



/* TABLE signalisation */

--DROP TABLE IF EXISTS sdis.signalisation CASCADE;
CREATE TABLE sdis.signalisation (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.signalisation IS 'Signalisation pour accès véhicules';

ALTER TABLE sdis.signalisation ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.signalisation.type IS 'Sens interdit, Travaux, Danger, Interdiction camions, Hauteur limitée, Largeur limitée, Poids limité, Tout droit, Déviation';
ALTER TABLE sdis.signalisation ADD COLUMN valeur   varchar(5);            COMMENT ON COLUMN sdis.signalisation.valeur IS 'Hauteur, largeur ou poids maximal';
ALTER TABLE sdis.signalisation ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'signalisation', 'geom', 21781, 'MultiLineString', 2); COMMENT ON COLUMN sdis.signalisation.geom IS 'Symbole orienté';
CREATE INDEX signalisation_geom_idx ON sdis.signalisation USING GIST (geom);



/* TABLE emplacements */

--DROP TABLE IF EXISTS sdis.emplacements CASCADE;
CREATE TABLE sdis.emplacements (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.emplacements IS 'Emplacements pour moyens d''intervention';

ALTER TABLE sdis.emplacements ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.emplacements.type IS 'Motopompe, Tonne pompe, Echelle';
ALTER TABLE sdis.emplacements ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'emplacements', 'geom', 21781, 'Point', 2);
CREATE INDEX emplacements_geom_idx ON sdis.emplacements USING GIST (geom);



/* TABLE detections */

--DROP TABLE IF EXISTS sdis.detections CASCADE;
CREATE TABLE sdis.detections (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.detections IS 'Alarmes avec télétransmission et dispositifs d''extinction';

ALTER TABLE sdis.detections ADD COLUMN numero       varchar(20) NOT NULL;
ALTER TABLE sdis.detections ADD COLUMN feu          bool;
ALTER TABLE sdis.detections ADD COLUMN gaz          bool;
ALTER TABLE sdis.detections ADD COLUMN sprinkler    bool;
ALTER TABLE sdis.detections ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.detections ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'detections', 'geom', 21781, 'Point', 2);
CREATE INDEX detections_geom_idx ON sdis.detections USING GIST (geom);



/* TABLE cles */

--DROP TABLE IF EXISTS sdis.cles CASCADE;
CREATE TABLE sdis.cles (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.cles IS 'Clés d''accès';

ALTER TABLE sdis.cles ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.cles.type IS 'Clé, Tube';
ALTER TABLE sdis.cles ADD COLUMN numero       varchar(20);
ALTER TABLE sdis.cles ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.cles ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'cles', 'geom', 21781, 'Point', 2);
CREATE INDEX cles_geom_idx ON sdis.cles USING GIST (geom);



/* TABLE codes */

--DROP TABLE IF EXISTS sdis.codes CASCADE;
CREATE TABLE sdis.codes (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.codes IS 'Digicodes';

ALTER TABLE sdis.codes ADD COLUMN code          varchar(255) NOT NULL;
ALTER TABLE sdis.codes ADD COLUMN localisation  varchar(255);
ALTER TABLE sdis.codes ADD COLUMN date_controle date;
ALTER TABLE sdis.codes ADD COLUMN remarque      varchar(255);

SELECT AddGeometryColumn('sdis', 'codes', 'geom', 21781, 'Point', 2);
CREATE INDEX codes_geom_idx ON sdis.codes USING GIST (geom);



/* TABLE situation */

--DROP TABLE IF EXISTS sdis.situation CASCADE;
CREATE TABLE sdis.situation (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.situation IS 'Eléments de situation';

ALTER TABLE sdis.situation ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.situation.type IS 'Ascenseur';
ALTER TABLE sdis.situation ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.situation ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'situation', 'geom', 21781, 'Point', 2);
CREATE INDEX situation_geom_idx ON sdis.situation USING GIST (geom);



/* TABLE dossiers_intervention */

--DROP TABLE IF EXISTS sdis.dossiers_intervention CASCADE;
CREATE TABLE sdis.dossiers_intervention (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.dossiers_intervention IS 'Dossiers d''intervention';

ALTER TABLE sdis.dossiers_intervention ADD COLUMN document     varchar(255) NOT NULL;
ALTER TABLE sdis.dossiers_intervention ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.dossiers_intervention ADD COLUMN statut       varchar(255);          COMMENT ON COLUMN sdis.dossiers_intervention.statut IS 'En vigueur, Provisoire, A modifier';
ALTER TABLE sdis.dossiers_intervention ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'dossiers_intervention', 'geom', 21781, 'Point', 2);
CREATE INDEX dossiers_intervention_geom_idx ON sdis.dossiers_intervention USING GIST (geom);



/* TABLE batiments */

--DROP TABLE IF EXISTS sdis.batiments CASCADE;
CREATE TABLE sdis.batiments (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.batiments IS 'Bâtiments avec objet SDIS';

ALTER TABLE sdis.batiments ADD COLUMN no_eca  varchar(20);
ALTER TABLE sdis.batiments ADD COLUMN commune varchar(255);

SELECT AddGeometryColumn('sdis', 'batiments', 'geom', 21781, 'MultiPolygon', 2);
CREATE INDEX batiments_geom_idx ON sdis.batiments USING GIST (geom);



/* TABLE bornes_hydrantes */

--DROP TABLE IF EXISTS sdis.bornes_hydrantes CASCADE;
CREATE TABLE sdis.bornes_hydrantes (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.bornes_hydrantes IS 'Bornes hydrantes';

ALTER TABLE sdis.bornes_hydrantes ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.bornes_hydrantes.type IS 'Hors-sol, Souterraine';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN numero   varchar(20);
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN sortie   varchar(255);          COMMENT ON COLUMN sdis.bornes_hydrantes.sortie IS '1x75, 2x55, 2x75, 2x55 + 1x75';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN pression float8;                COMMENT ON COLUMN sdis.bornes_hydrantes.pression IS '[bar]';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN debit    int4;                  COMMENT ON COLUMN sdis.bornes_hydrantes.debit IS '[l/min]';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'bornes_hydrantes', 'geom', 21781, 'Point', 2);
CREATE INDEX bornes_hydrantes_geom_idx ON sdis.bornes_hydrantes USING GIST (geom);



/* TABLE puits_reservoirs */

--DROP TABLE IF EXISTS sdis.puits_reservoirs CASCADE;
CREATE TABLE sdis.puits_reservoirs (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.puits_reservoirs IS 'Puits et réservoirs';

ALTER TABLE sdis.puits_reservoirs ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.puits_reservoirs.type IS 'Puit, Réservoir, Commande réservoir';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN capacite int4;                  COMMENT ON COLUMN sdis.puits_reservoirs.capacite IS '[m3]';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN reserve  int4;                  COMMENT ON COLUMN sdis.puits_reservoirs.reserve IS '[m3]';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'puits_reservoirs', 'geom', 21781, 'Point', 2);
CREATE INDEX puits_reservoirs_geom_idx ON sdis.puits_reservoirs USING GIST (geom);



/* TABLE tuyaux */

--DROP TABLE IF EXISTS sdis.tuyaux CASCADE;
CREATE TABLE sdis.tuyaux (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.tuyaux IS 'Emplacements pour tuyaux';

ALTER TABLE sdis.tuyaux ADD COLUMN diametre varchar(255); COMMENT ON COLUMN sdis.tuyaux.diametre IS '75 mm, 110 mm';
ALTER TABLE sdis.tuyaux ADD COLUMN longueur int4;         COMMENT ON COLUMN sdis.tuyaux.longueur IS '[m]';
ALTER TABLE sdis.tuyaux ADD COLUMN remarque varchar(255);

SELECT AddGeometryColumn('sdis', 'tuyaux', 'geom', 21781, 'MultiLineString', 2);
CREATE INDEX tuyaux_geom_idx ON sdis.tuyaux USING GIST (geom);



/* TABLE barrages */

--DROP TABLE IF EXISTS sdis.barrages CASCADE;
CREATE TABLE sdis.barrages (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.barrages IS 'Barrages anti pollution';

ALTER TABLE sdis.barrages ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.barrages.type IS 'Rivière, Lac';
ALTER TABLE sdis.barrages ADD COLUMN longueur     int4;                  COMMENT ON COLUMN sdis.barrages.longueur IS '[m]';
ALTER TABLE sdis.barrages ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.barrages ADD COLUMN remarque     varchar(255);

SELECT AddGeometryColumn('sdis', 'barrages', 'geom', 21781, 'MultiLineString', 2);
CREATE INDEX barrages_geom_idx ON sdis.barrages USING GIST (geom);



/* TABLE sites */

--DROP TABLE IF EXISTS sdis.sites CASCADE;
CREATE TABLE sdis.sites (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.sites IS 'Casernes et locaux';

ALTER TABLE sdis.sites ADD COLUMN type      varchar(255) NOT NULL; COMMENT ON COLUMN sdis.sites.type IS 'DPS, DAP';
ALTER TABLE sdis.sites ADD COLUMN categorie varchar(5);
ALTER TABLE sdis.sites ADD COLUMN nom       varchar(255);

SELECT AddGeometryColumn('sdis', 'sites', 'geom', 21781, 'Point', 2);
CREATE INDEX sites_geom_idx ON sdis.sites USING GIST (geom);



/* TABLE secteurs_intervention */

--DROP TABLE IF EXISTS sdis.secteurs_intervention CASCADE;
CREATE TABLE sdis.secteurs_intervention (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.secteurs_intervention IS 'Secteurs d''intervention';

ALTER TABLE sdis.secteurs_intervention ADD COLUMN type      varchar(255) NOT NULL; COMMENT ON COLUMN sdis.secteurs_intervention.type IS 'Feu, Désincarcération, DCH';
ALTER TABLE sdis.secteurs_intervention ADD COLUMN sous_type varchar(255);          COMMENT ON COLUMN sdis.secteurs_intervention.sous_type IS 'Feu primaire, Feu secondaire, Feu renfort';

SELECT AddGeometryColumn('sdis', 'secteurs_intervention', 'geom', 21781, 'MultiPolygon', 2);
CREATE INDEX secteurs_intervention_geom_idx ON sdis.secteurs_intervention USING GIST (geom);



/* TABLE secteurs_organisationnels */

--DROP TABLE IF EXISTS sdis.secteurs_organisationnels CASCADE;
CREATE TABLE sdis.secteurs_organisationnels (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.secteurs_organisationnels IS 'Secteurs organisationnels';

ALTER TABLE sdis.secteurs_organisationnels ADD COLUMN type varchar(255) NOT NULL;
ALTER TABLE sdis.secteurs_organisationnels ADD COLUMN nom  varchar(255);

SELECT AddGeometryColumn('sdis', 'secteurs_organisationnels', 'geom', 21781, 'MultiPolygon', 2);
CREATE INDEX secteurs_organisationnels_geom_idx ON sdis.secteurs_organisationnels USING GIST (geom);
