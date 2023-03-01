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
```

