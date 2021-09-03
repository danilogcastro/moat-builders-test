# APP IN PRODUCTION

A version of this app running in production can be found in:

> https://moat-builders-danilo.herokuapp.com/

## DATABASE OF ARTISTS

To populate the list of artists in the database, a service object was created to make the API call with the Faraday gem. To use the API to create artists in the database, run the following rake task:

```ruby
rails artist:create_artists
```

## USER ROLES

By default, when users sign up, they are assigned the role of 'user'. This can only be changed through the console, by updating the desired users.

## AUTHENTICATION AND AUTHORIZATION

The Devise and Pundit gems were used to handle authentication and authorization.
