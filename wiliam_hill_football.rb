require 'watir'
require 'ruby_arb.rb'

browser.goto 'http://sports.williamhill.com/bet/en-gb/betting/y/5/tm/Football.html'


williamhill_football_teams = []
browser.spans(id: /\d*_mkt_namespace/).each do |x|
  williamhill_football_teams << x.text
end

williamhill_football_ = []
browser.spans(id: /\d*_mkt_namespace/).each do |x|
  williamhill_football_teams << x.text
end

williamhill_football_hometeam = []
williamhill_football_teams.each do |z|
  williamhill_football_hometeam << z[/[A-Z][a-z]*/]
end

williamhill_football_awayteam = []
williamhill_football_teams.each do |z|
  williamhill_football_awayteam << z[/(?<=v\s\s\s)(([A-Z]*[a-z]*\d*-?]*\s?)*)$/]
end



williamhill_football_homewin = []
browser.trs(class: 'rowOdd').each do |z|
  williamhill_football_homewin << z[4].text
end


williamhill_football_awaywin = []
browser.trs(class: 'rowOdd').each do |z|
  williamhill_football_awaywin << z[6].text
end


williamhill_football_draw = []
browser.trs(class: 'rowOdd').each do |z|
  williamhill_football_draw << z[5].text
end
