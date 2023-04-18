# geobox

# GEOBOX2

## Table of contents
[Introduction](#introduction)  
[Architecture](https://github.com/webmappsrl/geobox/blob/main/documentation/ARCHITECTURE.md)  
[How to install a local instance of GEOBOX2](https://github.com/webmappsrl/geobox/blob/main/documentation/INSTALL.md)  
[Aliases](#aliases)  


## Introduction
The GEOBOX (GBX) is a digital ecosystem that simplifies the process of publishing georeferenced databases. The main publishing process can be divided into four steps:

1. Creation / updating of data by editor (CRUD)
2. Data enrichment in an automatic and / or semi-automatic way
3. Publication of the data on Frontend Applications
4. Use of data by end users


## TODO: General info on geobox2 local INSTALL

## Aliases
In order to simplify in a local develop environment the access to different docker cointainers download this repository and add aliases script to your shell configuration file (eg. .zshrc)

```sh
git clone git@github.com:webmappsrl/geobox.git
```

Add the following line to your shell configuration file:

```sh
source /path/to/geobox/scripts/aliases.sh
```

After this reload the configuration (or close and open again your shell) and the following commands will be available on your shell:

```sh
geobox [instance]
geobox_serve [instance]
geobox_psql [instance]
geobox_deploy_andserve [instance]
geobox_install [instance]
geobox_dump [instance]
geobox_dump_archive [instance]
geobox_dump_restore [instance]
```

## Create a dump of the database
To Create a dump if the database use this command:
```sh
geobox_dump_archive [instance]
```
It creates a dump of the database under the /storage/backups of the given instance, first one named with the current date and a copy of it named with last-dump.sql.gz.
And it automatically removes the dumps older than 14 days.

## Restore the last-dump.sql from the AWS
In order to restore the lates dump of the production use this command:
```sh
geobox_dump_restore [instance]
```
**Important Note**
To make it work in you local invironment you have to create the symbolic link of /var/www/html to you instances repository. Example:
```sh
sudo mkdir /var/www
sudo ln -s /Users/Pedram/code/maphub /var/www/html
```
And copy the AWS credentials from .env of another project or contact the Developer.
```sh
AWS_DEFAULT_REGION
AWS_DUMPS_SECRET_ACCESS_KEY
AWS_DUMPS_BUCKET
AWS_DUMPS_ACCESS_KEY_ID
```

This command will wipe you database and download the latest copy pf the database from AWS and insert it in the instance's database.
