--
-- Name: secu_edit_acces_immeubles; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_edit_acces_immeubles (
    id integer NOT NULL,
    code character varying(255),
    date_controle date,
    fk_regie_id integer,
    concierge character varying(255),
    concierge_adresse character varying(255),
    concierge_telephone character varying(255),
    service_intervention character varying(255),
    service_intervention_telephone character varying(255),
    remarque character varying(255),
    localisation character varying(255),
    adresse character varying(255),
    geom public.geometry(Point,2056)
);


ALTER TABLE securite.secu_edit_acces_immeubles OWNER TO "<user>";

--
-- Name: secu_edit_acces_immeubles_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_edit_acces_immeubles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_edit_acces_immeubles_id_seq OWNER TO "<user>";

--
-- Name: secu_edit_acces_immeubles_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_edit_acces_immeubles_id_seq OWNED BY securite.secu_edit_acces_immeubles.id;


--
-- Name: secu_edit_points_acces; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_edit_points_acces (
    id integer NOT NULL,
    fk_categorie_id integer NOT NULL,
    cle_numero character varying(20),
    remarque character varying(250),
    geom public.geometry(Point,2056)
);


ALTER TABLE securite.secu_edit_points_acces OWNER TO "<user>";

--
-- Name: secu_edit_points_acces_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_edit_points_acces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_edit_points_acces_id_seq OWNER TO "<user>";

--
-- Name: secu_edit_points_acces_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_edit_points_acces_id_seq OWNED BY securite.secu_edit_points_acces.id;


--
-- Name: secu_edit_regies; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_edit_regies (
    id integer NOT NULL,
    name character varying(255),
    telephone_bureau character varying(255),
    telephone_urgence character varying(255),
    adresse character varying(255),
    geom public.geometry(Point,2056)
);


ALTER TABLE securite.secu_edit_regies OWNER TO "<user>";

--
-- Name: secu_edit_regies_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_edit_regies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_edit_regies_id_seq OWNER TO "<user>";

--
-- Name: secu_edit_regies_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_edit_regies_id_seq OWNED BY securite.secu_edit_regies.id;


--
-- Name: secu_edit_signalisation; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_edit_signalisation (
    id integer NOT NULL,
    fk_type_id integer NOT NULL,
    valeur_limitation character varying(5),
    remarque character varying(255),
    orientation integer,
    geom public.geometry(Point,2056)
);


ALTER TABLE securite.secu_edit_signalisation OWNER TO "<user>";

--
-- Name: secu_edit_signalisation_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_edit_signalisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_edit_signalisation_id_seq OWNER TO "<user>";

--
-- Name: secu_edit_signalisation_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_edit_signalisation_id_seq OWNED BY securite.secu_edit_signalisation.id;



--
-- Name: secu_tbl_liste_points_acces; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_tbl_liste_points_acces (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE securite.secu_tbl_liste_points_acces OWNER TO "<user>";

--
-- Name: secu_tbl_liste_points_acces_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_tbl_liste_points_acces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_tbl_liste_points_acces_id_seq OWNER TO "<user>";

--
-- Name: secu_tbl_liste_points_acces_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_tbl_liste_points_acces_id_seq OWNED BY securite.secu_tbl_liste_points_acces.id;


--
-- Name: secu_tbl_liste_signalisation; Type: TABLE; Schema: securite; Owner: <user>
--

CREATE TABLE securite.secu_tbl_liste_signalisation (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE securite.secu_tbl_liste_signalisation OWNER TO "<user>";

--
-- Name: secu_tbl_liste_signalisation_id_seq; Type: SEQUENCE; Schema: securite; Owner: <user>
--

CREATE SEQUENCE securite.secu_tbl_liste_signalisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE securite.secu_tbl_liste_signalisation_id_seq OWNER TO "<user>";

--
-- Name: secu_tbl_liste_signalisation_id_seq; Type: SEQUENCE OWNED BY; Schema: securite; Owner: <user>
--

ALTER SEQUENCE securite.secu_tbl_liste_signalisation_id_seq OWNED BY securite.secu_tbl_liste_signalisation.id;
