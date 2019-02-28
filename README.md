# GLPI with Docker-compose

# Prerequisites

- Docker >= 17.06.0
- docker-compose >= 1.20.0

# Quick start

Actually the GLPI version embedded in docker images is GLPI 9.4.0

Just run:
```bash
docker-compose up
```

GLPI will be accessible here: http://localhost:8080

# GLPI migration

### Backup

On your old serveur, make a backup of your GLPI database.

for exemple with a user named *glpi* and database named *glpi*: `mysql -u glpi -p glpi > glpi.sql`

Make also a backup of `config` GLPI directory who contain `config_db.php`

### Restore

Uncomment all volumes sections in the `docker-compose` file, and replace path by yours if necessary.
