# Setup our load paths
libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

module Todotxt
  autoload :Todo,       "todotxt/todo"
  autoload :TodoList,   "todotxt/todolist"
  autoload :TodoFile,   "todotxt/todofile"
  autoload :CLI,        "todotxt/cli"
  autoload :CLIHelpers, "todotxt/clihelpers"
  autoload :Config,     "todotxt/config"
end

require "todotxt/regex"
require "todotxt/version"

module Todotxt
  # Load and run RC file
  RC_PATH = File.expand_path("~/.todotxt.rb")
  load RC_PATH if File.exist?(RC_PATH)
end
