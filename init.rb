#### Food Finder ####
#
# Launch this Ruby file from the command line
# to get started.
# __FILE__ is this file

APP_ROOT = File.dirname(__FILE__)

# require "#{APP_ROOT}/lib/guide"

# Or we can use either of the following (do the same thing)
# better because it uses correct separators for the OS

# require File.join(APP_ROOT, 'lib', 'guide.rb')
# require File.join(APP_ROOT, 'lib', 'guide')

# $: special ruby variable in a way that __FILE__ is.
# it contains an array of all the folders that Ruby will
# will look in to find the files that we've asked for
# unshift appends the folders to $:

$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

# new instance of class Guide. No func for rest.txt when i made it.

guide = Guide.new('restaurants.txt')
guide.launch!

# Why is ('restaruants.txt') passed into Guide.new