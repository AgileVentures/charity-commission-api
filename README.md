Charity Commission API
======================

System Architecture
-------------------

![](https://dl.dropbox.com/s/whsdhrmrynvdt4f/Screenshot%202019-01-22%2009.39.58.png?dl=0)

https://docs.google.com/drawings/d/1wKyl0sJRd6paiJ2WIocXEwZpT0xaHfQj-jx_NNEkBMQ/edit)

Example of JSON output from the charity commission api:

![](https://dl.dropbox.com/s/7bfhzuygktx70hw/Screenshot%202019-02-04%2016.31.57.png?dl=0)

Components
---------------

* [Charity Commission Data Dumps](http://data.charitycommission.gov.uk/)
* Charity Commission API Rails app - this repo
* [Charity Commission Extract](https://github.com/AgileVentures/charity-commission-extract)
* [LocalSupport](https://github.com/AgileVentures/LocalSupport)
  - [import service](https://github.com/AgileVentures/LocalSupport/blob/develop/app/services/import_organisations.rb)
