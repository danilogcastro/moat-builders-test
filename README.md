# APP IN PRODUCTION

A version of this app running in production can be found in:

> https://moat-builders-danilo.herokuapp.com/

## CLONING THE PROJECT

1. Fork the project

2. In the repository's page, click on "Code"

3. Choose which way you want to clone the project:

> HTTPS: https://github.com/<YOUR_USERNAME>/moat-builders-test.git

or

> SSH: git@github.com:<YOUR_USERNAME>/moat-builders-test.git

4. Open the terminal, and in the folder where you want to clone the project:

If HTTPS:

```
git clone https://github.com/<YOUR_USERNAME>/moat-builders-test.git
```

If SSH:

```
git clone git@github.com:<YOUR_USERNAME>/moat-builders-test.git
```

5. Type

```
cd moat-builders-test
```

### Inside the folder, to test the application:

1. Run the necessary migrations and installations:

```ruby
bundle install
rails db:create
rails db:migrate
```

2. In a new tab, run:

```ruby
rails s
```

3. Go to your browser:

```
localhost:300
```

## USER ROLES

By default, when users sign up, they are assigned the role of 'user'. This can only be changed through the console, by updating the desired users.

A seed was made with two users, one admin and one regular. To access their accounts:

Admin:

> username: admin, password: 123456

Regular user:

> usermane: user, password: 123456

## DATABASE OF ARTISTS

To populate the list of artists in the database, a service object was created to make the API call with the Faraday gem. To use the API to create artists in the database, run the following rake task:

```ruby
rails artist:create_artists
```

## AUTHENTICATION AND AUTHORIZATION

The Devise and Pundit gems were used to handle authentication and authorization.
