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
 - GITREPO: 
 - URLDEV: 
 - URLPROD: 
 - STATO DI SVILUPPO: DA INIZIARE


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

### ORCHESTRATOR
 - DOCKER_SERVE_PORT:8099
 - DOCKER_PHP_PORT:9199
 - DOCKER_PSQL_PORT: 5599
 - GITREPO: https://github.com/webmappsrl/orchestrator
 - URLDEV: https://orchestrator.dev.maphub.it
 - URLPROD: 
 - STATO DI SVILUPPO: IN PROGRESS


## TABLE VISUALIZATON

|                       | **Geohub**                                   | **OSM2CAI** | **EUMA**    | **SISTECO** | **PRC_FEATURES**                                        | **PRC_TAXONOMIES**                                         | **PRC_IMAGES** | **HOQU**                                   | **ORCHESTRATOR**                                       |
|-----------------------|----------------------------------------------|-------------|-------------|-------------|---------------------------------------------------------|------------------------------------------------------------|----------------|--------------------------------------------|--------------------------------------------------------|
| **DOCKER_SERVE_PORT** | 8001                                         | 8002        | 8003        | 8004        | 8050                                                    | 8051                                                       | 8052           | 8000                                       | 8099                                                   |
| **DOCKER_PHP_PORT**   | 9101                                         | 9102        | 9103        | 9104        | 9150                                                    | 9151                                                       | 9152           | 9100                                       | 9199                                                   |
| **DOCKER_PSQL_PORT**  | 5501                                         | 5502        | 5503        | 5504        | 5550                                                    | 5551                                                       | 5552           | 5500                                       | 5599                                                   |
| **GITREPO**           | [git](https://github.com/webmappsrl/geohub2) |             |             |             | [git](https://github.com/webmappsrl/prc-features)       | [git](https://github.com/webmappsrl/prc-taxonomies)        |                | [git](https://github.com/webmappsrl/hoqu2) | [git](https://github.com/webmappsrl/orchestrator)      |
| **URLDEV**            | [geohub.dev](https://geohub.dev.maphub.it)   |             |             |             | [prc-feartures.dev](https://prc-features.dev.maphub.it) | [prc-taxonomies.dev](https://prc-taxonomies.dev.maphub.it) |                | [hoqu.dev](https://hoqu.dev.maphub.it)     | [orchestrator.dev](https://orchestrator.dev.maphub.it) |
| **URLPROD**           | [geohub](https://geohub.maphub.it)           |             |             |             | [prc-feartures](https://prc-features.maphub.it)         | [prc-taxonomies](https://prc-taxonomies.maphub.it)         |                | [hoqu](https://hoqu.maphub.it)             | [orchestrator](https://orchestrator.maphub.it)         |
| **STATO DI SVILUPPO** | IN PROGRESS                                  | DA INIZIARE | DA INIZIARE | DA INIZIARE | IN PROGRESS                                             | IN PROGRESS                                                | DA INIZIARE    | IN PROGRESS                                | IN PROGRESS                                            |