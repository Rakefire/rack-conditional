# coding: UTF-8

require 'bundler/gem_tasks'
require 'rake/testtask'

task 'default' => [:test, :rubocop]

Rake::TestTask.new do |test|
  test.libs << 'test'
  test.test_files = Dir['test/**/spec_*.rb']
  test.verbose = true
end

desc 'rubocop'
task(:rubocop) { sh 'rubocop' }
