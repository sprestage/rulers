require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.name = "test"  # default
  t.libs << "test"  # load /test
  t.test_files = Dir['test/*test*.rb']
  t.verbose = true
end
