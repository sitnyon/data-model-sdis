--
-- Name: pom_bornes_hydrantes_080_geom_1538565095585; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_bornes_hydrantes_080_geom_1538565095585 ON pompiers.pom_bornes_hydrantes_080 USING gist (geom);


--
-- Name: pom_bornes_hydrantes_500_geom_1538565095290; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_bornes_hydrantes_500_geom_1538565095290 ON pompiers.pom_bornes_hydrantes_500 USING gist (geom);


--
-- Name: pom_bornes_hydrantes_geom_1637587919606; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_bornes_hydrantes_geom_1637587919606 ON pompiers.pom_bornes_hydrantes USING gist (geom);


--
-- Name: pom_dangers_lignes_ht_10_geom_1538565095268; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_dangers_lignes_ht_10_geom_1538565095268 ON pompiers.pom_dangers_lignes_ht_10 USING gist (geom);


--
-- Name: pom_dangers_lignes_ht_geom_1538565095492; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_dangers_lignes_ht_geom_1538565095492 ON pompiers.pom_dangers_lignes_ht USING gist (geom);


--
-- Name: pom_edit_acces_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_acces_geom ON pompiers.pom_edit_acces USING gist (geom);


--
-- Name: pom_edit_barrages_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_barrages_geom ON pompiers.pom_edit_barrages USING gist (geom);


--
-- Name: pom_edit_dangers_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_dangers_geom ON pompiers.pom_edit_dangers USING gist (geom);


--
-- Name: pom_edit_detections_geom_1619783882282; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_detections_geom_1619783882282 ON pompiers.pom_edit_detections USING gist (geom);


--
-- Name: pom_edit_emplacements_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_emplacements_geom ON pompiers.pom_edit_emplacements USING gist (geom);


--
-- Name: pom_edit_reserves_eau_geom_1692106895550; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_reserves_eau_geom_1692106895550 ON pompiers.pom_edit_reserves_eau USING gist (geom);


--
-- Name: pom_edit_risques_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_risques_geom ON pompiers.pom_edit_risques USING gist (geom);


--
-- Name: pom_edit_situation_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_situation_geom ON pompiers.pom_edit_situation USING gist (geom);


--
-- Name: pom_edit_tuyaux_geom; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_edit_tuyaux_geom ON pompiers.pom_edit_tuyaux USING gist (geom);


--
-- Name: pom_gland_serine_cles_geom_162217452466; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_gland_serine_cles_geom_162217452466 ON pompiers.pom_gland_serine_cles USING gist (geom);


--
-- Name: pom_gland_serine_dossiers_intervention_geom_162217452454; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_gland_serine_dossiers_intervention_geom_162217452454 ON pompiers.pom_gland_serine_dossiers_intervention USING gist (geom);


--
-- Name: pom_personnel_gs_geom_1619011989255; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_personnel_gs_geom_1619011989255 ON pompiers.pom_personnel USING gist (geom);


--
-- Name: pom_prises_arrosage_sane_geom_1660037746414; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_prises_arrosage_sane_geom_1660037746414 ON pompiers.pom_prises_arrosage_sane USING gist (geom);


--
-- Name: pom_secteurs_intervention_geom_1538565095182; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_secteurs_intervention_geom_1538565095182 ON pompiers.pom_secteurs_intervention USING gist (geom);


--
-- Name: pom_secteurs_organisationnels_geom_1612945108319; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_secteurs_organisationnels_geom_1612945108319 ON pompiers.pom_secteurs_organisationnels USING gist (geom);


--
-- Name: pom_sites_geom_1612944937900; Type: INDEX; Schema: pompiers; Owner: <user>
--

CREATE INDEX pom_sites_geom_1612944937900 ON pompiers.pom_sites USING gist (geom);
