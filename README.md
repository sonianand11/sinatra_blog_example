## Intorduction
This is simple Sinatra blog application with User authentication.

## Environment variables
- create `.env` file in root of project folder
- execute `generate_secret` command
- Copy and paste generated string in `.env` file and assign to `SESSION_SECRET` variable
- e.g. it will look like this `SESSION_SECRET=6193166cd9488015c3f2fa777cf457cf2f27fd99b6f95634e18ec39ba41bd9ceef0052e7d18d51e80b8f461a3382d834a593c1dc`

## Database configuration
- create `config/database.yml` file and add following content
```yml
development:
  adapter: sqlite3
  database: db/development.sqlite3

test:
  adapter: sqlite3
  database: db/test.sqlite3

production:
  adapter: sqlite3
  database: db/production.sqlite3
```
- Run `rake db:create` and `rake db:migrate` commands

## Bundle install
- Run command `bundle install` to install all required dependencies
  
## Run server
- Run `rackup config.ru` and it will start server
- Navigate to localhost:9292

## Run RSpec test cases
- Run `SINATRA_ENV=test rake db:create db:migrate`
- Run `rspec` to execute test cases
- Create test cases in `spec` folder

## Directory structure
- Controllers are in `app/controllers`
- Models are in `app/models`
- View are in `app/views`
- Database migrations are in `db`
- Test cases are in `spec`
- Configuration is in `config`
- Extra library is in `lib`
- Public static content is in `public`
