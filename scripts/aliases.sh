function geobox() {docker exec -it php81_$1 bash}
function geobox_serve() {docker exec -it php81_$1 php artisan serve --host 0.0.0.0}
function geobox_psql() {docker exec -it postgres_$1 psql -U hoqu2}
function geobox_deploy_and_serve() {docker exec -it php81_$1 bash scripts/deploy_local_with_seed_and_serve.sh}
function geobox_install() {docker exec -it php81_$1 bash scripts/deploy_local_first.sh}


alias hoqu2='docker exec -it php81_hoqu2 bash'
alias hoqu2_serve='docker exec -it php81_hoqu2 php artisan serve --host 0.0.0.0'
alias hoqu2_psql='docker exec -it postgres_hoqu2 psql -U hoqu2'

alias geohub2='docker exec -it php81_geohub2 bash'
alias geohub2_serve='docker exec -it php81_geohub2 php artisan serve --host 0.0.0.0'
alias geohub2_deploy_and_serve='docker exec -it php81_geohub2 bash scripts/deploy_local_with_seed_and_serve.sh'
alias geohub2_psql='docker exec -it postgres_geohub2 psql -U geohub2'

alias prc_features='docker exec -it php81_prc-features bash'
alias prc_features_serve='docker exec -it php81_prc-features php artisan serve --host 0.0.0.0'
alias prc_features_psql='docker exec -it postgres_prc-features psql -U prc-features'

alias prc_taxonomies='docker exec -it php81_prc-taxonomies bash'
alias prc_taxonomies_serve='docker exec -it php81_prc-taxonomies php artisan serve --host 0.0.0.0'
alias prc_taxonomies_psql='docker exec -it postgres_prc-taxonomies psql -U prc-taxonomies'

