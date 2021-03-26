# $ rake db:create # create the db
# $ rake db:migrate # run migrations
# $ rake db:drop # delete the db
# $ rake db:reset # combination of the upper three
# $ rake db:schema # creates a schema file of the current database
# $ rake g:migration your_migration # generates a new migration file

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require "active_record"

namespace :db do
  db_config_file = File.open('./config/database.yml')
  db_config = YAML::load(db_config_file)['production']
  desc "Create the database"
  task :connect do
    ActiveRecord::Base.establish_connection(db_config)
  end
  task :create do
    config = db_config.dup
    database = config.delete('database')
    ActiveRecord::Base.establish_connection(config)
    ActiveRecord::Base.connection.create_database(database)
    puts "Database created."
  end

  desc "Migrate the database"
  task :migrate => :connect do
    ActiveRecord::MigrationContext.new("db/migrate/", ActiveRecord::SchemaMigration).migrate
    Rake::Task["db:schema"].invoke
    puts "Database migrated."
  end

  desc "Drop the database"
  task :drop => :connect do
    puts ActiveRecord::Base.connection.inspect
    ActiveRecord::Base.connection.drop_database(db_config["database"])
    puts "Database deleted."
  end

  desc "Reset the database"
  task :reset => ['db:drop', 'db:create', 'db:migrate']

  desc 'Create a db/schema.rb file that is portable against any DB supported by AR'
  task :schema => :connect do
    require 'active_record/schema_dumper'
    filename = "db/schema.rb"
    File.open(filename, "w:utf-8") do |file|
      ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
    end
  end
end

namespace :g do
  desc "Generate migration"
  task :migration do
    name = ARGV[1] || raise("Specify name: rake g:migration your_migration")
    timestamp = Time.now.strftime("%Y%m%d%H%M%S")
    path = File.expand_path("../db/migrate/#{timestamp}_#{name}.rb", __FILE__)
    migration_class = name.split("_").map(&:capitalize).join

    File.open(path, 'w') do |file|
      file.write <<-EOF
class #{migration_class} < ActiveRecord::Migration[6.0]
  def self.up
  end
  def self.down
  end
end
      EOF
    end

    puts "Migration #{path} created"
    abort # needed stop other tasks
  end
end