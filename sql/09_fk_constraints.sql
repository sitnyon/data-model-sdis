--
-- Name: pom_edit_acces pom_edit_acces_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_acces
    ADD CONSTRAINT pom_edit_acces_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id);


--
-- Name: pom_edit_acces pom_edit_acces_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_acces
    ADD CONSTRAINT pom_edit_acces_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_acces(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_barrages pom_edit_barrages_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_barrages
    ADD CONSTRAINT pom_edit_barrages_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_cles pom_edit_cles_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_cles
    ADD CONSTRAINT pom_edit_cles_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_cles pom_edit_cles_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_cles
    ADD CONSTRAINT pom_edit_cles_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_type_cles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_dangers pom_edit_dangers_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dangers
    ADD CONSTRAINT pom_edit_dangers_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_dangers pom_edit_dangers_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dangers
    ADD CONSTRAINT pom_edit_dangers_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_dangers(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_detections pom_edit_detections_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_detections
    ADD CONSTRAINT pom_edit_detections_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id);


--
-- Name: pom_edit_dossiers_intervention pom_edit_dossiers_intervention_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dossiers_intervention
    ADD CONSTRAINT pom_edit_dossiers_intervention_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_dossiers_intervention pom_edit_dossiers_intervention_fk_statut_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dossiers_intervention
    ADD CONSTRAINT pom_edit_dossiers_intervention_fk_statut_id_fkey FOREIGN KEY (fk_statut_id) REFERENCES pompiers.pom_tbl_liste_statut_dossiers(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_emplacements pom_edit_emplacements_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_emplacements
    ADD CONSTRAINT pom_edit_emplacements_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_emplacements pom_edit_emplacements_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_emplacements
    ADD CONSTRAINT pom_edit_emplacements_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_emplacements(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_reserves_eau pom_edit_reserves_eau_fk_acces_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_reserves_eau
    ADD CONSTRAINT pom_edit_reserves_eau_fk_acces_id_fkey FOREIGN KEY (fk_acces_id) REFERENCES pompiers.pom_tbl_liste_acces_reserves_eau(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_reserves_eau pom_edit_reserves_eau_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_reserves_eau
    ADD CONSTRAINT pom_edit_reserves_eau_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_reserves_eau pom_edit_reserves_eau_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_reserves_eau
    ADD CONSTRAINT pom_edit_reserves_eau_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_type_reserves_eau(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_risques pom_edit_risques_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_risques
    ADD CONSTRAINT pom_edit_risques_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_risques pom_edit_risques_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_risques
    ADD CONSTRAINT pom_edit_risques_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_risques(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_situation pom_edit_situation_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_situation
    ADD CONSTRAINT pom_edit_situation_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_situation pom_edit_situation_fk_type_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_situation
    ADD CONSTRAINT pom_edit_situation_fk_type_id_fkey FOREIGN KEY (fk_type_id) REFERENCES pompiers.pom_tbl_liste_situation(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_tuyaux pom_edit_tuyaux_fk_diametre_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_tuyaux
    ADD CONSTRAINT pom_edit_tuyaux_fk_diametre_id_fkey FOREIGN KEY (fk_diametre_id) REFERENCES pompiers.pom_tbl_liste_tuyaux(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pom_edit_tuyaux pom_edit_tuyaux_fk_gestionnaire_id_fkey; Type: FK CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_tuyaux
    ADD CONSTRAINT pom_edit_tuyaux_fk_gestionnaire_id_fkey FOREIGN KEY (fk_gestionnaire_id) REFERENCES pompiers.pom_tbl_liste_gestionnaires(id) ON UPDATE CASCADE ON DELETE RESTRICT;
	