RSpec.configure do |config|

  # Empty the database before each test file
  config.before(:suite) do
    databaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    databaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean  
  end
end

