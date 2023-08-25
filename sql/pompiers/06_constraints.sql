--
-- Name: pom_bornes_hydrantes_080 pom_bornes_hydrantes_080_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_bornes_hydrantes_080
    ADD CONSTRAINT pom_bornes_hydrantes_080_pkey PRIMARY KEY (id);


--
-- Name: pom_bornes_hydrantes_500 pom_bornes_hydrantes_500_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_bornes_hydrantes_500
    ADD CONSTRAINT pom_bornes_hydrantes_500_pkey PRIMARY KEY (id);


--
-- Name: pom_bornes_hydrantes pom_bornes_hydrantes_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_bornes_hydrantes
    ADD CONSTRAINT pom_bornes_hydrantes_pkey PRIMARY KEY (id);


--
-- Name: pom_dangers_lignes_ht_10 pom_dangers_lignes_ht_10_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_dangers_lignes_ht_10
    ADD CONSTRAINT pom_dangers_lignes_ht_10_pkey PRIMARY KEY (id);


--
-- Name: pom_dangers_lignes_ht pom_dangers_lignes_ht_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_dangers_lignes_ht
    ADD CONSTRAINT pom_dangers_lignes_ht_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_acces pom_edit_acces_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_acces
    ADD CONSTRAINT pom_edit_acces_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_barrages pom_edit_barrages_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_barrages
    ADD CONSTRAINT pom_edit_barrages_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_cles pom_edit_cles_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_cles
    ADD CONSTRAINT pom_edit_cles_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_dangers pom_edit_dangers_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dangers
    ADD CONSTRAINT pom_edit_dangers_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_detections pom_edit_detections_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_detections
    ADD CONSTRAINT pom_edit_detections_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_dossiers_intervention pom_edit_dossiers_intervention_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dossiers_intervention
    ADD CONSTRAINT pom_edit_dossiers_intervention_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_emplacements pom_edit_emplacements_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_emplacements
    ADD CONSTRAINT pom_edit_emplacements_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_reserves_eau pom_edit_reserves_eau_pkey1; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_reserves_eau
    ADD CONSTRAINT pom_edit_reserves_eau_pkey1 PRIMARY KEY (id);


--
-- Name: pom_edit_risques pom_edit_risques_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_risques
    ADD CONSTRAINT pom_edit_risques_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_situation pom_edit_situation_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_situation
    ADD CONSTRAINT pom_edit_situation_pkey PRIMARY KEY (id);


--
-- Name: pom_edit_tuyaux pom_edit_tuyaux_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_tuyaux
    ADD CONSTRAINT pom_edit_tuyaux_pkey PRIMARY KEY (id);


--
-- Name: pom_gland_serine_cles pom_gland_serine_cles_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_gland_serine_cles
    ADD CONSTRAINT pom_gland_serine_cles_pkey PRIMARY KEY (id);


--
-- Name: pom_gland_serine_dossiers_intervention pom_gland_serine_dossiers_intervention_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_gland_serine_dossiers_intervention
    ADD CONSTRAINT pom_gland_serine_dossiers_intervention_pkey PRIMARY KEY (id);


--
-- Name: pom_personnel pom_personnel_gs_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_personnel
    ADD CONSTRAINT pom_personnel_gs_pkey PRIMARY KEY (id);


--
-- Name: pom_prises_arrosage_sane pom_prises_arrosage_sane_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_prises_arrosage_sane
    ADD CONSTRAINT pom_prises_arrosage_sane_pkey PRIMARY KEY (id);


--
-- Name: pom_secteurs_intervention pom_secteurs_intervention_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_secteurs_intervention
    ADD CONSTRAINT pom_secteurs_intervention_pkey PRIMARY KEY (id);


--
-- Name: pom_secteurs_organisationnels pom_secteurs_organisationnels_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_secteurs_organisationnels
    ADD CONSTRAINT pom_secteurs_organisationnels_pkey PRIMARY KEY (id);


--
-- Name: pom_sites pom_sites_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_sites
    ADD CONSTRAINT pom_sites_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_acces pom_tbl_liste_acces_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_acces
    ADD CONSTRAINT pom_tbl_liste_acces_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_acces_reserves_eau pom_tbl_liste_acces_reserves_eau_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_acces_reserves_eau
    ADD CONSTRAINT pom_tbl_liste_acces_reserves_eau_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_dangers pom_tbl_liste_dangers_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_dangers
    ADD CONSTRAINT pom_tbl_liste_dangers_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_emplacements pom_tbl_liste_emplacements_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_emplacements
    ADD CONSTRAINT pom_tbl_liste_emplacements_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_gestionnaires pom_tbl_liste_gestionnaires_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_gestionnaires
    ADD CONSTRAINT pom_tbl_liste_gestionnaires_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_type_reserves_eau pom_tbl_liste_reserves_eau_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_type_reserves_eau
    ADD CONSTRAINT pom_tbl_liste_reserves_eau_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_risques pom_tbl_liste_risques_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_risques
    ADD CONSTRAINT pom_tbl_liste_risques_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_situation pom_tbl_liste_situation_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_situation
    ADD CONSTRAINT pom_tbl_liste_situation_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_statut_dossiers pom_tbl_liste_statut_dossiers_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_statut_dossiers
    ADD CONSTRAINT pom_tbl_liste_statut_dossiers_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_tuyaux pom_tbl_liste_tuyaux_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_tuyaux
    ADD CONSTRAINT pom_tbl_liste_tuyaux_pkey PRIMARY KEY (id);


--
-- Name: pom_tbl_liste_type_cles pom_tbl_liste_type_cles_pkey; Type: CONSTRAINT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_type_cles
    ADD CONSTRAINT pom_tbl_liste_type_cles_pkey PRIMARY KEY (id);
