Before do
  DatabaseCleaner.start
  page.driver.options[:resynchronize] = true 
end

After do |scenario|
  DatabaseCleaner.clean
end
