# Jobs for Processor Instances

The Processor instances in this Laravel project contain only Laravel jobs that are implementations of the `AbstractProcessorJob` abstract class, which can be found in the `vendor/wm/wm-package/src/Jobs` directory. This abstract class extends the default Laravel Job and implements the `ProcessorJobInterface` interface. Processor jobs that inherit from this abstract class have the following characteristics:

- They have an `hoqu_job_id` and `input` properties inside their payloads.
- They have some methods to interact with these properties.
- They have a `handle` method (the default Laravel method of job classes) that uses the `done` and **the `process` method, which is an abstract method that must be implemented by the subclass**.
- They have a `done` method that updates the `status` and `output` properties of the associated `HoquJob` model.

To create a new Processor job, you can create a new class that extends the `AbstractProcessorJob` class. You only need to implement the `process` method, which takes one `$input` parameter with the necessary data to do the job and returns the job output. You can see an example in the `PRC-FEATURES` instance repository on GitHub in the `app/Jobs/AddAreaToTracks.php` file ([https://github.com/webmappsrl/prc-features](https://github.com/webmappsrl/prc-features)).
