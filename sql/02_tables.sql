-- Table: sdis.dangers

-- DROP TABLE IF EXISTS sdis.dangers CASCADE;
CREATE TABLE sdis.dangers (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.dangers IS 'Sources de danger';

ALTER TABLE sdis.dangers ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.dangers.type IS 'Feu, Gaz, Electrique, Toxique, Radioactif, Infectieux, Pollution, Autre';
ALTER TABLE sdis.dangers ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN document     varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.dangers ADD COLUMN date_import  date;
ALTER TABLE sdis.dangers ADD COLUMN geom         geometry(Point, 21781);

CREATE INDEX dangers_geom_idx ON sdis.dangers USING GIST (geom);



-- Table: sdis.risques

-- DROP TABLE IF EXISTS sdis.risques CASCADE;
CREATE TABLE sdis.risques (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.risques IS 'Eléments à risque';

ALTER TABLE sdis.risques ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.risques.type IS 'EMS, Hôpital, Ecole, Parking souterrain, Bien culturel, Pisciculture, Bâtiment isolé, Autre';
ALTER TABLE sdis.risques ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.risques ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.risques ADD COLUMN document     varchar(255);
ALTER TABLE sdis.risques ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.risques ADD COLUMN date_import  date;
ALTER TABLE sdis.risques ADD COLUMN geom         geometry(Point, 21781);

CREATE INDEX risques_geom_idx ON sdis.risques USING GIST (geom);



-- Table: sdis.acces

-- DROP TABLE IF EXISTS sdis.acces CASCADE;
CREATE TABLE sdis.acces (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.acces IS 'Accès et cheminements';

ALTER TABLE sdis.acces ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.acces.type IS 'Véhicule, Reconnaissance, Echelle, Entrée, Motopompe, Barrage, Restriction circulation';
ALTER TABLE sdis.acces ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.acces ADD COLUMN photo        varchar(255);
ALTER TABLE sdis.acces ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.acces ADD COLUMN geom         geometry(MultiLineString, 21781);

CREATE INDEX acces_geom_idx ON sdis.acces USING GIST (geom);



-- Table: sdis.signalisation

-- DROP TABLE IF EXISTS sdis.signalisation CASCADE;
CREATE TABLE sdis.signalisation (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.signalisation IS 'Signalisation pour accès véhicules';

ALTER TABLE sdis.signalisation ADD COLUMN type        varchar(255) NOT NULL; COMMENT ON COLUMN sdis.signalisation.type IS 'Sens interdit, Travaux, Danger, Interdiction camions, Hauteur limitée, Largeur limitée, Poids limité, Tout droit, Déviation';
ALTER TABLE sdis.signalisation ADD COLUMN valeur      varchar(5);            COMMENT ON COLUMN sdis.signalisation.valeur IS 'Hauteur, largeur ou poids maximal';
ALTER TABLE sdis.signalisation ADD COLUMN remarque    varchar(255);
ALTER TABLE sdis.signalisation ADD COLUMN orientation int4;                  COMMENT ON COLUMN sdis.signalisation.orientation IS '[°]';
ALTER TABLE sdis.signalisation ADD COLUMN geom        geometry(Point, 21781);

CREATE INDEX signalisation_geom_idx ON sdis.signalisation USING GIST (geom);



-- Table: sdis.emplacements

-- DROP TABLE IF EXISTS sdis.emplacements CASCADE;
CREATE TABLE sdis.emplacements (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.emplacements IS 'Emplacements pour moyens d''intervention';

ALTER TABLE sdis.emplacements ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.emplacements.type IS 'Motopompe, Tonne pompe, Echelle';
ALTER TABLE sdis.emplacements ADD COLUMN remarque varchar(255);
ALTER TABLE sdis.emplacements ADD COLUMN geom     geometry(Point, 21781);

CREATE INDEX emplacements_geom_idx ON sdis.emplacements USING GIST (geom);



-- Table: sdis.detections

-- DROP TABLE IF EXISTS sdis.detections CASCADE;
CREATE TABLE sdis.detections (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.detections IS 'Alarmes avec télétransmission et dispositifs d''extinction';

ALTER TABLE sdis.detections ADD COLUMN numero       varchar(20) NOT NULL;
ALTER TABLE sdis.detections ADD COLUMN feu          bool;
ALTER TABLE sdis.detections ADD COLUMN gaz          bool;
ALTER TABLE sdis.detections ADD COLUMN sprinkler    bool;
ALTER TABLE sdis.detections ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.detections ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.detections ADD COLUMN geom         geometry(Point, 21781);

CREATE INDEX detections_geom_idx ON sdis.detections USING GIST (geom);



-- Table: sdis.cles

-- DROP TABLE IF EXISTS sdis.cles CASCADE;
CREATE TABLE sdis.cles (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.cles IS 'Clés d''accès';

ALTER TABLE sdis.cles ADD COLUMN type          varchar(255) NOT NULL; COMMENT ON COLUMN sdis.cles.type IS 'Clé, Tube';
ALTER TABLE sdis.cles ADD COLUMN numero        varchar(20);
ALTER TABLE sdis.cles ADD COLUMN localisation  varchar(255);
ALTER TABLE sdis.cles ADD COLUMN remarque      varchar(255);
ALTER TABLE sdis.cles ADD COLUMN date_controle date;
ALTER TABLE sdis.cles ADD COLUMN inactif       bool;
ALTER TABLE sdis.cles ADD COLUMN geom          geometry(Point, 21781);

CREATE INDEX cles_geom_idx ON sdis.cles USING GIST (geom);



-- Table: sdis.codes

-- DROP TABLE IF EXISTS sdis.codes CASCADE;
CREATE TABLE sdis.codes (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.codes IS 'Digicodes';

ALTER TABLE sdis.codes ADD COLUMN code          varchar(255) NOT NULL;
ALTER TABLE sdis.codes ADD COLUMN localisation  varchar(255);
ALTER TABLE sdis.codes ADD COLUMN date_controle date;
ALTER TABLE sdis.codes ADD COLUMN remarque      varchar(255);
ALTER TABLE sdis.codes ADD COLUMN geom          geometry(Point, 21781);

CREATE INDEX codes_geom_idx ON sdis.codes USING GIST (geom);



-- Table: sdis.situation

-- DROP TABLE IF EXISTS sdis.situation CASCADE;
CREATE TABLE sdis.situation (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.situation IS 'Eléments de situation';

ALTER TABLE sdis.situation ADD COLUMN type         varchar(255) NOT NULL; COMMENT ON COLUMN sdis.situation.type IS 'Ascenseur';
ALTER TABLE sdis.situation ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.situation ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.situation ADD COLUMN geom         geometry(Point, 21781);

CREATE INDEX situation_geom_idx ON sdis.situation USING GIST (geom);



-- Table: sdis.dossiers_intervention

-- DROP TABLE IF EXISTS sdis.dossiers_intervention CASCADE;
CREATE TABLE sdis.dossiers_intervention (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.dossiers_intervention IS 'Dossiers d''intervention';

ALTER TABLE sdis.dossiers_intervention ADD COLUMN document     varchar(255) NOT NULL;
ALTER TABLE sdis.dossiers_intervention ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.dossiers_intervention ADD COLUMN statut       varchar(255);          COMMENT ON COLUMN sdis.dossiers_intervention.statut IS 'En vigueur, Provisoire, A modifier';
ALTER TABLE sdis.dossiers_intervention ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.dossiers_intervention ADD COLUMN geom         geometry(Point, 21781);

CREATE INDEX dossiers_intervention_geom_idx ON sdis.dossiers_intervention USING GIST (geom);



-- Table: sdis.bornes_hydrantes

-- DROP TABLE IF EXISTS sdis.bornes_hydrantes CASCADE;
CREATE TABLE sdis.bornes_hydrantes (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.bornes_hydrantes IS 'Bornes hydrantes';

ALTER TABLE sdis.bornes_hydrantes ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.bornes_hydrantes.type IS 'Hors-sol, Souterraine';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN numero   varchar(20);
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN sortie   varchar(255);          COMMENT ON COLUMN sdis.bornes_hydrantes.sortie IS '1x75, 2x55, 2x75, 2x55 + 1x75';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN pression float8;                COMMENT ON COLUMN sdis.bornes_hydrantes.pression IS '[bar]';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN debit    int4;                  COMMENT ON COLUMN sdis.bornes_hydrantes.debit IS '[l/min]';
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN remarque varchar(255);
ALTER TABLE sdis.bornes_hydrantes ADD COLUMN geom     geometry(Point, 21781);

CREATE INDEX bornes_hydrantes_geom_idx ON sdis.bornes_hydrantes USING GIST (geom);



-- Table: sdis.puits_reservoirs

-- DROP TABLE IF EXISTS sdis.puits_reservoirs CASCADE;
CREATE TABLE sdis.puits_reservoirs (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.puits_reservoirs IS 'Puits et réservoirs';

ALTER TABLE sdis.puits_reservoirs ADD COLUMN type     varchar(255) NOT NULL; COMMENT ON COLUMN sdis.puits_reservoirs.type IS 'Puit, Réservoir, Commande réservoir';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN capacite int4;                  COMMENT ON COLUMN sdis.puits_reservoirs.capacite IS '[m3]';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN reserve  int4;                  COMMENT ON COLUMN sdis.puits_reservoirs.reserve IS '[m3]';
ALTER TABLE sdis.puits_reservoirs ADD COLUMN remarque varchar(255);
ALTER TABLE sdis.puits_reservoirs ADD COLUMN geom     geometry(Point, 21781);

CREATE INDEX puits_reservoirs_geom_idx ON sdis.puits_reservoirs USING GIST (geom);



-- Table: sdis.tuyaux

-- DROP TABLE IF EXISTS sdis.tuyaux CASCADE;
CREATE TABLE sdis.tuyaux (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.tuyaux IS 'Emplacements pour tuyaux';

ALTER TABLE sdis.tuyaux ADD COLUMN diametre varchar(255); COMMENT ON COLUMN sdis.tuyaux.diametre IS '75 mm, 110 mm';
ALTER TABLE sdis.tuyaux ADD COLUMN longueur int4;         COMMENT ON COLUMN sdis.tuyaux.longueur IS '[m]';
ALTER TABLE sdis.tuyaux ADD COLUMN remarque varchar(255);
ALTER TABLE sdis.tuyaux ADD COLUMN geom     geometry(MultiLineString, 21781);

CREATE INDEX tuyaux_geom_idx ON sdis.tuyaux USING GIST (geom);



-- Table: sdis.barrages

-- DROP TABLE IF EXISTS sdis.barrages CASCADE;
CREATE TABLE sdis.barrages (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.barrages IS 'Barrages anti pollution';

ALTER TABLE sdis.barrages ADD COLUMN longueur     int4;         COMMENT ON COLUMN sdis.barrages.longueur IS '[m]';
ALTER TABLE sdis.barrages ADD COLUMN localisation varchar(255);
ALTER TABLE sdis.barrages ADD COLUMN remarque     varchar(255);
ALTER TABLE sdis.barrages ADD COLUMN geom         geometry(MultiLineString, 21781);

CREATE INDEX barrages_geom_idx ON sdis.barrages USING GIST (geom);



-- Table: sdis.sites

-- DROP TABLE IF EXISTS sdis.sites CASCADE;
CREATE TABLE sdis.sites (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.sites IS 'Casernes et locaux';

ALTER TABLE sdis.sites ADD COLUMN type      varchar(255) NOT NULL; COMMENT ON COLUMN sdis.sites.type IS 'DPS, DAP';
ALTER TABLE sdis.sites ADD COLUMN categorie varchar(5);
ALTER TABLE sdis.sites ADD COLUMN nom       varchar(255) NOT NULL;
ALTER TABLE sdis.sites ADD COLUMN geom      geometry(Point, 21781);

CREATE INDEX sites_geom_idx ON sdis.sites USING GIST (geom);



-- Table: sdis.secteurs_intervention

-- DROP TABLE IF EXISTS sdis.secteurs_intervention CASCADE;
CREATE TABLE sdis.secteurs_intervention (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.secteurs_intervention IS 'Secteurs d''intervention';

ALTER TABLE sdis.secteurs_intervention ADD COLUMN type      varchar(255) NOT NULL; COMMENT ON COLUMN sdis.secteurs_intervention.type IS 'Feu, Désincarcération, DCH';
ALTER TABLE sdis.secteurs_intervention ADD COLUMN sous_type varchar(255);          COMMENT ON COLUMN sdis.secteurs_intervention.sous_type IS 'Feu primaire, Feu secondaire, Feu renfort';
ALTER TABLE sdis.secteurs_intervention ADD COLUMN geom      geometry(MultiPolygon, 21781);

CREATE INDEX secteurs_intervention_geom_idx ON sdis.secteurs_intervention USING GIST (geom);



-- Table: sdis.secteurs_organisationnels

-- DROP TABLE IF EXISTS sdis.secteurs_organisationnels CASCADE;
CREATE TABLE sdis.secteurs_organisationnels (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.secteurs_organisationnels IS 'Secteurs organisationnels';

ALTER TABLE sdis.secteurs_organisationnels ADD COLUMN type varchar(255) NOT NULL;
ALTER TABLE sdis.secteurs_organisationnels ADD COLUMN nom  varchar(255);
ALTER TABLE sdis.secteurs_organisationnels ADD COLUMN geom geometry(MultiPolygon, 21781);

CREATE INDEX secteurs_organisationnels_geom_idx ON sdis.secteurs_organisationnels USING GIST (geom);



-- Table: sdis.personnel_liste

-- DROP TABLE IF EXISTS sdis.personnel_liste CASCADE;
CREATE TABLE sdis.personnel_liste (id serial PRIMARY KEY);
COMMENT ON TABLE sdis.personnel_liste IS 'Personnel d''intervention (liste)';

ALTER TABLE sdis.personnel_liste ADD COLUMN grade   varchar(20)  NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN nom     varchar(255) NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN prenom  varchar(255) NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN rue     varchar(255) NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN numero  varchar(20)  NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN commune varchar(255) NOT NULL;
ALTER TABLE sdis.personnel_liste ADD COLUMN groupe  varchar(20);
