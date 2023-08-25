--
-- Name: pom_edit_acces id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_acces ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_acces_id_seq'::regclass);


--
-- Name: pom_edit_barrages id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_barrages ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_barrages_id_seq'::regclass);


--
-- Name: pom_edit_cles id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_cles ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_cles_id_seq'::regclass);


--
-- Name: pom_edit_dangers id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dangers ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_dangers_id_seq'::regclass);


--
-- Name: pom_edit_detections id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_detections ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_detections_id_seq'::regclass);


--
-- Name: pom_edit_dossiers_intervention id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_dossiers_intervention ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_dossiers_intervention_id_seq'::regclass);


--
-- Name: pom_edit_emplacements id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_emplacements ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_emplacements_id_seq'::regclass);


--
-- Name: pom_edit_reserves_eau id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_reserves_eau ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_reserves_eau_id_seq'::regclass);


--
-- Name: pom_edit_risques id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_risques ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_risques_id_seq'::regclass);


--
-- Name: pom_edit_situation id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_situation ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_situation_id_seq'::regclass);


--
-- Name: pom_edit_tuyaux id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_edit_tuyaux ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_edit_tuyaux_id_seq'::regclass);


--
-- Name: pom_gland_serine_cles id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_gland_serine_cles ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_gland_serine_cles_id_seq'::regclass);


--
-- Name: pom_gland_serine_dossiers_intervention id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_gland_serine_dossiers_intervention ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_gland_serine_dossiers_intervention_id_seq'::regclass);


--
-- Name: pom_prises_arrosage_sane id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_prises_arrosage_sane ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_prises_arrosage_sane_id_seq'::regclass);


--
-- Name: pom_tbl_liste_acces id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_acces ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_acces_id_seq'::regclass);


--
-- Name: pom_tbl_liste_acces_reserves_eau id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_acces_reserves_eau ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_acces_puits_reservoirs_id_seq'::regclass);


--
-- Name: pom_tbl_liste_dangers id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_dangers ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_dangers_id_seq'::regclass);


--
-- Name: pom_tbl_liste_emplacements id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_emplacements ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_emplacements_id_seq'::regclass);


--
-- Name: pom_tbl_liste_gestionnaires id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_gestionnaires ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_gestionnaires_id_seq'::regclass);


--
-- Name: pom_tbl_liste_risques id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_risques ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_risques_id_seq'::regclass);


--
-- Name: pom_tbl_liste_situation id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_situation ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_situation_id_seq'::regclass);


--
-- Name: pom_tbl_liste_statut_dossiers id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_statut_dossiers ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_statut_dossiers_id_seq'::regclass);


--
-- Name: pom_tbl_liste_tuyaux id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_tuyaux ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_tuyaux_id_seq'::regclass);


--
-- Name: pom_tbl_liste_type_cles id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_type_cles ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_type_cles_id_seq'::regclass);


--
-- Name: pom_tbl_liste_type_reserves_eau id; Type: DEFAULT; Schema: pompiers; Owner: <user>
--

ALTER TABLE ONLY pompiers.pom_tbl_liste_type_reserves_eau ALTER COLUMN id SET DEFAULT nextval('pompiers.pom_tbl_liste_puits_reservoirs_id_seq'::regclass)
