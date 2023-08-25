--
-- Name: secu_edit_acces_immeubles secu_edit_acces_immeubles_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_acces_immeubles
    ADD CONSTRAINT secu_edit_acces_immeubles_pkey PRIMARY KEY (id);


--
-- Name: secu_edit_points_acces secu_edit_points_acces_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_points_acces
    ADD CONSTRAINT secu_edit_points_acces_pkey PRIMARY KEY (id);


--
-- Name: secu_edit_regies secu_edit_regies_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_regies
    ADD CONSTRAINT secu_edit_regies_pkey PRIMARY KEY (id);


--
-- Name: secu_edit_signalisation secu_edit_signalisation_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_signalisation
    ADD CONSTRAINT secu_edit_signalisation_pkey PRIMARY KEY (id);


--
-- Name: secu_tbl_liste_points_acces secu_tbl_liste_points_acces_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_tbl_liste_points_acces
    ADD CONSTRAINT secu_tbl_liste_points_acces_pkey PRIMARY KEY (id);


--
-- Name: secu_tbl_liste_signalisation secu_tbl_liste_signalisation_pkey; Type: CONSTRAINT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_tbl_liste_signalisation
    ADD CONSTRAINT secu_tbl_liste_signalisation_pkey PRIMARY KEY (id);
