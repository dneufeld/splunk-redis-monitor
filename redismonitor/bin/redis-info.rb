#!/usr/bin/env ruby
#
# Retrieves information using the redis info command using redis-cli and dumps into k/v format to stdout
#

Dir.chdir File.dirname(__FILE__)

PORT_NUMBER = 6379
HOSTNAME = '127.0.0.1'

results = `redis-cli -h #{HOSTNAME} -p #{PORT_NUMBER} info`

results = results.gsub(/db(\d+):keys=(\d+),expires=(\d+)/, 'db\1_keys:\2,db\1_expires:\3')

results = results.gsub(/:/, '=')

print results
print "\n"

