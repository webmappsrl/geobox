function geobox() {docker exec -it php81_$1 bash}
function geobox_serve() {docker exec -it php81_$1 php artisan serve --host 0.0.0.0}
function geobox_psql() {docker exec -it postgres_$1 psql -U $1}
function geobox_deploy_and_serve() {docker exec -it php81_$1 bash scripts/deploy_local_with_seed_and_serve.sh}
function geobox_install() {docker exec -it php81_$1 bash scripts/deploy_local_first.sh}