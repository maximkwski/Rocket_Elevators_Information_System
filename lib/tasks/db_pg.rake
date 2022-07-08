require 'pg'
task spec: ["pg:db:test:prepare"]

namespace :pg do
   desc "Manage database"

  namespace :db do |ns|

    task :stop do
      Rake::Task["systemctl stop postgresql-14.4.service"].invoke
    end

    task :start do
      Rake::Task["systemctl start postgresql-14.4.service"].invoke
    end

    task :drop do
      Rake::Task["db:drop"].invoke
    end
    

    task :create do
      Rake::Task["db:create"].invoke
    end

    task :setup do
      Rake::Task["db:setup"].invoke
    end

    task :migrate do
      Rake::Task["db:migrate"].invoke
    end

    task :rollback do
      Rake::Task["db:rollback"].invoke
    end

    task :seed do 
      Rake::Task["db:seed"].invoke
    end

    task :version do
      Rake::Task["db:version"].invoke
    end

    namespace :schema do
      task :load do
        Rake::Task["db:schema:load"].invoke
      end

      task :dump do
        Rake::Task["db:schema:dump"].invoke
      end
    end

    namespace :test do
      task :prepare do
        Rake::Task["db:test:prepare"].invoke
      end
    end

    # append and prepend proper tasks to all the tasks defined here above
    ns.tasks.each do |task|
      task.enhance ["pg:set_custom_config"] do
        Rake::Task["pg:revert_to_original_config"].invoke
      end
    end
  end

  task :set_custom_config do
    # save current vars
    @original_config = {
      env_schema: ENV['SCHEMA'],
      config: Rails.application.config.dup
    }

    # set config variables for custom database
    ENV['SCHEMA'] = "db_pg/schema.rb"
    Rails.application.config.paths['db'] = ["db_pg"]
    Rails.application.config.paths['db/migrate'] = ["db_pg/migrate"]
    Rails.application.config.paths['db/seeds'] = ["db_pg/seeds.rb"]
    Rails.application.config.paths['config/database'] = ["config/database_pg.yml"]
  end

  task :revert_to_original_config do
    # reset config variables to original values
    ENV['SCHEMA'] = @original_config[:env_schema]
    Rails.application.config = @original_config[:config]
  end

  

  desc 'Say hello!'
  task :hello_world do
  puts "Hello DUDEEEEEES"
  end



  # task :seed => :enviroment do 
  #   Dir.glob("#{Rails.root}/db/scheema.rb").each { |t| require t }
  #   FileUtils.mkdir(dir) unless Dir.exists?(dir)
  #   ActiveRecord::Base.descendants.each do |t|
  #   end

  # end


end