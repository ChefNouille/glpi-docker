# GLPI with Docker-compose

# Prerequisites

- Docker >= 17.06.0
- docker-compose >= 1.20.0

# Quick start

Actually the GLPI version embedded in docker images is GLPI 9.4.0

##### Make MySQL datas directory

```bash
mkdir -p /my/own/datadir
```

##### Start containers

```bash
docker-compose up
```

GLPI will be accessible here: http://localhost:8080

# GLPI migration

This support only GLPI >= 9.3.0 due to a database migration to InnoDB Engine not available in 9.4.0 archive

Please upgrade your GLPI to 9.3.0 before and migrate your tables by executing `scripts/innodb_migration.php`.
(https://glpi-project.org/glpi-9-3-itsm-software/#MYSQL-InnoDB-engine)

##### Backup

On your old serveur, make a backup of your GLPI database.

for exemple with a user named *glpi* and database named *glpi*: `mysql -u glpi -p glpi > glpi.sql`

Make also a backup of `config` GLPI directory who contain `config_db.php`

##### Restore

Uncomment all volumes sections in the `docker-compose` file, and replace path by yours if necessary.
