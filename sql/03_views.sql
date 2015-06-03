/* VIEW batiments */

-- DROP VIEW sdis.batiments;
CREATE VIEW sdis.batiments AS

    -- Bâtiments MO
    SELECT DISTINCT b.gid AS id, b.numero AS no_eca, b.commune AS commune, b.geom
    FROM mo.mo_baths b
    JOIN (
        SELECT geom FROM sdis.dangers               UNION
        SELECT geom FROM sdis.risques               UNION
        SELECT geom FROM sdis.detections            UNION
        SELECT geom FROM sdis.cles                  UNION
        SELECT geom FROM sdis.codes                 UNION
        SELECT geom FROM sdis.situation             UNION
        SELECT geom FROM sdis.dossiers_intervention
    ) j ON ST_Intersects(j.geom, b.geom)

    UNION

    -- Cadastre projeté
    SELECT DISTINCT b.fid + 100000 AS id, 'Projet' AS no_eca, b.commune AS commune, b.geom
    FROM cad.cad_va_bat_hs_comm b
    JOIN (
        SELECT geom FROM sdis.dangers               UNION
        SELECT geom FROM sdis.risques               UNION
        SELECT geom FROM sdis.detections            UNION
        SELECT geom FROM sdis.cles                  UNION
        SELECT geom FROM sdis.codes                 UNION
        SELECT geom FROM sdis.situation             UNION
        SELECT geom FROM sdis.dossiers_intervention
    ) j ON ST_Intersects(j.geom, b.geom)
    ;

COMMENT ON VIEW sdis.batiments IS 'Bâtiments avec objet SDIS';



/* VIEW personnel */

-- DROP VIEW sdis.personnel;
CREATE VIEW sdis.personnel AS

    SELECT p.id, p.grade, p.nom, p.prenom, p.rue || ' ' || p.numero AS adresse, p.commune, p.groupe, a.geom
    FROM sdis.personnel_liste p
    LEFT JOIN adr2.ad_va_entrees_batiment_all a ON UPPER(p.commune || ', ' || p.rue || ' ' || p.numero) = UPPER(a.cne_rue_no);

COMMENT ON VIEW sdis.personnel IS 'Personnel d''intervention';
