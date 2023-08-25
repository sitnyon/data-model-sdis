--
-- Name: pom_edit_cles get_mo_limites_commune_nom; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER get_mo_limites_commune_nom AFTER INSERT ON pompiers.pom_edit_cles FOR EACH ROW EXECUTE FUNCTION public.get_mo_limites_commune_nom();


--
-- Name: pom_edit_barrages set_longueur; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER set_longueur BEFORE INSERT ON pompiers.pom_edit_barrages FOR EACH ROW EXECUTE FUNCTION public.set_longueur();


--
-- Name: pom_edit_tuyaux set_longueur; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER set_longueur BEFORE INSERT ON pompiers.pom_edit_tuyaux FOR EACH ROW EXECUTE FUNCTION public.set_longueur();


--
-- Name: pom_edit_acces tr_acces_set_geom_emplacement_echelle; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_acces_set_geom_emplacement_echelle AFTER INSERT ON pompiers.pom_edit_acces FOR EACH ROW WHEN ((new.fk_type_id = 2)) EXECUTE FUNCTION pompiers.set_geom_emplacement_echelle();


--
-- Name: pom_edit_cles tr_cles_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_cles_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_cles FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_cles tr_dangers_get_path_absolu_document; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_document BEFORE INSERT OR UPDATE OF document ON pompiers.pom_edit_cles FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_document();


--
-- Name: pom_edit_dangers tr_dangers_get_path_absolu_document; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_document BEFORE INSERT OR UPDATE OF document ON pompiers.pom_edit_dangers FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_document();


--
-- Name: pom_edit_dossiers_intervention tr_dangers_get_path_absolu_document; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_document BEFORE INSERT OR UPDATE OF document ON pompiers.pom_edit_dossiers_intervention FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_document();


--
-- Name: pom_edit_risques tr_dangers_get_path_absolu_document; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_document BEFORE INSERT OR UPDATE OF document ON pompiers.pom_edit_risques FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_document();


--
-- Name: pom_edit_acces tr_dangers_get_path_absolu_photo; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_photo BEFORE INSERT OR UPDATE OF photo ON pompiers.pom_edit_acces FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_photo();


--
-- Name: pom_edit_cles tr_dangers_get_path_absolu_photo; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_photo BEFORE INSERT OR UPDATE OF photo ON pompiers.pom_edit_cles FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_photo();


--
-- Name: pom_edit_dangers tr_dangers_get_path_absolu_photo; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_photo BEFORE INSERT OR UPDATE OF photo ON pompiers.pom_edit_dangers FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_photo();


--
-- Name: pom_edit_detections tr_dangers_get_path_absolu_photo; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_photo BEFORE INSERT OR UPDATE OF photo ON pompiers.pom_edit_detections FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_photo();


--
-- Name: pom_edit_risques tr_dangers_get_path_absolu_photo; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_get_path_absolu_photo BEFORE INSERT OR UPDATE OF photo ON pompiers.pom_edit_risques FOR EACH ROW EXECUTE FUNCTION pompiers.set_path_absolu_photo();


--
-- Name: pom_edit_dangers tr_dangers_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dangers_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_dangers FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_detections tr_detections_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_detections_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_detections FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_dossiers_intervention tr_dossiers_intervention_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_dossiers_intervention_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_dossiers_intervention FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_emplacements tr_emplacements_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_emplacements_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_emplacements FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_cles tr_pom_cles_commune; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_pom_cles_commune BEFORE INSERT OR UPDATE OF geom ON pompiers.pom_edit_cles FOR EACH ROW EXECUTE FUNCTION public.get_mo_communes_nom();


--
-- Name: pom_edit_dossiers_intervention tr_pom_dossiers_intervention_commune; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_pom_dossiers_intervention_commune BEFORE INSERT OR UPDATE OF geom ON pompiers.pom_edit_dossiers_intervention FOR EACH ROW EXECUTE FUNCTION public.get_mo_communes_nom();


--
-- Name: pom_edit_reserves_eau tr_reserves_eau_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_reserves_eau_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_reserves_eau FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_risques tr_risques_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_risques_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_risques FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();


--
-- Name: pom_edit_situation tr_situation_refresh_mv_batiments; Type: TRIGGER; Schema: pompiers; Owner: <user>
--

CREATE TRIGGER tr_situation_refresh_mv_batiments AFTER INSERT OR DELETE OR UPDATE ON pompiers.pom_edit_situation FOR EACH STATEMENT EXECUTE FUNCTION pompiers.refresh_mv_batiments();
