#\ -p 5555

require 'sinatra'
require './app'

configure(:production){ p "I'm production" }
configure(:development){ p "I'mma dev mode" }
configure(:sassycustom){ p "I'mma own mode" }

run RackApp