--
-- Name: secu_edit_acces_immeubles id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_acces_immeubles ALTER COLUMN id SET DEFAULT nextval('securite.secu_edit_acces_immeubles_id_seq'::regclass);


--
-- Name: secu_edit_points_acces id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_points_acces ALTER COLUMN id SET DEFAULT nextval('securite.secu_edit_points_acces_id_seq'::regclass);


--
-- Name: secu_edit_regies id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_regies ALTER COLUMN id SET DEFAULT nextval('securite.secu_edit_regies_id_seq'::regclass);


--
-- Name: secu_edit_signalisation id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_edit_signalisation ALTER COLUMN id SET DEFAULT nextval('securite.secu_edit_signalisation_id_seq'::regclass);


--
-- Name: secu_tbl_liste_points_acces id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_tbl_liste_points_acces ALTER COLUMN id SET DEFAULT nextval('securite.secu_tbl_liste_points_acces_id_seq'::regclass);


--
-- Name: secu_tbl_liste_signalisation id; Type: DEFAULT; Schema: securite; Owner: <user>
--

ALTER TABLE ONLY securite.secu_tbl_liste_signalisation ALTER COLUMN id SET DEFAULT nextval('securite.secu_tbl_liste_signalisation_id_seq'::regclass);
