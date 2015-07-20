#betfair league one football matches
def bfair_L1
  @browser.goto 'https://www.betfair.com/sport/football'
  @browser.a(text: 'League One').click

  betfair_football = []
  @browser.divs(class: 'avb-row-slider').each do |x|
    betfair_football << x 
  end

  betfair_football_hometeam = []
  betfair_football.each do |x|
    betfair_football_hometeam << x.span(class: 'home-team-name').text
  end

  betfair_football_awayteam = []
  betfair_football.each do |x|
    betfair_football_awayteam << x.span(class: 'away-team-name').text
  end

  betfair_football_time = []
  betfair_football.each do |x|
    betfair_football_time << x.span(class: 'date').text[/\d+:\d+/] 
  end

  betfair_football_homewin = []
  betfair_football.each do |x|
    betfair_football_homewin << oddconverter(x.li(class: 'sel-0').text)
  end

  betfair_football_awaywin = []
  betfair_football.each do |x|
    betfair_football_awaywin << oddconverter(x.li(class: 'sel-2').text)
  end

  betfair_football_draw = []
  betfair_football.each do |x|
    betfair_football_draw << oddconverter(x.li(class: 'sel-1').text)
  end

  betfair_matches = []
  i = 0
  j = betfair_football.size
  while i < j
    betfair_matches << [betfair_football_hometeam[i],betfair_football_awayteam[i],betfair_football_time[i],betfair_football_homewin[i],betfair_football_awaywin[i],betfair_football_draw[i]]
    i += 1
  end
  return betfair_matches
end
