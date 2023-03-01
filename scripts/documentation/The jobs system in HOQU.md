# Custom Development Features for Laravel HoquJob Entity Creation and Laravel Jobs Creation

This readme provides instructions for custom development features related to creating a new HoquJob entity and Laravel jobs creation. These features are specific to the Hoqu instance, and they enable you to create new jobs and attach them to specific queues. Follow the steps below to implement these features in your Laravel project.

## Laravel Jobs Creation

To create a new job, copy the `app/Jobs/DoneJob.php` file to the `app/Jobs/` folder and rename it with the name of the new job in Pascal case. This new file represents a queueable Laravel job that extends the `AbstractOwnedJob` abstract class. This abstract class has the peculiarity of having an `HoquJob` model related to it.

To know how is possible the connection between an `HoquJob` and a Laravel job, you can see the `__constructor` method of the abstract class or the implementation of the new job. In addition, you can see the `app/Listeners/JobEventsSubscriber.php` file, which contains a listener for each new Laravel job queued.

## Queues

To attach a job to a specific queue, use the methods of the `HoquJobService` class in `app/Services`. At present, there are two queues: `store` and `done`. You can create additional queues if necessary.

To activate queues, use the commands listed in the [Laravel documentation](https://laravel.com/docs/10.x/queues#running-the-queue-worker). Remember to specify the queue you want to run with the `--queue` parameter.

## Events

Laravel jobs are attached to many events that you can listen to and do something when the event occurs. To learn about these events, refer to the [Laravel documentation on event subscriber classes](https://laravel.com/docs/10.x/events#event-subscribers).

You can find a list of queue events in the `Illuminate\Queue\Events` namespace. To see the full list of queue events, check the `vendor/laravel/framework/src/Illuminate/Queue/Events` folder after running `composer install`.

To implement an event subscriber, use the `app/Listeners/JobEventsSubscriber.php` file as an example. You can copy it or modify it to attach other event listeners.

## Conclusion

With these custom development features, you can easily create new jobs and attach them to specific queues in Laravel. You can also listen to events and do things when they occur. Use this documentation as a guide to implement these features in your project.
