# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
map "/vanilla-auth" do
run Rails.application
end