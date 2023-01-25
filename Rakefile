require 'rspec'

task :rubocop do
  sh "rubocop --format simple || true"
end

task :spec do
  sh "rspec spec/slot_machine_spec.rb"
end

task default: [:rubocop, :spec]