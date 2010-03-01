require 'rubygems/command_manager'

%w[migrate tumble webhook yank].each do |command|
  require "rubygems/commands/#{command}"
  Gem::CommandManager.instance.register_command command.to_sym
end
