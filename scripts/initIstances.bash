#/bin/bash


function sleepNow {
  echo " SLEEPING .... "
  sleep 20
}


function printHoquJobStatus {
  cd '../hoqu2'
  echo "HoquJob status:"
  php artisan tinker --execute="dump( \App\Models\HoquJob::first()->status->name )"
}

cd /var/www/html/webmapp/daje


cd hoqu2
php artisan migrate:fresh
php artisan hoqu:create-register-user --password="test"
php artisan route:clear
php artisan config:clear

cd ../prc-features
php artisan migrate:fresh
php artisan hoqu:register-user \
  --endpoint "http://prc-features.mydev" \
  --role "processor" \
  --capabilities 'AddAreaToTracks'
php artisan route:clear
php artisan config:clear


cd ../geohub2
php artisan migrate:fresh
php artisan hoqu:register-user --endpoint "http://geohub2.mydev"
php artisan route:clear
php artisan config:clear

echo "############# GEOHUB 2 send STORE ############"


php artisan tinker --execute="\App\Models\EcTrack::create(['name'=>'test','user_id'=>1, 'description' => 'VALUE TO CHANGE AFTER DONE DONE']);"
php artisan hoqu:store --class="AddAreaToTracks" --featureId=1 --field="description" --model="\App\Models\EcTrack" --input="{}"

printHoquJobStatus
sleepNow

echo "############# HOQU 2 queue: store ############"

cd ../hoqu2
php artisan queue:work --queue store --once

printHoquJobStatus
sleepNow

echo "############# PROCESSOR 2 queue: process ############"

cd ../prc-features
php artisan queue:work --queue process --once

printHoquJobStatus
sleepNow

echo "############# HOQU 2 queue: done ############"

cd ../hoqu2
php artisan queue:work --queue done --once


printHoquJobStatus
