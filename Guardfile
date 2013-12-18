# A sample Guardfile
# More info at https://github.com/guard/guard#readme

zeus = File.exists?('.zeus.sock')
rspec_cmd = 'rspec'
rspec_cmd = 'zeus ' + rspec_cmd if zeus
puts rspec_cmd
rspec_options = {
  cmd: rspec_cmd,
  run_all: {
    cmd: rspec_cmd + ' -t ~js -t ~slow',
    message: 'Running all but feature and slow tests'
  },
  focus_on_failed: false,
  keep_failed: true
}

guard :rspec, rspec_options do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
end

