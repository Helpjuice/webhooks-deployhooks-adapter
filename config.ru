# frozen_string_literal: true

require './config/environment'

puts "HTTP_ENDPOINT: #{ENV['HTTP_ENDPOINT']}"
puts "AUTHORIZATION: #{ENV['AUTHORIZATION']}"
puts "WEBHOOK_SECRET: #{ENV['WEBHOOK_SECRET']}"

run Rack::URLMap.new('/' => HookAdapter)
