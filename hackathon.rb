class AppBuilder < Rails::AppBuilder
  def readme
    create_file "README.md", "TODO"
  end
  
  def gemfile
    super
    @generator.gem "bootstrap-sass"
    @generator.gem "simple_form"
    @generator.gem "ember-rails"
    @generator.gem "sendgrid"
    @generator.gem "pg"
    @generator.gem "heroku"
    @generator.gem "slim"
    @generator.gem "draper"
    # User records
    @generator.gem "devise"
    @generator.gem "omniauth-twitter"
    @generator.gem "omniauth-facebook"
    # Social Media
    @generator.gem "twitter"
    @generator.gem "twitter-text"
    @generator.gem "koala"
    # Money
    @generator.gem "stripe"
    # Development tools
    @generator.gem "rspec-rails", group: [:development, :test]
    @generator.gem "capybara", group: [:test]
    @generator.gem "fabrication", group: [:test]
    @generator.gem "spork", group: [:test] 
    @generator.gem "shoulda-matchers", group: [:test]
    @generator.gem "better_errors", group: [:development]
    @generator.gem "binding_of_caller", group: [:development]
    @generator.gem "letter_opener", group: [:development]
    @generator.gem "rb-fsevent", group: [:development]
    @generator.gem "guard-rspec", group: [:test]
    @generator.gem "guard-spork", group: [:test]
    @generator.gem "guard-jasmine", group: [:test]
    @generator.gem "guard-livereload", group: [:test]
    run 'bundle install'
  end

  def test
    # Keep this empty so Rails does not generate unit_test
  end
  
  def leftovers
    # RSPEC
    generate 'rspec:install'

    # Generic Splash Page
    generate :controller, "pages index about"
    route "root to: 'pages\#index'"
    remove_file "public/index.html"

    rake "db:create"

    # Create a place for API Keys

    # Sublime Text Support for Better Errors
    create_file "config/initializers/better_errors.rb", <<-RUBY
BetterErrors.editor = :sublime if defined? BetterErrors
    RUBY

    create_file "config/initializers/setup_mail.rb", <<-RUBY
ActionMailer::Base.smtp_settings = {
  enable_starttls_auto: true,
  address: "smtp.sendgrid.net",
  port: 25,
  domain: ENV["DOMAIN"],
  authentication: :plain,
  user_name: ENV["SENDGRID_USERNAME"],
  password: ENV["SENDGRID_PASSWORD"]
}
  RUBY

    generate "devise:install"
    # "config.scoped_views = true" inside "config/initializers/devise.rb".
    # config.omniauth :github, 'APP_ID', 'APP_SECRET', :scope => 'user,public_repo'
    generate "devise User"
    generate "devise:views users"
    generate "devise Admin"
    generate "devise:views admins"



    # Add Database and API keys to gitignore
    append_file ".gitignore", "config/database.yml"
    run "cp config/database.yml config/example_database.yml"
    append_file ".gitignore", ".env"
    run "cp .env api_keys"

    # Initialize Git
    git :init
    git add: ".", commit: "-m 'initial commit'"

  end
end