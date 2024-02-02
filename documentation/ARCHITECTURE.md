# Architettura del GEOBOX2:

## Caller (MDS / Main Data Store)

### Geohub

- DOCKER_SERVE_PORT:8001
- DOCKER_PHP_PORT:9101
- DOCKER_PSQL_PORT: 5501
- GITREPO: https://github.com/webmappsrl/geohub2
- URLDEV: https://geohub.dev.maphub.it
- URLPROD:
- STATO DI SVILUPPO: IN PROGRESS

### OSM2CAI

- DOCKER_SERVE_PORT:8002
- DOCKER_PHP_PORT:9102
- DOCKER_PSQL_PORT: 5502
- GITREPO:
- URLDEV:
- URLPROD:
- STATO DI SVILUPPO: DA INIZIARE

### EUMA

- DOCKER_SERVE_PORT:8003
- DOCKER_PHP_PORT:9103
- DOCKER_PSQL_PORT: 5503
- GITREPO:
- URLDEV:
- URLPROD:
- STATO DI SVILUPPO: DA INIZIARE

### SISTECO

- DOCKER_SERVE_PORT:8004
- DOCKER_PHP_PORT:9104
- DOCKER_PSQL_PORT: 5504
- GITREPO: https://github.com/webmappsrl/sisteco2
- URLDEV: https://sisteco.dev.maphub.it
- URLPROD: https://sisteco.maphub.it
- STATO DI SVILUPPO: DA INIZIARE
-

### MPT2

- DOCKER_SERVE_PORT:8005
- DOCKER_PHP_PORT:9105
- DOCKER_PSQL_PORT: 5505
- GITREPO: https://github.com/webmappsrl/mpt2
- URLDEV: https://mpt.dev.maphub.it
- URLPROD: https://mpt.maphub.it
- STATO DI SVILUPPO: IN PROGRESS

### OSMFEATURES

- DOCKER_SERVE_PORT:8006
- DOCKER_PHP_PORT:9106
- DOCKER_PSQL_PORT: 5506
- GITREPO: https://github.com/webmappsrl/osmfeatures
- URLDEV: https://osmfeatures.dev.maphub.it
- URLPROD: https://osmfeatures.maphub.it
- STATO DI SVILUPPO: IN PROGRESS

- ### CARG

- DOCKER_SERVE_PORT:8007
- DOCKER_PHP_PORT:9107
- DOCKER_PSQL_PORT: 5507
- GITREPO: https://github.com/webmappsrl/carg
- URLDEV: https://carg.dev.maphub.it
- URLPROD:
- STATO DI SVILUPPO: IN PROGRESS

## Processor (BDS / Basic Data Store)

### PRC_FEATURES

- DOCKER_SERVE_PORT:8050
- DOCKER_PHP_PORT:9150
- DOCKER_PSQL_PORT: 5550
- GITREPO: https://github.com/webmappsrl/prc-features
- URLDEV: https://prc-features.dev.maphub.it
- URLPROD:
- STATO DI SVILUPPO: IN PROGRESS

### PRC_TAXONOMIES

- DOCKER_SERVE_PORT:8051
- DOCKER_PHP_PORT:9151
- DOCKER_PSQL_PORT: 5551
- GITREPO: https://github.com/webmappsrl/prc-taxonomies
- URLDEV: https://prc-taxonomies.dev.maphub.it
- URLPROD:
- STATO: IN PROGRESS

### PRC_IMAGES

- DOCKER_SERVE_PORT:8052
- DOCKER_PHP_PORT:9152
- DOCKER_PSQL_PORT: 5552
- GITREPO:
- URLDEV:
- URLPROD:
- STATO DI SVILUPPO: DA INIZIARE

## General Purpose

### HOQU

- DOCKER_SERVE_PORT:8000
- DOCKER_PHP_PORT:9100
- DOCKER_PSQL_PORT: 5500
- GITREPO: https://github.com/webmappsrl/hoqu2
- URLDEV: https://hoqu.dev.maphub.it
- URLPROD:
- STATO DI SVILUPPO: IN PROGRESS

### DEM

- DOCKER_SERVE_PORT:8098
- DOCKER_PHP_PORT:9198
- DOCKER_PSQL_PORT: 5598
- GITREPO: https://github.com/webmappsrl/dem
- URLDEV: https://dem.dev.maphub.it
- URLPROD: https://dem.maphub.it
- STATO DI SVILUPPO: IN PROGRESS

### ORCHESTRATOR

- DOCKER_SERVE_PORT:8099
- DOCKER_PHP_PORT:9199
- DOCKER_PSQL_PORT: 5599
- GITREPO: https://github.com/webmappsrl/orchestrator
- URLDEV: https://orchestrator.dev.maphub.it
- URLPROD: https://orchestrator.maphub.it
- STATO DI SVILUPPO: IN PROGRESS

## TABLE VISUALIZATON

|                    | **DOCKER_SERVE_PORT** | **DOCKER_PHP_PORT** | **DOCKER_PSQL_PORT** | **GITREPO**                                         | **URLDEV**                                                 | **URLPROD**                                        | **STATO DI SVILUPPO** |
| ------------------ | --------------------- | ------------------- | -------------------- | --------------------------------------------------- | ---------------------------------------------------------- | -------------------------------------------------- | --------------------- |
| **Geohub**         | 8001                  | 9101                | 5501                 | [git](https://github.com/webmappsrl/geohub2)        | [geohub.dev](https://geohub.dev.maphub.it)                 | [geohub](https://geohub.maphub.it)                 | IN PROGRESS           |
| **OSM2CAI**        | 8002                  | 9102                | 5502                 |                                                     |                                                            |                                                    | DA INIZIARE           |
| **EUMA**           | 8003                  | 9103                | 5503                 |                                                     |                                                            |                                                    | DA INIZIARE           |
| **SISTECO**        | 8004                  | 9104                | 5504                 | [git](https://github.com/webmappsrl/sisteco2)       | [sisteco.dev](https://sisteco.dev.maphub.it)               | [sisteco](https://sisteco.maphub.it)               | IN PROGRESS           |
| **MPT2**           | 8005                  | 9105                | 5505                 | [git](https://github.com/webmappsrl/mpt2)           | [mpt.dev](https://mpt.dev.maphub.it)                       | [mpt](https://mpt.maphub.it)                       | IN PROGRESS           |
| **OSMFEATURES**    | 8006                  | 9106                | 5506                 | [git](https://github.com/webmappsrl/osmfeatures)    | [mpt.dev](https://osmfeatures.dev.maphub.it)               | [osmfeatures](https://osmfeatures.maphub.it)       | IN PROGRESS           |
| **PRC_FEATURES**   | 8050                  | 9150                | 5550                 | [git](https://github.com/webmappsrl/prc-features)   | [prc-feartures.dev](https://prc-features.dev.maphub.it)    | [prc-feartures](https://prc-features.maphub.it)    | IN PROGRESS           |
| **PRC_TAXONOMIES** | 8051                  | 9151                | 5551                 | [git](https://github.com/webmappsrl/prc-taxonomies) | [prc-taxonomies.dev](https://prc-taxonomies.dev.maphub.it) | [prc-taxonomies](https://prc-taxonomies.maphub.it) | IN PROGRESS           |
| **PRC_IMAGES**     | 8052                  | 9152                | 5552                 |                                                     |                                                            |                                                    | DA INIZIARE           |
| **HOQU**           | 8000                  | 9100                | 5500                 | [git](https://github.com/webmappsrl/hoqu2)          | [hoqu.dev](https://hoqu.dev.maphub.it)                     | [hoqu](https://hoqu.maphub.it)                     | IN PROGRESS           |
| **DEM**            | 8098                  | 9198                | 5598                 | [git](https://github.com/webmappsrl/dem)            | [dem.dev](https://dem.dev.maphub.it)                       | [dem](https://dem.maphub.it)                       | IN PROGRESS           |
| **ORCHESTRATOR**   | 8099                  | 9199                | 5599                 | [git](https://github.com/webmappsrl/orchestrator)   | [orchestrator.dev](https://orchestrator.dev.maphub.it)     | [orchestrator](https://orchestrator.maphub.it)     | IN PROGRESS           |
