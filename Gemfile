source 'https://rubygems.org'

ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

gem 'grape', '~> 0.11.0'        # APIs DSL
gem "hashie-forbidden_attributes", "~> 0.1.1" # Related to avoid strong parameters and grape
gem "grape-entity", "~> 0.4.5"  # Manage grape responses format

gem 'ransack',     '~> 1.6.6'   # Búsquedas y filtros dinámicos

gem 'devise',      '~> 3.4.1'    # Autenticación, gestión de usuarios

gem 'simple_form', '~> 3.1.0'    # Hacer formularios avanzados

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.3'

# Use HAML instead of ERB in the views
gem 'haml-rails', '~> 0.9.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',   '~> 2.7.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.3'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.2.13'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.1', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  gem 'sqlite3',                '~> 1.3.10'   # Use sqlite3 as the database for Active Record
  gem 'thin',                   '~> 1.6.3'    # Servidor web alternativo a Webrick
  gem 'better_errors',          '~> 2.1.1'    # Mejores errores en desarrollo
  gem 'binding_of_caller',      '~> 0.7.2'    # Necesario para better_errors
  gem 'quiet_assets',           '~> 1.1.0'    # Ocultar los assets en el log
  gem "yard",                   '~> 0.8.7.6'  # Documentación de la API
end

group :test do
  gem 'rspec-rails',          '~> 3.2.1'   # Testing framework
  gem 'factory_girl_rails',   '~> 4.5.0'    # Generador de modelos stub
  gem 'database_cleaner',     '~> 1.4.1'    # Restaurar la BD después de cada test, porque aunque hagamos build, dentro en el programa se graba en BD
end

group :production, :staging do
  gem 'pg',                        '~> 0.18.1'
  gem 'puma',                      '~> 2.11.2' # Buen servidor para heroku
  gem 'rails_serve_static_assets', '~> 0.0.4'  # Servir la documentación en heroku desde /public
  # http://stackoverflow.com/questions/19900093/rails-logger-appears-to-be-duplicating-log-lines
  gem 'rails_12factor',            '~> 0.0.3'  # Cosas de heroku - https://devcenter.heroku.com/articles/ruby-support#injected-plugins
end