require 'watir'
require 'ruby_arb.rb'

browser.goto 'http://sports.williamhill.com/bet/en-gb/betting/y/5/tm/Football.html'


williamhill_football_teams = []
browser.spans(id: /\d*_mkt_namespace/).each do |x|
  williamhill_football_teams << x.text
end
