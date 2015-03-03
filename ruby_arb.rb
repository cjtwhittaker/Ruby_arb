#a programme to take in data from many different online betting websites and identify any arbitrages

require 'watir'

browser = Watir::Browser.new :ff
browser.goto 'https://www.betfair.com/sport/football'
betfair_football_hometeam = []
browser.divs(class: 'avb-row-slider').each do |x|
  betfair_football_hometeam << x.span(class: 'home-team-name').text
end

betfair_football_awayteam = []
browser.divs(class: 'avb-row-slider').each do |x|
  betfair_football_awayteam << x.span(class: 'away-team-name').text
end

betfair_football_time = []
browser.divs(class: 'avb-row-slider').each do |x|
  betfair_football_time << x.span(class: 'date').text
end

betfair_football_homewin = []
browser.divs(class: 'avb-row-slider').each do |x|
      betfair_football_homewin << x.li(class: 'sel-0').text
end

betfair_football_awaywin = []
browser.divs(class: 'avb-row-slider').each do |x|
      betfair_football_awaywin << x.li(class: 'sel-2').text
end

betfair_football_draw = []
browser.divs(class: 'avb-row-slider').each do |x|
      betfair_football_draw << x.li(class: 'sel-1').text
end
