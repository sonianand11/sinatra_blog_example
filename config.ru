require './config/environment'

if ActiveRecord::Base.connection.pool.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue'
end

run ApplicationController
use PostsController
use UsersController
use SessionsController
