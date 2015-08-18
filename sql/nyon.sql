-- Rename tables
ALTER TABLE sdis.acces                     RENAME TO sd_acces;
ALTER TABLE sdis.barrages                  RENAME TO sd_barrages;
ALTER TABLE sdis.bornes_hydrantes          RENAME TO sd_bornes_hydrantes;
ALTER TABLE sdis.cles                      RENAME TO sd_cles;
ALTER TABLE sdis.codes                     RENAME TO sd_codes;
ALTER TABLE sdis.dangers                   RENAME TO sd_dangers;
ALTER TABLE sdis.detections                RENAME TO sd_detections;
ALTER TABLE sdis.dossiers_intervention     RENAME TO sd_dossiers_intervention;
ALTER TABLE sdis.emplacements              RENAME TO sd_emplacements;
ALTER TABLE sdis.personnel_liste           RENAME TO sd_personnel_liste;
ALTER TABLE sdis.puits_reservoirs          RENAME TO sd_puits_reservoirs;
ALTER TABLE sdis.risques                   RENAME TO sd_risques;
ALTER TABLE sdis.secteurs_intervention     RENAME TO sd_secteurs_intervention;
ALTER TABLE sdis.secteurs_organisationnels RENAME TO sd_secteurs_organisationnels;
ALTER TABLE sdis.signalisation             RENAME TO sd_signalisation;
ALTER TABLE sdis.sites                     RENAME TO sd_sites;
ALTER TABLE sdis.situation                 RENAME TO sd_situation;
ALTER TABLE sdis.tuyaux                    RENAME TO sd_tuyaux;

-- Rename views
ALTER VIEW sdis.batiments RENAME TO sd_batiments;
ALTER VIEW sdis.personnel RENAME TO sd_personnel;
