--
-- Note: Replace `sdis.sd_` by `sdis.` to be compatible with original data model
--



-- View: sdis.sd_vmf_dangers

-- DROP VIEW sdis.sd_vmf_dangers;
CREATE OR REPLACE VIEW sdis.sd_vmf_dangers AS

    SELECT
        a.id,
        a.type,
        a.localisation,
        a.photo,
        a.document,
        a.remarque,
        to_char(a.date_import, 'DD.MM.YYYY') AS date_import,
        a.geom
    FROM
        sdis.sd_dangers a;

COMMENT ON VIEW sdis.sd_vmf_dangers IS 'Sources de danger';



-- View: sdis.sd_vmf_risques

-- DROP VIEW sdis.sd_vmf_risques;
CREATE OR REPLACE VIEW sdis.sd_vmf_risques AS

    SELECT
        a.id,
        a.type,
        a.localisation,
        a.photo,
        a.document,
        a.remarque,
        to_char(a.date_import, 'DD.MM.YYYY') AS date_import,
        a.geom
    FROM
        sdis.sd_risques a;

COMMENT ON VIEW sdis.sd_vmf_risques IS 'Eléments à risque';



-- View: sdis.sd_vmf_acces

-- DROP VIEW sdis.sd_vmf_acces;
CREATE OR REPLACE VIEW sdis.sd_vmf_acces AS

    SELECT
        a.id,
        a.type,
        a.localisation,
        a.photo,
        a.remarque,
        a.geom
    FROM
        sdis.sd_acces a;

COMMENT ON VIEW sdis.sd_vmf_acces IS 'Accès et cheminements';



-- View: sdis.sd_vmf_signalisation

-- DROP VIEW sdis.sd_vmf_signalisation;
CREATE OR REPLACE VIEW sdis.sd_vmf_signalisation AS

    SELECT
        a.id,
        a.type,
        a.valeur,
        a.remarque,
        (360 - a.orientation) % 360 AS orientation,
        a.geom
    FROM
        sdis.sd_signalisation a;

COMMENT ON VIEW sdis.sd_vmf_signalisation IS 'Signalisation pour accès véhicules';



-- View: sdis.sd_vmf_emplacements

-- DROP VIEW sdis.sd_vmf_emplacements;
CREATE OR REPLACE VIEW sdis.sd_vmf_emplacements AS

    SELECT
        a.id,
        a.type,
        a.remarque,
        a.geom
    FROM
        sdis.sd_emplacements a;

COMMENT ON VIEW sdis.sd_vmf_emplacements IS 'Emplacements pour moyens d''intervention';



-- View: sdis.sd_vmf_detections

-- DROP VIEW sdis.sd_vmf_detections;
CREATE OR REPLACE VIEW sdis.sd_vmf_detections AS

    SELECT
        a.id,
        a.numero,
        CASE a.feu WHEN TRUE THEN 'Oui' ELSE NULL END AS feu,
        CASE a.gaz WHEN TRUE THEN 'Oui' ELSE NULL END AS gaz,
        CASE a.sprinkler WHEN TRUE THEN 'Oui' ELSE NULL END AS sprinkler,
        a.localisation,
        a.remarque,
        a.geom
    FROM
        sdis.sd_detections a;

COMMENT ON VIEW sdis.sd_vmf_detections IS 'Alarmes avec télétransmission et dispositifs d''extinction';



-- View: sdis.sd_vmf_cles

-- DROP VIEW sdis.sd_vmf_cles;
CREATE OR REPLACE VIEW sdis.sd_vmf_cles AS

    SELECT
        a.id,
        a.type,
        a.numero,
        a.localisation,
        a.remarque,
        to_char(a.date_controle, 'DD.MM.YYYY') AS date_controle,
        a.geom
    FROM
        sdis.sd_cles a
    WHERE
        a.inactif <> TRUE
     OR a.inactif IS NULL;

COMMENT ON VIEW sdis.sd_vmf_cles IS 'Clés d''accès';



-- View: sdis.sd_vmf_codes

-- DROP VIEW sdis.sd_vmf_codes;
CREATE OR REPLACE VIEW sdis.sd_vmf_codes AS

    SELECT
        a.id,
        a.code,
        a.localisation,
        to_char(a.date_controle, 'DD.MM.YYYY') AS date_controle,
        a.remarque,
        a.geom
    FROM
        sdis.sd_codes a;

COMMENT ON VIEW sdis.sd_vmf_codes IS 'Digicodes';



-- View: sdis.sd_vmf_situation

-- DROP VIEW sdis.sd_vmf_situation;
CREATE OR REPLACE VIEW sdis.sd_vmf_situation AS

    SELECT
        a.id,
        a.type,
        a.localisation,
        a.remarque,
        a.geom
    FROM
        sdis.sd_situation a;

COMMENT ON VIEW sdis.sd_vmf_situation IS 'Eléments de situation';



-- View: sdis.sd_vmf_dossiers_intervention

-- DROP VIEW sdis.sd_vmf_dossiers_intervention;
CREATE OR REPLACE VIEW sdis.sd_vmf_dossiers_intervention AS

    SELECT
        a.id,
        a.document,
        a.localisation,
        a.statut,
        a.remarque,
        a.geom
    FROM
        sdis.sd_dossiers_intervention a
    WHERE
        a.statut IN ('En vigueur', 'A modifier');

COMMENT ON VIEW sdis.sd_vmf_dossiers_intervention IS 'Dossiers d''intervention';



-- View: sdis.sd_vmf_batiments

-- DROP VIEW sdis.sd_vmf_batiments;
CREATE OR REPLACE VIEW sdis.sd_vmf_batiments AS

    SELECT
        a.id,
        a.no_eca,
        a.commune,
        a.geom
    FROM
        sdis.sd_batiments a;

COMMENT ON VIEW sdis.sd_vmf_batiments IS 'Bâtiments avec objet SDIS';



-- View: sdis.sd_vmf_bornes_hydrantes

-- DROP VIEW sdis.sd_vmf_bornes_hydrantes;
CREATE OR REPLACE VIEW sdis.sd_vmf_bornes_hydrantes AS

    SELECT
        a.id,
        a.type,
        a.numero,
        a.sortie,
        COALESCE(a.pression || ' [bar]', NULL) AS pression,
        COALESCE(a.debit || ' [l/min]', NULL) AS debit,
        a.remarque,
        a.geom
    FROM
        sdis.sd_bornes_hydrantes a;

COMMENT ON VIEW sdis.sd_vmf_bornes_hydrantes IS 'Bornes hydrantes';



-- View: sdis.sd_vmf_puits_reservoirs

-- DROP VIEW sdis.sd_vmf_puits_reservoirs;
CREATE OR REPLACE VIEW sdis.sd_vmf_puits_reservoirs AS

    SELECT
        a.id,
        a.type,
        COALESCE(a.capacite || ' [m3]', NULL) AS capacite,
        COALESCE(a.reserve || ' [m3]', NULL) AS reserve,
        a.remarque,
        a.geom
    FROM
        sdis.sd_puits_reservoirs a;

COMMENT ON VIEW sdis.sd_vmf_puits_reservoirs IS 'Puits et réservoirs';



-- View: sdis.sd_vmf_tuyaux

-- DROP VIEW sdis.sd_vmf_tuyaux;
CREATE OR REPLACE VIEW sdis.sd_vmf_tuyaux AS

    SELECT
        a.id,
        a.diametre,
        COALESCE(a.longueur || ' [m]', NULL) AS longueur,
        a.remarque,
        a.geom
    FROM
        sdis.sd_tuyaux a;

COMMENT ON VIEW sdis.sd_vmf_tuyaux IS 'Emplacements pour tuyaux';



-- View: sdis.sd_vmf_barrages

-- DROP VIEW sdis.sd_vmf_barrages;
CREATE OR REPLACE VIEW sdis.sd_vmf_barrages AS

    SELECT
        a.id,
        COALESCE(a.longueur || ' [m]', NULL) AS longueur,
        a.localisation,
        a.remarque,
        a.geom
    FROM
        sdis.sd_barrages a;

COMMENT ON VIEW sdis.sd_vmf_barrages IS 'Barrages anti pollution';



-- View: sdis.sd_vmf_sites

-- DROP VIEW sdis.sd_vmf_sites;
CREATE OR REPLACE VIEW sdis.sd_vmf_sites AS

    SELECT
        a.id,
        a.type,
        a.categorie,
        a.nom,
        a.geom
    FROM
        sdis.sd_sites a;

COMMENT ON VIEW sdis.sd_vmf_sites IS 'Casernes et locaux';



-- View: sdis.sd_vmf_personnel

-- DROP VIEW sdis.sd_vmf_personnel;
CREATE OR REPLACE VIEW sdis.sd_vmf_personnel AS

    SELECT
        a.id,
        a.grade,
        a.nom,
        a.prenom,
        a.adresse,
        a.commune,
        a.groupe,
        a.geom
    FROM
        sdis.sd_personnel a;

COMMENT ON VIEW sdis.sd_vmf_personnel IS 'Personnel d''intervention';



-- View: sdis.sd_vmf_secteurs_intervention

-- DROP VIEW sdis.sd_vmf_secteurs_intervention;
CREATE OR REPLACE VIEW sdis.sd_vmf_secteurs_intervention AS

    SELECT
        a.id,
        a.type,
        a.sous_type,
        a.geom
    FROM
        sdis.sd_secteurs_intervention a
    ORDER BY
        a.type DESC; -- For symbology purpose

COMMENT ON VIEW sdis.sd_vmf_secteurs_intervention IS 'Secteurs d''intervention';



-- View: sdis.sd_vmf_secteurs_organisationnels

-- DROP VIEW sdis.sd_vmf_secteurs_organisationnels;
CREATE OR REPLACE VIEW sdis.sd_vmf_secteurs_organisationnels AS

    SELECT
        a.id,
        a.type,
        a.nom,
        a.geom
    FROM
        sdis.sd_secteurs_organisationnels a;

COMMENT ON VIEW sdis.sd_vmf_secteurs_organisationnels IS 'Secteurs organisationnels';
