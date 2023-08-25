# Modèle de données SDIS

## Documentation

* [Catalogue des objets](doc/catalog.md)

## PostgreSQL/PostGIS

### Schéma `pompiers`

* [Schéma](sql/pompiers/01_schema.sql)
* [Fonctions](sql/pompiers/02_functions.sql)
* [Tables](sql/pompiers/03_tables.sql)
* [Vues](sql/pompiers/04_views.sql)
* [Default](sql/pompiers/05_default.sql)
* [Contraintes](sql/pompiers/06_constraints.sql)
* [Indexes](sql/pompiers/07_indexes.sql)
* [Triggers](sql/pompiers/08_triggers.sql)
* [Contraintes étrangères](sql/pompiers/09_fk_constraints.sql)
* [Privilèges](sql/pompiers/10_acl.sql)

### Schéma `securite`

* [Schéma](sql/securite/01_schema.sql)
* [Tables](sql/securite/02_tables.sql)
* [Vues](sql/securite/03_views.sql)
* [Default](sql/securite/04_default.sql)
* [Contraintes](sql/securite/05_constraints.sql)
* [Indexes](sql/securite/06_indexes.sql)
* [Contraintes étrangères](sql/securite/07_fk_constraints.sql)
* [Privilèges](sql/securite/08_acl.sql)

## MapServer

### Couches "Pompiers"

* [Mapfile](mapserver/pompiers/mapfile.map.tmpl)
* [Symboles](mapserver/pompiers/symbols.sym)

### Couches "Sécurité" (Pompiers / Police / Ambulance)

* [Mapfile](mapserver/securite/mapfile.map.tmpl)
* [Symboles](mapserver/securite/symbols.sym)
