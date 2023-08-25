--
-- Name: secu_edit_acces_immeubles_geom; Type: INDEX; Schema: securite; Owner: <user>
--

CREATE INDEX secu_edit_acces_immeubles_geom ON securite.secu_edit_acces_immeubles USING gist (geom);


--
-- Name: secu_edit_points_acces_geom; Type: INDEX; Schema: securite; Owner: <user>
--

CREATE INDEX secu_edit_points_acces_geom ON securite.secu_edit_points_acces USING gist (geom);


--
-- Name: secu_edit_regies_geom; Type: INDEX; Schema: securite; Owner: <user>
--

CREATE INDEX secu_edit_regies_geom ON securite.secu_edit_regies USING gist (geom);


--
-- Name: secu_edit_signalisation_geom; Type: INDEX; Schema: securite; Owner: <user>
--

CREATE INDEX secu_edit_signalisation_geom ON securite.secu_edit_signalisation USING gist (geom);
