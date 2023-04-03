#/bin/bash


function sleepNow {
  echo " SLEEPING .... 4 sec"
  sleep 4
}


function printHoquJobStatus {
  cd '../hoqu2'
  echo "HoquJob status:"
  docker exec php81_hoqu2 php artisan tinker --execute="dump( \App\Models\HoquJob::first()->status->name )"
}

cd ..


echo "hoqu2"
cd hoqu2
docker exec php81_hoqu2 php artisan migrate:fresh
docker exec php81_hoqu2 php artisan hoqu:create-register-user --password="test"
docker exec php81_hoqu2 php artisan optimize

echo "../prc-features"
cd ../prc-features
docker exec php81_prc-features php artisan migrate:fresh
docker exec php81_prc-features php artisan hoqu:register-user \
  --endpoint "http://host.docker.internal:8050" \
  --role "processor" \
  --capabilities 'AddAreaToTracks'
docker exec php81_prc-features php artisan optimize


echo "../geohub2"
cd ../geohub2
docker exec php81_geohub2 php artisan migrate:fresh
docker exec php81_geohub2 php artisan hoqu:register-user --endpoint "http://host.docker.internal:8001"
docker exec php81_geohub2 php artisan optimize

echo "############# GEOHUB 2 send STORE ############"


docker exec php81_geohub2 php artisan tinker --execute="\App\Models\EcTrack::create(['name'=>'test','user_id'=>1, 'description' => 'VALUE TO CHANGE AFTER DONE DONE']);"
docker exec --env-file .env php81_geohub2 php artisan hoqu:store --class="AddAreaToTracks" --featureId=1 --field="description" --model="\App\Models\EcTrack" --input="{}"

printHoquJobStatus
sleepNow

echo "############# HOQU 2 queue: store ############"

cd ../hoqu2
docker exec --env-file .env php81_hoqu2 php artisan queue:work --queue store --once

printHoquJobStatus
sleepNow

echo "############# PROCESSOR 2 queue: process ############"

cd ../prc-features
docker exec --env-file .env php81_prc-features php artisan queue:work --queue process --once

printHoquJobStatus
sleepNow

echo "############# HOQU 2 queue: done ############"

cd ../hoqu2
docker exec --env-file .env php81_hoqu2 php artisan queue:work --queue done --once


printHoquJobStatus
