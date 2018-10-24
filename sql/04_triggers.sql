-- Function: sdis.fn_get_path_absolu_photo()

-- DROP FUNCTION sdis.fn_get_path_absolu_photo();
CREATE OR REPLACE FUNCTION sdis.fn_get_path_absolu_photo()
 RETURNS trigger AS
$BODY$BEGIN

    SELECT INTO new.photo
    CASE
        WHEN new.photo IS NOT NULL THEN replace(new.photo, 'T:', '\\orcus\SDIS') -- Spécifique Nyon
        ELSE NULL
    END;

    RETURN new;

END;$BODY$
 LANGUAGE plpgsql VOLATILE
 COST 100;



-- Function: sdis.fn_get_path_absolu_document()

-- DROP FUNCTION sdis.fn_get_path_absolu_document();
CREATE OR REPLACE FUNCTION sdis.fn_get_path_absolu_document()
 RETURNS trigger AS
$BODY$BEGIN

    SELECT INTO new.document
    CASE
        WHEN new.document IS NOT NULL THEN replace(new.document, 'T:', '\\orcus\SDIS') -- Spécifique Nyon
        ELSE NULL
    END;

    RETURN new;

END;$BODY$
 LANGUAGE plpgsql VOLATILE
 COST 100;



-- Trigger: tr_dangers_get_path_absolu_photo on sdis.dangers

-- DROP TRIGGER tr_dangers_get_path_absolu_photo ON sdis.dangers;
CREATE TRIGGER tr_dangers_get_path_absolu_photo
    BEFORE INSERT OR UPDATE OF photo
    ON sdis.dangers
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_photo();
COMMENT ON TRIGGER tr_dangers_get_path_absolu_photo ON sdis.dangers IS 'Exécute fn_get_path_absolu_photo()';



-- Trigger: tr_dangers_get_path_absolu_document on sdis.dangers

-- DROP TRIGGER tr_dangers_get_path_absolu_document ON sdis.dangers;
CREATE TRIGGER tr_dangers_get_path_absolu_document
    BEFORE INSERT OR UPDATE OF document
    ON sdis.dangers
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_document();
COMMENT ON TRIGGER tr_dangers_get_path_absolu_document ON sdis.dangers IS 'Exécute fn_get_path_absolu_document()';



-- Trigger: tr_risques_get_path_absolu_photo on sdis.risques

-- DROP TRIGGER tr_risques_get_path_absolu_photo ON sdis.risques;
CREATE TRIGGER tr_risques_get_path_absolu_photo
    BEFORE INSERT OR UPDATE OF photo
    ON sdis.risques
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_photo();
COMMENT ON TRIGGER tr_risques_get_path_absolu_photo ON sdis.risques IS 'Exécute fn_get_path_absolu_photo()';



-- Trigger: tr_risques_get_path_absolu_document on sdis.risques

-- DROP TRIGGER tr_risques_get_path_absolu_document ON sdis.risques;
CREATE TRIGGER tr_risques_get_path_absolu_document
    BEFORE INSERT OR UPDATE OF document
    ON sdis.risques
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_document();
COMMENT ON TRIGGER tr_risques_get_path_absolu_document ON sdis.risques IS 'Exécute fn_get_path_absolu_document()';



-- Trigger: tr_acces_get_path_absolu_photo on sdis.acces

-- DROP TRIGGER tr_acces_get_path_absolu_photo ON sdis.acces;
CREATE TRIGGER tr_acces_get_path_absolu_photo
    BEFORE INSERT OR UPDATE OF photo
    ON sdis.acces
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_photo();
COMMENT ON TRIGGER tr_acces_get_path_absolu_photo ON sdis.acces IS 'Exécute fn_get_path_absolu_photo()';



-- Trigger: tr_dossiers_intervention_get_path_absolu_document on sdis.dossiers_intervention

-- DROP TRIGGER tr_dossiers_intervention_get_path_absolu_document ON sdis.dossiers_intervention;
CREATE TRIGGER tr_dossiers_intervention_get_path_absolu_document
    BEFORE INSERT OR UPDATE OF document
    ON sdis.dossiers_intervention
    FOR EACH ROW
    EXECUTE PROCEDURE sdis.fn_get_path_absolu_document();
COMMENT ON TRIGGER tr_dossiers_intervention_get_path_absolu_document ON sdis.dossiers_intervention IS 'Exécute fn_get_path_absolu_document()';
