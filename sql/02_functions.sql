--
-- Name: refresh_mv_batiments(); Type: FUNCTION; Schema: pompiers; Owner: <user>
--

CREATE FUNCTION pompiers.refresh_mv_batiments() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    REFRESH MATERIALIZED VIEW pompiers.pom_vgeo_batiments;
    RETURN NULL;
END;
$$;


ALTER FUNCTION pompiers.refresh_mv_batiments() OWNER TO "<user>";

--
-- Name: set_geom_emplacement_echelle(); Type: FUNCTION; Schema: pompiers; Owner: <user>
--

CREATE FUNCTION pompiers.set_geom_emplacement_echelle() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN

    INSERT INTO pompiers.pom_edit_emplacements (fk_type_id,remarque,orientation,geom,fk_gestionnaire_id) 
    VALUES (1,new.remarque,270-(degrees(ST_Azimuth(ST_AsText(ST_EndPoint(ST_LineMerge(new.geom))),ST_AsText(ST_StartPoint(ST_LineMerge(new.geom)))))),st_centroid(ST_OffsetCurve(ST_LineMerge(new.geom),5)),new.fk_gestionnaire_id); 
  
    RETURN new;

END;$$;


ALTER FUNCTION pompiers.set_geom_emplacement_echelle() OWNER TO "<user>";

--
-- Name: set_path_absolu_document(); Type: FUNCTION; Schema: pompiers; Owner: <user>
--

CREATE FUNCTION pompiers.set_path_absolu_document() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN

    SELECT INTO new.document
    CASE
        WHEN new.document IS NOT NULL THEN replace(new.document, 'T:', '\\struve\SDIS') -- Spécifique Nyon
        ELSE NULL
    END;

    RETURN new;

END;$$;


ALTER FUNCTION pompiers.set_path_absolu_document() OWNER TO "<user>";

--
-- Name: FUNCTION set_path_absolu_document(); Type: COMMENT; Schema: pompiers; Owner: <user>
--

COMMENT ON FUNCTION pompiers.set_path_absolu_document() IS 'Convertit le chemin relatif en chemin absolu pour l''attribut document';


--
-- Name: set_path_absolu_photo(); Type: FUNCTION; Schema: pompiers; Owner: <user>
--

CREATE FUNCTION pompiers.set_path_absolu_photo() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN

    SELECT INTO new.photo
    CASE
        WHEN new.photo IS NOT NULL THEN replace(new.photo, 'T:', '\\struve\SDIS') -- Spécifique Nyon
        ELSE NULL
    END;

    RETURN new;

END;$$;


ALTER FUNCTION pompiers.set_path_absolu_photo() OWNER TO "<user>";

--
-- Name: FUNCTION set_path_absolu_photo(); Type: COMMENT; Schema: pompiers; Owner: <user>
--

COMMENT ON FUNCTION pompiers.set_path_absolu_photo() IS 'Convertit le chemin relatif en chemin absolu pour l''attribut photo';
