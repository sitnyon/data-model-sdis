--
-- Name: pom_vgeo_edit_acces; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_acces AS
 SELECT a.id,
    s.name AS type,
    t.name AS gestionnaire,
    a.localisation,
    a.adresse,
        CASE
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (((((((('<a href="../../files/private/pompiers/acces/gland_serine/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/acces/gland_serine/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (((((((('<a href="../../files/private/pompiers/acces/nyon_dole/acces_'::text || (a.id)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/acces/nyon_dole/acces_'::text) || (a.id)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.id)::text) || '.jpg" title="'::text) || (a.id)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (((((((('<a href="../../files/private/pompiers/acces/terre_sainte/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/acces/terre_sainte/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            ELSE NULL::text
        END AS photo,
    a.remarque,
    a.geom
   FROM ((pompiers.pom_edit_acces a
     LEFT JOIN pompiers.pom_tbl_liste_acces s ON ((s.id = a.fk_type_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_acces OWNER TO "<user>";

--
-- Name: pom_vgeo_acces; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_acces AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.localisation,
    a.adresse,
    a.photo,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_acces a;


ALTER TABLE pompiers.pom_vgeo_acces OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_barrages; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_barrages AS
 SELECT a.id,
    t.name AS gestionnaire,
    COALESCE((a.longueur || ' [m]'::text), NULL::text) AS longueur,
    a.localisation,
    a.adresse,
    a.remarque,
    a.geom
   FROM (pompiers.pom_edit_barrages a
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_barrages OWNER TO "<user>";

--
-- Name: pom_vgeo_barrages; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_barrages AS
 SELECT row_number() OVER (ORDER BY a.longueur) AS id,
    a.longueur,
    a.localisation,
    a.adresse,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_barrages a;


ALTER TABLE pompiers.pom_vgeo_barrages OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_cles; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_cles AS
 SELECT a.id,
    s.name AS type,
    t.name AS gestionnaire,
    a.numero,
    a.localisation,
    a.adresse,
    a.commune,
    a.remarque,
    to_char((a.date_controle)::timestamp with time zone, 'DD.MM.YYYY'::text) AS date_controle,
        CASE
            WHEN (a.inactif = true) THEN 'Oui'::character varying(5)
            WHEN (a.inactif = false) THEN 'Non'::character varying(5)
            ELSE NULL::character varying
        END AS inactif,
        CASE
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (((((((('<a href="../../files/private/pompiers/cles/gland_serine/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/cles/gland_serine/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (((((((('<a href="../../files/private/pompiers/cles/nyon_dole/cle_'::text || (a.id)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/cles/nyon_dole/cle_'::text) || (a.id)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.id)::text) || '.jpg" title="'::text) || (a.id)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (((((((('<a href="../../files/private/pompiers/cles/terre_sainte/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/cles/terre_sainte/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            ELSE NULL::text
        END AS photo,
        CASE
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (('<a href="../../files/private/pompiers/cles/gland_serine/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (('<a href="../../files/private/pompiers/cles/nyon_dole/cle_'::text || (a.id)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (('<a href="../../files/private/pompiers/cles/terre_sainte/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            ELSE NULL::text
        END AS document,
        CASE
            WHEN (a.date_controle < (now() - '3 years'::interval)) THEN 'A contrôler'::character varying(50)
            WHEN (a.date_controle >= (now() - '3 years'::interval)) THEN 'Contrôlée'::character varying(50)
            ELSE 'Non contrôlée'::character varying(50)
        END AS statut,
        CASE
            WHEN (a.defectuosite = true) THEN 'Oui'::character varying(5)
            ELSE 'Non'::character varying(5)
        END AS defectuosite,
    a.defaut_constate,
    a.geom
   FROM ((pompiers.pom_edit_cles a
     LEFT JOIN pompiers.pom_tbl_liste_type_cles s ON ((s.id = a.fk_type_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_cles OWNER TO "<user>";

--
-- Name: pom_vgeo_cles_sdis; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_cles_sdis AS
 SELECT g.id,
    g.type,
    g.numero,
    g.localisation,
    g.commune,
    g.adresse,
    g.remarque,
    g.date_controle,
    g.inactif,
    g.photo,
    g.document,
    g.geom
   FROM pompiers.pom_vgeo_edit_cles g
  WHERE g.inactif::text <> 'Oui'::text OR g.inactif IS NULL;


ALTER TABLE pompiers.pom_vgeo_cles_sdis OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_dossiers_intervention; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_dossiers_intervention AS
 SELECT a.id,
    s.name AS statut,
    t.name AS gestionnaire,
    a.localisation,
    a.affichage_localisation,
    a.adresse,
    a.commune,
    a.remarque,
        CASE
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (('<a href="../../files/private/pompiers/dossiers_intervention/gland_serine/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (('<a href="../../files/private/pompiers/dossiers_intervention/nyon_dole/PI_'::text || (a.id)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (('<a href="../../files/private/pompiers/dossiers_intervention/terre_sainte/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
            ELSE NULL::text
        END AS document,
    a.geom
   FROM ((pompiers.pom_edit_dossiers_intervention a
     LEFT JOIN pompiers.pom_tbl_liste_statut_dossiers s ON ((s.id = a.fk_statut_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_dossiers_intervention OWNER TO "<user>";

--
-- Name: pom_vgeo_dossiers_intervention_sdis; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_dossiers_intervention_sdis AS
 SELECT g.id,
    g.statut,
    g.document,
    g.remarque,
    g.localisation,
    g.affichage_localisation,
    g.adresse,
    g.commune,
    g.geom
   FROM pompiers.pom_vgeo_edit_dossiers_intervention g;


ALTER TABLE pompiers.pom_vgeo_dossiers_intervention_sdis OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_dangers; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_dangers AS
 SELECT (row_number() OVER (ORDER BY foo.type))::integer AS id,
    foo.type,
    foo.gestionnaire,
    foo.localisation,
    foo.adresse,
    foo.document,
    foo.photo,
    foo.remarque,
    foo.source,
    foo.editable,
    foo.geom
   FROM ( SELECT s.name AS type,
            t.name AS gestionnaire,
            a.localisation,
            a.adresse,
                CASE
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (((((((('<a href="../../files/private/pompiers/dangers/gland_serine/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/dangers/gland_serine/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (((((((('<a href="../../files/private/pompiers/dangers/nyon_dole/danger_'::text || (a.id)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/dangers/nyon_dole/danger_'::text) || (a.id)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.id)::text) || '.jpg" title="'::text) || (a.id)::text) || '.jpg" /></a>'::text)
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (((((((('<a href="../../files/private/pompiers/dangers/terre_sainte/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/dangers/terre_sainte/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
                    ELSE NULL::text
                END AS photo,
                CASE
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (('<a href="../../files/private/pompiers/dangers/gland_serine/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (('<a href="../../files/private/pompiers/dangers/nyon_dole/danger_'::text || (a.id)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (('<a href="../../files/private/pompiers/dangers/terre_sainte/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    ELSE NULL::text
                END AS document,
            a.remarque_label AS remarque,
            'Cartolacôte'::character varying AS source,
            'Oui'::character varying AS editable,
            a.geom
           FROM ((pompiers.pom_edit_dangers a
             LEFT JOIN pompiers.pom_tbl_liste_dangers s ON ((s.id = a.fk_type_id)))
             LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)))
        UNION
         SELECT 'Electrique'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
                CASE
                    WHEN ((p.surface IS NOT NULL) AND (p.pv_puissance IS NOT NULL)) THEN concat('Panneaux PV (', p.surface, ' / ', p.pv_puissance, ')')
                    WHEN (p.surface IS NOT NULL) THEN concat('Panneaux PV', ' (', p.surface, ')')
                    WHEN (p.pv_puissance IS NOT NULL) THEN concat('Panneaux PV', ' (', p.pv_puissance, ')')
                    ELSE 'Panneaux PV'::text
                END AS remarque,
            'Thème énergie'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM energie.ene_panneaux_solaires p
          WHERE (((p.type_cs)::text = 'photovoltaïque'::text) AND (((p.statut)::text <> 'hors service'::text) OR (p.statut IS NULL)))
        UNION
         SELECT 'Autre'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
                CASE
                    WHEN (p.surface IS NOT NULL) THEN concat('Panneaux TH (', p.surface, ')')
                    ELSE 'Panneaux TH'::text
                END AS remarque,
            'Thème énergie'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM energie.ene_panneaux_solaires p
          WHERE (((p.type_cs)::text = 'thermique'::text) AND (((p.statut)::text <> 'hors service'::text) OR (p.statut IS NULL)))
        UNION
         SELECT 'Electrique'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
                CASE
                    WHEN (p.reseau IS NOT NULL) THEN concat('Station transformatrice (', p.reseau, ')')
                    ELSE 'Station transformatrice'::text
                END AS remarque,
            'Thème éléctricité'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM electricite.ele_po_stations p
          WHERE ((p.gestionnaire)::text = 'SI Nyon'::text)) foo;


ALTER TABLE pompiers.pom_vgeo_edit_dangers OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_risques; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_risques AS
 SELECT (row_number() OVER (ORDER BY foo.type))::integer AS id,
    foo.type,
    foo.gestionnaire,
    foo.localisation,
    foo.adresse,
    foo.document,
    foo.photo,
    foo.remarque,
    foo.source,
    foo.editable,
    foo.geom
   FROM ( SELECT s.name AS type,
            t.name AS gestionnaire,
            a.localisation,
            a.adresse,
                CASE
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (((((((('<a href="../../files/private/pompiers/risques/gland_serine/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/risques/gland_serine/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (((((((('<a href="../../files/private/pompiers/risques/nyon_dole/risque_'::text || (a.id)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/risques/nyon_dole/risque_'::text) || (a.id)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.id)::text) || '.jpg" title="'::text) || (a.id)::text) || '.jpg" /></a>'::text)
                    WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (((((((('<a href="../../files/private/pompiers/risques/terre_sainte/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/risques/terre_sainte/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
                    ELSE NULL::text
                END AS photo,
                CASE
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (('<a href="../../files/private/pompiers/risques/gland_serine/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (('<a href="../../files/private/pompiers/risques/nyon_dole/risque_'::text || (a.id)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    WHEN (((a.document)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (('<a href="../../files/private/pompiers/risques/terre_sainte/'::text || (a.document)::text) || '.pdf" target="_blank">Cliquer ici</a>'::text)
                    ELSE NULL::text
                END AS document,
            a.remarque_label AS remarque,
            'Cartolacôte'::character varying AS source,
            'Oui'::character varying AS editable,
            a.geom
           FROM ((pompiers.pom_edit_risques a
             LEFT JOIN pompiers.pom_tbl_liste_risques s ON ((s.id = a.fk_type_id)))
             LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)))
        UNION
         SELECT 'EMS'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
            p.nom AS remarque,
            'Thème points d''intérêt'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM points_interet.poi_vgeo_edit_poi_sante p
          WHERE ((p.poi_sscat)::text = 'Etablissement médico-social'::text)
        UNION
         SELECT 'Hôpital'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
            p.nom,
            'Thème points d''intérêt'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM points_interet.poi_vgeo_edit_poi_sante p
          WHERE (((p.poi_sscat)::text = 'Hôpital'::text) OR ((p.poi_sscat)::text = 'Clinique'::text))
        UNION
         SELECT 'Ecole'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
            p.nom,
            'Thème points d''intérêt'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM points_interet.poi_vgeo_edit_poi_ecole p
          WHERE ((p.categorie)::text ~~ 'Ecole%'::text)
        UNION
         SELECT 'Ecole'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
            p.nom,
            'Thème points d''intérêt'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM points_interet.poi_vgeo_edit_poi_enfance p
          WHERE ((p.categorie)::text = 'Accueil'::text)
        UNION
         SELECT 'Bien culturel'::character varying AS type,
            ''::character varying AS gestionnaire,
            ''::character varying AS localisation,
            ''::character varying AS adresse,
            ''::character varying AS document,
            ''::character varying AS photo,
            p.nom,
            'Thème points d''intérêt'::character varying AS source,
            'Non'::character varying AS editable,
            p.geom
           FROM points_interet.poi_vgeo_edit_poi_culture p
          WHERE ((p.categorie)::text = 'Site historique, monument, musée'::text)) foo;


ALTER TABLE pompiers.pom_vgeo_edit_risques OWNER TO "<user>";

--
-- Name: pom_vgeo_batiments; Type: MATERIALIZED VIEW; Schema: pompiers; Owner: <user>
--

CREATE MATERIALIZED VIEW pompiers.pom_vgeo_batiments AS
 SELECT (row_number() OVER (ORDER BY q.id))::integer AS id,
    q.no_eca,
    q.commune,
    q.geom
   FROM ( SELECT DISTINCT b.id,
            b.num_eca AS no_eca,
            b.commune,
            b.geom
           FROM (mensuration_officielle.mo_baths b
             JOIN ( SELECT a.geom
                   FROM pompiers.pom_vgeo_cles_sdis a
                UNION
                 SELECT b_1.geom
                   FROM pompiers.pom_vgeo_edit_dangers b_1
                UNION
                 SELECT c.geom
                   FROM pompiers.pom_edit_detections c
                UNION
                 SELECT d.geom
                   FROM pompiers.pom_vgeo_dossiers_intervention_sdis d
                UNION
                 SELECT e.geom
                   FROM pompiers.pom_edit_emplacements e
                UNION
                 SELECT f.geom
                   FROM pompiers.pom_edit_reserves_eau f
                UNION
                 SELECT g.geom
                   FROM pompiers.pom_vgeo_edit_risques g
                UNION
                 SELECT h.geom
                   FROM pompiers.pom_edit_situation h) j ON (public.st_intersects(j.geom, b.geom)))
        UNION
         SELECT DISTINCT b.id,
            'Projet'::text AS no_eca,
            ''::text AS commune,
            (public.st_multi(b.geom))::public.geometry(MultiPolygon,2056) AS geom
           FROM (cadastre_projete.cp_baths_projete_non_cadastre b
             JOIN ( SELECT a.geom
                   FROM pompiers.pom_vgeo_cles_sdis a
                UNION
                 SELECT b_1.geom
                   FROM pompiers.pom_vgeo_edit_dangers b_1
                UNION
                 SELECT c.geom
                   FROM pompiers.pom_edit_detections c
                UNION
                 SELECT d.geom
                   FROM pompiers.pom_vgeo_dossiers_intervention_sdis d
                UNION
                 SELECT e.geom
                   FROM pompiers.pom_edit_emplacements e
                UNION
                 SELECT f.geom
                   FROM pompiers.pom_edit_reserves_eau f
                UNION
                 SELECT g.geom
                   FROM pompiers.pom_vgeo_edit_risques g
                UNION
                 SELECT h.geom
                   FROM pompiers.pom_edit_situation h) j ON (public.st_intersects(j.geom, b.geom)))
          WHERE ((b.type)::text = 'Hors-sol'::text)) q
  WITH NO DATA;


ALTER TABLE pompiers.pom_vgeo_batiments OWNER TO "<user>";

--
-- Name: pom_vgeo_dangers; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_dangers AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.localisation,
    a.adresse,
    a.photo,
    a.document,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_dangers a;


ALTER TABLE pompiers.pom_vgeo_dangers OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_detections; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_detections AS
 SELECT a.id,
    t.name AS gestionnaire,
    a.numero,
        CASE
            WHEN (a.feu = true) THEN 'Oui'::character varying(5)
            WHEN (a.feu = false) THEN 'Non'::character varying(5)
            ELSE NULL::character varying
        END AS feu,
        CASE
            WHEN (a.gaz = true) THEN 'Oui'::character varying(5)
            WHEN (a.gaz = false) THEN 'Non'::character varying(5)
            ELSE NULL::character varying
        END AS gaz,
        CASE
            WHEN (a.sprinkler = true) THEN 'Oui'::character varying(5)
            WHEN (a.sprinkler = false) THEN 'Non'::character varying(5)
            ELSE NULL::character varying
        END AS sprinkler,
    a.localisation,
    a.adresse,
    a.remarque,
        CASE
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 1)) THEN (((((((('<a href="../../files/private/pompiers/detections/gland_serine/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/detections/gland_serine/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 2)) THEN (((((((('<a href="../../files/private/pompiers/detections/nyon_dole/detection_'::text || (a.id)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/detections/nyon_dole/detection_'::text) || (a.id)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.id)::text) || '.jpg" title="'::text) || (a.id)::text) || '.jpg" /></a>'::text)
            WHEN (((a.photo)::text IS NOT NULL) AND (a.fk_gestionnaire_id = 3)) THEN (((((((('<a href="../../files/private/pompiers/detections/terre_sainte/'::text || (a.photo)::text) || '.jpg" target="_blank"><img src="../../files/private/pompiers/detections/terre_sainte/'::text) || (a.photo)::text) || '.jpg" width="100%" style="padding:5px 0" alt="'::text) || (a.photo)::text) || '.jpg" title="'::text) || (a.photo)::text) || '.jpg" /></a>'::text)
            ELSE NULL::text
        END AS photo,
    a.geom
   FROM (pompiers.pom_edit_detections a
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_detections OWNER TO "<user>";

--
-- Name: pom_vgeo_detections; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_detections AS
 SELECT row_number() OVER (ORDER BY a.numero) AS id,
    a.photo,
    a.numero,
    a.feu,
    a.gaz,
    a.sprinkler,
    a.localisation,
    a.adresse,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_detections a;


ALTER TABLE pompiers.pom_vgeo_detections OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_emplacements; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_emplacements AS
 SELECT a.id,
    s.name AS type,
    t.name AS gestionnaire,
    a.remarque,
    a.orientation,
    a.geom
   FROM ((pompiers.pom_edit_emplacements a
     LEFT JOIN pompiers.pom_tbl_liste_emplacements s ON ((s.id = a.fk_type_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_emplacements OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_reserves_eau; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_reserves_eau AS
 SELECT a.id,
    s.name AS type,
    r.name AS acces,
    COALESCE((a.capacite || ' [m3]'::text), NULL::text) AS capacite,
    COALESCE((a.reserve || ' [m3]'::text), NULL::text) AS reserve,
    a.remarque,
    t.name AS gestionnaire,
    a.geom
   FROM (((pompiers.pom_edit_reserves_eau a
     LEFT JOIN pompiers.pom_tbl_liste_type_reserves_eau s ON ((s.id = a.fk_type_id)))
     LEFT JOIN pompiers.pom_tbl_liste_acces_reserves_eau r ON ((r.id = a.fk_acces_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_reserves_eau OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_situation; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_situation AS
 SELECT a.id,
    s.name AS type,
    a.localisation,
    a.adresse,
    a.remarque,
    t.name AS gestionnaire,
    a.geom
   FROM ((pompiers.pom_edit_situation a
     LEFT JOIN pompiers.pom_tbl_liste_situation s ON ((s.id = a.fk_type_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_situation OWNER TO "<user>";

--
-- Name: pom_vgeo_edit_tuyaux; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_edit_tuyaux AS
 SELECT a.id,
    s.name AS diametre,
    t.name AS gestionnaire,
    COALESCE((a.longueur || ' [m]'::text), NULL::text) AS longueur,
    a.remarque,
    a.geom
   FROM ((pompiers.pom_edit_tuyaux a
     LEFT JOIN pompiers.pom_tbl_liste_tuyaux s ON ((s.id = a.fk_diametre_id)))
     LEFT JOIN pompiers.pom_tbl_liste_gestionnaires t ON ((t.id = a.fk_gestionnaire_id)));


ALTER TABLE pompiers.pom_vgeo_edit_tuyaux OWNER TO "<user>";

--
-- Name: pom_vgeo_emplacements; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_emplacements AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.remarque,
    a.orientation,
    a.geom
   FROM pompiers.pom_vgeo_edit_emplacements a;


ALTER TABLE pompiers.pom_vgeo_emplacements OWNER TO "<user>";

--
-- Name: pom_vgeo_reserves_eau; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_reserves_eau AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.acces,
    a.capacite,
    a.reserve,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_reserves_eau a;


ALTER TABLE pompiers.pom_vgeo_reserves_eau OWNER TO "<user>";

--
-- Name: pom_vgeo_risques; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_risques AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.localisation,
    a.adresse,
    a.photo,
    a.document,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_risques a;


ALTER TABLE pompiers.pom_vgeo_risques OWNER TO "<user>";

--
-- Name: pom_vgeo_situation; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_situation AS
 SELECT row_number() OVER (ORDER BY a.type) AS id,
    a.type,
    a.localisation,
    a.adresse,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_situation a;


ALTER TABLE pompiers.pom_vgeo_situation OWNER TO "<user>";

--
-- Name: pom_vgeo_tuyaux; Type: VIEW; Schema: pompiers; Owner: <user>
--

CREATE VIEW pompiers.pom_vgeo_tuyaux AS
 SELECT row_number() OVER (ORDER BY a.diametre) AS id,
    a.diametre,
    a.longueur,
    a.remarque,
    a.geom
   FROM pompiers.pom_vgeo_edit_tuyaux a;


ALTER TABLE pompiers.pom_vgeo_tuyaux OWNER TO "<user>";
