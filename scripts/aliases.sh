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

function geobox_dump() {
	if [ -z "$1" ]; then geobox_help && return; fi
	docker exec -i postgres_$1 pg_dump -U $1 $1
}

function geobox_dump_archive() {
	fileName="dump_$(date +"%d.%m.%y").sql"
	backupDirPath="/var/www/html/$1/storage/backups"
	backupFilePath="$backupDirPath/$fileName"

	backupDayNum=14
	if [ ! -d "$backupDirPath" ]; then
		mkdir "$backupDirPath"
	fi

	geobox_dump $1 > "$backupFilePath"
	if [ $? -eq 0 ]; then
			cd "$backupDirPath"
			cat "$backupFilePath" > "last-dump.sql"
			gzip -f "$fileName"
			gzip -f "last-dump.sql"
			find "$backupDirPath" -type f -mtime +$backupDayNum -name "*.gz" -delete
			docker exec -i php81_$1 php artisan db:upload_db_aws "$fileName.gz"
			cd "/var/www/html/$1"
	fi
}

function geobox_dump_restore() {
	if [ -z "$1" ]; then geobox_help && return; fi

	if [ -z "$GEOBOX_PATH" ]; then
		echo "--ERROR: It seems that the environment variable GEOBOX_PATH does not exist in your .zshrc please follow the GEOBOX instruction: https://github.com/webmappsrl/geobox#aliases-and-global-shell-variable" && return;
	fi
	if [ ! -d "$GEOBOX_PATH" ]; then
		echo "--ERROR: It seems that the environment variable GEOBOX_PATH does not have a existing path in your .zshrc please follow the GEOBOX instruction: https://github.com/webmappsrl/geobox#aliases-and-global-shell-variable" && return;
	fi

	backupDirPath="$GEOBOX_PATH/$1/storage/app/database"
	docker exec -i php81_$1 php artisan db:wipe
	docker exec -i php81_$1 php artisan db:download && zless "$backupDirPath/last-dump.sql.gz" | docker exec -i postgres_$1 psql -U $1 $1
	docker exec -i php81_$1 php artisan migrate
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
	echo "geobox_dump [instance] : creates a dump of the database of the given instance on the fly without saving it. Usage in geobox_dump_archive()."
	echo "geobox_dump_archive [instance] : dump the database and save it as .sql.gz for tha last 14 days"
	echo "geobox_dump_restore [instance] : downloads and restores the latest dump from AWS to the database"
	echo ""
}
