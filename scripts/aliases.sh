function geobox() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -it php81_$1 bash
}

function geobox_serve() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -it php81_$1 php artisan serve --host 0.0.0.0
}

function geobox_psql() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -it postgres_$1 psql -U $1
}

function geobox_deploy_and_serve() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -it php81_$1 bash scripts/deploy_local_with_seed_and_serve.sh
}

function geobox_install() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -it php81_$1 bash scripts/deploy_local_first.sh
}

function geobox_help() {
echo ""
echo "╔═╗╔═╗╔═╗╔╗ ╔═╗═╗ ╦"
echo "║ ╦║╣ ║ ║╠╩╗║ ║╔╩╦╝"
echo "╚═╝╚═╝╚═╝╚═╝╚═╝╩ ╚═"
echo ""
	echo "Available commands : the parameter [instance] refers to the name of the APP corresponding to the container"
	echo ""
	echo "geobox [instance] : enter the docker container"
	echo "geobox_serve [instance] : start the web server (php artisan serve)"
	echo "geobox_psql [instance] : enter psql"
	echo "geobox_deploy_and_serve [instance] : deploy (composer install, migration) and serve"
	echo "geobox_install [instance] : install (only first time)"
	echo ""
}
