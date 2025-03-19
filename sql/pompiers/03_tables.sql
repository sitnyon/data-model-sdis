--
-- Name: pom_sites; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_sites (
    id integer NOT NULL,
    type character varying(255),
    categorie character varying(5),
    nom character varying(255),
    export date,
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_sites OWNER TO "<user>";

--
-- Name: pom_bornes_hydrantes; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_bornes_hydrantes (
    id integer NOT NULL,
    type character varying(255),
    numero character varying(20),
    sortie character varying(255),
    pression text,
    debit text,
    remarque character varying(255),
    statut character varying(255),
    export date,
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_bornes_hydrantes OWNER TO "<user>";

--
-- Name: pom_bornes_hydrantes_080; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_bornes_hydrantes_080 (
    id integer NOT NULL,
    export date,
    geom public.geometry(MultiPolygon,2056)
);


ALTER TABLE pompiers.pom_bornes_hydrantes_080 OWNER TO "<user>";

--
-- Name: pom_bornes_hydrantes_500; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_bornes_hydrantes_500 (
    id integer NOT NULL,
    export date,
    geom public.geometry(MultiPolygon,2056)
);


ALTER TABLE pompiers.pom_bornes_hydrantes_500 OWNER TO "<user>";

--
-- Name: pom_dangers_lignes_ht; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_dangers_lignes_ht (
    id integer NOT NULL,
    type character varying(255),
    remarque character varying(255),
    export date,
    geom public.geometry(MultiLineString,2056)
);


ALTER TABLE pompiers.pom_dangers_lignes_ht OWNER TO "<user>";

--
-- Name: pom_dangers_lignes_ht_10; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_dangers_lignes_ht_10 (
    id integer NOT NULL,
    export date,
    geom public.geometry(MultiPolygon,2056)
);


ALTER TABLE pompiers.pom_dangers_lignes_ht_10 OWNER TO "<user>";

--
-- Name: pom_edit_acces; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_acces (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    localisation character varying(255),
    adresse character varying(255),
    photo character varying(255),
    remarque character varying(255),
    geom public.geometry(MultiLineString,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_acces OWNER TO "<user>";

--
-- Name: pom_edit_acces_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_acces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_acces_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_acces_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_acces_id_seq OWNED BY pompiers.pom_edit_acces.id;


--
-- Name: pom_edit_barrages; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_barrages (
    id integer NOT NULL,
    longueur integer,
    localisation character varying(255),
    adresse character varying(255),
    remarque character varying(255),
    geom public.geometry(MultiLineString,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_barrages OWNER TO "<user>";

--
-- Name: pom_edit_barrages_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_barrages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_barrages_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_barrages_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_barrages_id_seq OWNED BY pompiers.pom_edit_barrages.id;


--
-- Name: pom_edit_cles; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_cles (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    numero character varying(20),
    localisation character varying(255),
    adresse character varying(255),
    commune character varying(255),
    remarque character varying(255),
    date_controle timestamp without time zone,
    inactif boolean,
    document character varying(255),
    photo character varying(255),
    fk_gestionnaire_id integer NOT NULL,
    geom public.geometry(Point,2056),
    defectuosite boolean,
    defaut_constate character varying(255)
);


ALTER TABLE pompiers.pom_edit_cles OWNER TO "<user>";

--
-- Name: pom_edit_cles_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_cles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_cles_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_cles_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_cles_id_seq OWNED BY pompiers.pom_edit_cles.id;


--
-- Name: pom_edit_dangers; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_dangers (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    localisation character varying(255),
    adresse character varying(255),
    photo character varying(255),
    document character varying(255),
    remarque_label character varying(255),
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_dangers OWNER TO "<user>";

--
-- Name: pom_edit_dangers_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_dangers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_dangers_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_dangers_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_dangers_id_seq OWNED BY pompiers.pom_edit_dangers.id;


--
-- Name: pom_edit_detections; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_detections (
    id integer NOT NULL,
    numero character varying(20),
    feu boolean,
    gaz boolean,
    sprinkler boolean,
    localisation character varying(255),
    adresse character varying(255),
    remarque character varying(255),
    photo character varying(255),
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_detections OWNER TO "<user>";

--
-- Name: pom_edit_detections_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_detections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_detections_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_detections_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_detections_id_seq OWNED BY pompiers.pom_edit_detections.id;


--
-- Name: pom_edit_dossiers_intervention; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_dossiers_intervention (
    id integer NOT NULL,
    fk_statut_id integer NOT NULL,
    localisation character varying(255),
    affichage_localisation bool DEFAULT false NULL,
    adresse character varying(255),
    commune character varying(255),
    remarque character varying(255),
    document character varying(255),
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_dossiers_intervention OWNER TO "<user>";

--
-- Name: pom_edit_dossiers_intervention_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_dossiers_intervention_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_dossiers_intervention_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_dossiers_intervention_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_dossiers_intervention_id_seq OWNED BY pompiers.pom_edit_dossiers_intervention.id;


--
-- Name: pom_edit_emplacements; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_emplacements (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    remarque character varying(255),
    orientation integer,
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_emplacements OWNER TO "<user>";

--
-- Name: pom_edit_emplacements_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_emplacements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_emplacements_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_emplacements_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_emplacements_id_seq OWNED BY pompiers.pom_edit_emplacements.id;


--
-- Name: pom_edit_reserves_eau; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_reserves_eau (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    capacite integer,
    reserve integer,
    fk_acces_id integer,
    remarque character varying(255),
    fk_gestionnaire_id integer NOT NULL,
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_edit_reserves_eau OWNER TO "<user>";

--
-- Name: pom_edit_reserves_eau_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_reserves_eau_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_reserves_eau_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_reserves_eau_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_reserves_eau_id_seq OWNED BY pompiers.pom_edit_reserves_eau.id;


--
-- Name: pom_edit_risques; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_risques (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    localisation character varying(255),
    adresse character varying(255),
    photo character varying(255),
    document character varying(255),
    remarque_label character varying(255),
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_risques OWNER TO "<user>";

--
-- Name: pom_edit_risques_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_risques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_risques_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_risques_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_risques_id_seq OWNED BY pompiers.pom_edit_risques.id;


--
-- Name: pom_edit_situation; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_situation (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    localisation character varying(255),
    adresse character varying(255),
    remarque character varying(255),
    geom public.geometry(Point,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_situation OWNER TO "<user>";

--
-- Name: pom_edit_situation_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_situation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_situation_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_situation_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_situation_id_seq OWNED BY pompiers.pom_edit_situation.id;


--
-- Name: pom_edit_tuyaux; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_edit_tuyaux (
    id integer NOT NULL,
    fk_diametre_id integer NOT NULL,
    longueur integer,
    remarque character varying(255),
    geom public.geometry(MultiLineString,2056),
    fk_gestionnaire_id integer NOT NULL
);


ALTER TABLE pompiers.pom_edit_tuyaux OWNER TO "<user>";

--
-- Name: pom_edit_tuyaux_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_edit_tuyaux_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_edit_tuyaux_id_seq OWNER TO "<user>";

--
-- Name: pom_edit_tuyaux_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_edit_tuyaux_id_seq OWNED BY pompiers.pom_edit_tuyaux.id;

--
-- Name: pom_gland_serine_cles; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_gland_serine_cles (
    id integer NOT NULL,
    numero character varying(20),
    localisation character varying(255),
    adresse character varying(255),
    commune character varying(255),
    type character varying(255),
    remarque character varying(255),
    date_controle date,
    inactif boolean,
    document character varying(255),
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_gland_serine_cles OWNER TO "<user>";

--
-- Name: pom_gland_serine_cles_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_gland_serine_cles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_gland_serine_cles_id_seq OWNER TO "<user>";

--
-- Name: pom_gland_serine_cles_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_gland_serine_cles_id_seq OWNED BY pompiers.pom_gland_serine_cles.id;


--
-- Name: pom_gland_serine_dossiers_intervention; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_gland_serine_dossiers_intervention (
    id integer NOT NULL,
    localisation character varying(255),
    adresse character varying(255),
    commune character varying(255),
    statut character varying(255),
    remarque character varying(255),
    document character varying(255),
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_gland_serine_dossiers_intervention OWNER TO "<user>";

--
-- Name: pom_gland_serine_dossiers_intervention_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_gland_serine_dossiers_intervention_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_gland_serine_dossiers_intervention_id_seq OWNER TO "<user>";

--
-- Name: pom_gland_serine_dossiers_intervention_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_gland_serine_dossiers_intervention_id_seq OWNED BY pompiers.pom_gland_serine_dossiers_intervention.id;


--
-- Name: pom_personnel; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_personnel (
    id integer NOT NULL,
    grade character varying(20),
    nom character varying(255),
    prenom character varying(255),
    adresse text,
    commune character varying(255),
    groupe character varying(20),
    categorie smallint,
    sdis character varying(20),
    export date,
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_personnel OWNER TO "<user>";

--
-- Name: pom_prises_arrosage_sane; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_prises_arrosage_sane (
    id integer NOT NULL,
    sous_type character varying(254),
    nom character varying(254),
    genre_chambre character varying(254),
    no_objet character varying(254),
    export text,
    geom public.geometry(Point,2056)
);


ALTER TABLE pompiers.pom_prises_arrosage_sane OWNER TO "<user>";

--
-- Name: pom_prises_arrosage_sane_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_prises_arrosage_sane_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_prises_arrosage_sane_id_seq OWNER TO "<user>";

--
-- Name: pom_prises_arrosage_sane_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_prises_arrosage_sane_id_seq OWNED BY pompiers.pom_prises_arrosage_sane.id;


--
-- Name: pom_secteurs_intervention; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_secteurs_intervention (
    id integer NOT NULL,
    type character varying(255),
    sous_type character varying(255),
    export date,
    geom public.geometry(MultiPolygon,2056)
);


ALTER TABLE pompiers.pom_secteurs_intervention OWNER TO "<user>";

--
-- Name: pom_secteurs_organisationnels; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_secteurs_organisationnels (
    id integer NOT NULL,
    sdis character varying(25),
    site_operationnel character varying(25),
    categorie character varying(10),
    export date,
    geom public.geometry(MultiPolygon,2056)
);


ALTER TABLE pompiers.pom_secteurs_organisationnels OWNER TO "<user>";

--
-- Name: pom_tbl_liste_acces; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_acces (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_acces OWNER TO "<user>";

--
-- Name: pom_tbl_liste_acces_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_acces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_acces_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_acces_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_acces_id_seq OWNED BY pompiers.pom_tbl_liste_acces.id;


--
-- Name: pom_tbl_liste_acces_reserves_eau; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_acces_reserves_eau (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_acces_reserves_eau OWNER TO "<user>";

--
-- Name: pom_tbl_liste_acces_puits_reservoirs_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_acces_puits_reservoirs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_acces_puits_reservoirs_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_acces_puits_reservoirs_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_acces_puits_reservoirs_id_seq OWNED BY pompiers.pom_tbl_liste_acces_reserves_eau.id;


--
-- Name: pom_tbl_liste_dangers; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_dangers (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_dangers OWNER TO "<user>";

--
-- Name: pom_tbl_liste_dangers_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_dangers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_dangers_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_dangers_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_dangers_id_seq OWNED BY pompiers.pom_tbl_liste_dangers.id;


--
-- Name: pom_tbl_liste_emplacements; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_emplacements (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_emplacements OWNER TO "<user>";

--
-- Name: pom_tbl_liste_emplacements_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_emplacements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_emplacements_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_emplacements_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_emplacements_id_seq OWNED BY pompiers.pom_tbl_liste_emplacements.id;


--
-- Name: pom_tbl_liste_gestionnaires; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_gestionnaires (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_gestionnaires OWNER TO "<user>";

--
-- Name: pom_tbl_liste_gestionnaires_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_gestionnaires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_gestionnaires_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_gestionnaires_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_gestionnaires_id_seq OWNED BY pompiers.pom_tbl_liste_gestionnaires.id;


--
-- Name: pom_tbl_liste_type_reserves_eau; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_type_reserves_eau (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_type_reserves_eau OWNER TO "<user>";

--
-- Name: pom_tbl_liste_puits_reservoirs_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_puits_reservoirs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_puits_reservoirs_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_puits_reservoirs_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_puits_reservoirs_id_seq OWNED BY pompiers.pom_tbl_liste_type_reserves_eau.id;


--
-- Name: pom_tbl_liste_risques; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_risques (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_risques OWNER TO "<user>";

--
-- Name: pom_tbl_liste_risques_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_risques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_risques_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_risques_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_risques_id_seq OWNED BY pompiers.pom_tbl_liste_risques.id;


--
-- Name: pom_tbl_liste_situation; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_situation (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_situation OWNER TO "<user>";

--
-- Name: pom_tbl_liste_situation_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_situation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_situation_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_situation_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_situation_id_seq OWNED BY pompiers.pom_tbl_liste_situation.id;


--
-- Name: pom_tbl_liste_statut_dossiers; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_statut_dossiers (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_statut_dossiers OWNER TO "<user>";

--
-- Name: pom_tbl_liste_statut_dossiers_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_statut_dossiers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_statut_dossiers_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_statut_dossiers_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_statut_dossiers_id_seq OWNED BY pompiers.pom_tbl_liste_statut_dossiers.id;


--
-- Name: pom_tbl_liste_tuyaux; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_tuyaux (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_tuyaux OWNER TO "<user>";

--
-- Name: pom_tbl_liste_tuyaux_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_tuyaux_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_tuyaux_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_tuyaux_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_tuyaux_id_seq OWNED BY pompiers.pom_tbl_liste_tuyaux.id;


--
-- Name: pom_tbl_liste_type_cles; Type: TABLE; Schema: pompiers; Owner: <user>
--

CREATE TABLE pompiers.pom_tbl_liste_type_cles (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE pompiers.pom_tbl_liste_type_cles OWNER TO "<user>";

--
-- Name: pom_tbl_liste_type_cles_id_seq; Type: SEQUENCE; Schema: pompiers; Owner: <user>
--

CREATE SEQUENCE pompiers.pom_tbl_liste_type_cles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pompiers.pom_tbl_liste_type_cles_id_seq OWNER TO "<user>";

--
-- Name: pom_tbl_liste_type_cles_id_seq; Type: SEQUENCE OWNED BY; Schema: pompiers; Owner: <user>
--

ALTER SEQUENCE pompiers.pom_tbl_liste_type_cles_id_seq OWNED BY pompiers.pom_tbl_liste_type_cles.id;
