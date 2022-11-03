# OIDC Login App

This is an app that redirects out to Cloudentity for login, 
then shoves the resulting info into the HTTP Session.

Pretty sure the actual access token gets lost after successful login,
but you can find it in the logs by enabling

```properties
logging.level.org.springframework.web.client=DEBUG
```

Then look for `Writing [{access_token=` in the output.

## Usage

Fire up the local app

```shell
mvn spring-boot:run
```

Then visit [localhost:8080], which will redirect you to the CloudEntity login screen.

Login with `alice/alice` or `bob/bob`. You'll get redirected back [localhost:8080], where
your user principal object will be displayed.

Log out at [http://localhost:8080/logout](http://localhost:8080/logout).



## Links

* [OAuth Grant Explainer](https://alexbilbie.com/guide-to-oauth-2-grants/)

[localhost:8080]: (https://localhost:8080)
