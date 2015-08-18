# Integration tests for Ekster

Testing Ekster against the XEP-0347 IoT discovery component test suite.

## Setup

* Get all the required sources using `git submodule init` and `git submodule update`
* Install the dependencies:
    * Install [nodejs](http://nodejs.org)
    * Install coffeescript via the node package manager: `npm install coffee-script -g`
    * Install the grunt build environment: `npm install grunt-cli -g`
* Install the dependencies for the test suite:
    - `cd tests; npm install; cd ..`
* Get the test environment up and running: `docker-compose up`

## Running the integration test

The tests are setup to take the address of the XMPP server you are using for testing from an environment variable called `XMPP_HOST`.

You can run the tests in a single command by issuing:

* `XMPP_HOST=<your hostname or IP address> grunt mochaTest |node_modules/bunyan/bin/bunyan`

When you are using `docker-machine` you can use this onliner to run the tests:

* `cd tests; XMPP_HOST=$(docker-machine ip default 2>/dev/null) grunt mochaTest | node_modules/bunyan/bin/bunyan; cd ..`

## License

This code is available under a **MIT License** which means that you can basically do anything you want with this code as long as you provide attribution back to us and don’t hold us liable.

