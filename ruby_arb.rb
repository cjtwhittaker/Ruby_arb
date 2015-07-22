#a programme to take in data from many different online betting websites and identify any arbitrages
#todo = make it so that it can pull in matches from different leagues to the arrays
#abstract out the thing that actually calculates the arbitrage
#make it so that it can say where the arb is present 
#add the thing so that it works with the different ways that the websites display the team names
#add more wabsites
#

require './oddconverter.rb'
require './tennis_betfair.rb'
require './tennis_whill.rb'
require './arb_calc.rb'
#require './tennis_arb_calc.rb'

require 'watir'
require 'selenium/server'
require 'pry'

@betfair_browser_tennis = Watir::Browser.new#:ff
@whill_browser_tennis = Watir::Browser.new#:ff

#binding.pry


binding.pry


tennis_betfair_css
tennis_whill_css



@betfair_browser_tennis.close
@whill_browser_tennis.close


#@server  = Selenium::Server.new('./selenium-server-standalone-2.0b2.jar', :background => true)
#@browser = Watir::Browser.new(:remote, :url => "http://127.0.0.1:4444/wd/hub", :desired_capabilities => :htmlunit)


#@whmatch = whill_L1
#@bfmatch = bfair_L1
#@ppmatch = l1_ppower


#puts arb_calc
#binding.pry
# whmatch.each do |whmatch|
#   bfmatch.each do |bfmatch|
#     ppmatch.each do |ppmatch|
#       if (bfmatch[0] == whmatch[0]) && (bfmatch[1] == whmatch[1]) && (bfmatch[2] == whmatch[2])
#         if (1/whmatch[3]) + (1/whmatch[4]) + (1/bfmatch[5]) < 1
#           puts 'there is an arb present'
#         elsif (1/whmatch[3]) + (1/bfmatch[4]) + (1/whmatch[5]) < 1
#           puts 'there is an arb present'
#         elsif (1/bfmatch[3]) + (1/whmatch[4]) + (1/whmatch[5]) < 1
#           puts 'there is an arb present'
#         elsif (1/whmatch[3]) + (1/bfmatch[4]) + (1/bfmatch[5]) < 1
#           puts 'there is an arb present'
#         elsif (1/bfmatch[3]) + (1/whmatch[4]) + (1/bfmatch[5]) < 1
#           puts 'there is an arb present'
#         elsif (1/bfmatch[3]) + (1/bfmatch[4]) + (1/whmatch[5]) < 1
#           puts 'there is an arb present'
#         else
#           puts 'there is no arb present'
#         end          
#       end
#     end
#   end
# end
