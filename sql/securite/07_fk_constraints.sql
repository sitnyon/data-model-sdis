--
-- Name: secu_edit_acces_immeubles secu_edit_acces_immeubles_fk_regie_id_fkey; Type: FK CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_acces_immeubles
    ADD CONSTRAINT secu_edit_acces_immeubles_fk_regie_id_fkey FOREIGN KEY (fk_regie_id) REFERENCES securite.secu_edit_regies(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: secu_edit_points_acces secu_edit_points_acces_fk_categorie_id_fkey; Type: FK CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_points_acces
    ADD CONSTRAINT secu_edit_points_acces_fk_categorie_id_fkey FOREIGN KEY (fk_categorie_id) REFERENCES securite.secu_tbl_liste_points_acces(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: secu_edit_signalisation secu_edit_signalisation_fk_categorie_id_fkey; Type: FK CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_signalisation
    ADD CONSTRAINT secu_edit_signalisation_fk_categorie_id_fkey FOREIGN KEY (fk_type_id) REFERENCES securite.secu_tbl_liste_signalisation(id) ON UPDATE CASCADE ON DELETE RESTRICT;
