--
-- Name: secu_vgeo_acces_immeubles; Type: VIEW; Schema: securite; Owner: <user>
--

CREATE VIEW securite.secu_vgeo_acces_immeubles AS
 SELECT a.id,
    a.code,
    to_char((a.date_controle)::timestamp with time zone, 'DD.MM.YYYY'::text) AS date_controle,
    r.name AS regie,
    r.telephone_bureau AS regie_telephone_bureau,
    r.telephone_urgence AS regie_telephone_urgence,
    a.proprietaire,
    a.proprietaire_adresse,
    a.proprietaire_telephone,
    a.concierge,
    a.concierge_adresse,
    a.concierge_telephone,
    a.service_intervention,
    a.service_intervention_telephone,
    a.remarque,
    a.localisation,
    a.adresse,
    c.nom AS commune,
    a.geom
   FROM ((securite.secu_edit_acces_immeubles a
     LEFT JOIN securite.secu_edit_regies r ON ((r.id = a.fk_regie_id)))
     LEFT JOIN mensuration_officielle.mo_communes c ON (public.st_within(a.geom, c.geom)));


ALTER TABLE securite.secu_vgeo_acces_immeubles OWNER TO "<user>";

--
-- Name: secu_vgeo_edit_acces_immeubles; Type: VIEW; Schema: securite; Owner: <user>
--

CREATE VIEW securite.secu_vgeo_edit_acces_immeubles AS
 SELECT a.id,
    a.code,
    to_char((a.date_controle)::timestamp with time zone, 'DD.MM.YYYY'::text) AS date_controle,
    s.name AS regie,
    a.proprietaire,
    a.proprietaire_adresse,
    a.proprietaire_telephone,
    a.concierge,
    a.concierge_adresse,
    a.concierge_telephone,
    a.service_intervention,
    a.service_intervention_telephone,
    a.remarque,
    a.localisation,
    a.adresse,
    c.nom AS commune,
    a.geom
   FROM ((securite.secu_edit_acces_immeubles a
     LEFT JOIN securite.secu_edit_regies s ON ((s.id = a.fk_regie_id)))
     LEFT JOIN mensuration_officielle.mo_communes c ON (public.st_within(a.geom, c.geom)));


ALTER TABLE securite.secu_vgeo_edit_acces_immeubles OWNER TO "<user>";

--
-- Name: secu_vgeo_edit_points_acces; Type: VIEW; Schema: securite; Owner: <user>
--

CREATE VIEW securite.secu_vgeo_edit_points_acces AS
 SELECT a.id,
    s.name AS categorie,
    a.cle_numero,
    a.remarque,
    a.geom
   FROM (securite.secu_edit_points_acces a
     LEFT JOIN securite.secu_tbl_liste_points_acces s ON ((s.id = a.fk_categorie_id)));


ALTER TABLE securite.secu_vgeo_edit_points_acces OWNER TO "<user>";

--
-- Name: secu_vgeo_edit_signalisation; Type: VIEW; Schema: securite; Owner: <user>
--

CREATE VIEW securite.secu_vgeo_edit_signalisation AS
 SELECT a.id,
    s.name AS type,
    a.valeur_limitation,
    a.remarque,
    a.orientation,
    a.geom
   FROM (securite.secu_edit_signalisation a
     LEFT JOIN securite.secu_tbl_liste_signalisation s ON ((s.id = a.fk_type_id)));


ALTER TABLE securite.secu_vgeo_edit_signalisation OWNER TO "<user>";


--
-- Name: secu_vgeo_signalisation; Type: VIEW; Schema: securite; Owner: <user>
--

CREATE VIEW securite.secu_vgeo_signalisation AS
 SELECT row_number() OVER (ORDER BY b.type) AS id,
    b.type,
    b.valeur_limitation AS valeur,
    b.remarque,
    b.orientation,
    b.geom
   FROM securite.secu_vgeo_edit_signalisation b;


ALTER TABLE securite.secu_vgeo_signalisation OWNER TO "<user>";
