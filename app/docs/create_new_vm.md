First, I 
[Set up a VM on Google Cloud Platform](https://github.com/AgileVentures/AgileVentures/blob/master/devops/gcp-dokku-setup.md)

Next, create an app on dokku, with:
```
$ dokku apps:create charity-commission-api-production
```
Then, add a Mysql plugin with: 
```
$ sudo dokku plugin:install https://github.com/dokku/dokku-mysql.git mysql
```
After, create a mysql service, which now does not allow hypens, with:
```
$ dokku mysql:create charity_commission_api_production
```
**IMPORTANT**, set the config for the Mysql schema before linking the database to the app,with:
```
$ dokku config:set --no-restart charity-commission-api-production MYSQL_DATABASE_SCHEME=mysql2
```
Now, you can link the database to the app with:
```
$ dokku mysql:link charity_commission_api_production charity-commission-api-production
```
Finally, you can push the app locally from the command line, with:
```
$ git push charity-commission-api-production-gcp master
``` 