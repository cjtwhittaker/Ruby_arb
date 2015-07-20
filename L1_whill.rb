#william hill league one matches

def whill_L1

  @browser.goto 'http://sports.williamhill.com/bet/en-gb/betting/t/293/English-League-1.html'

  williamhill_football = []
  @browser.trs(class: 'rowOdd').each do |x|
    williamhill_football << x
  end

  williamhill_football_teams = []
  williamhill_football.each do |x|
    williamhill_football_teams << x.span(id: /\d*_mkt_namespace/).text
  end

  # williamhill_football_hometeam = []
  # williamhill_football_teams.each do |z|
  #   williamhill_football_hometeam << z[/(([A-Z]*[a-z]*)(\s[A-Z]+[a-z]+)?)(?<!\sv\s)/]
  # end

  # williamhill_football_awayteam = []
  # williamhill_football_teams.each do |z|
  #   williamhill_football_awayteam << z[/(?<=v\s)(([A-Z]*[a-z]*)\s*)*$/]
  # end

  williamhill_football_time = []
  williamhill_football.each do |z|
    williamhill_football_time << z.text[/\d*:\d*/]
  end

  williamhill_football_homewin = []
  williamhill_football.each do |z|
    williamhill_football_homewin << oddconverter(z[4].text)
  end

  williamhill_football_awaywin = []
  williamhill_football.each do |z|
    williamhill_football_awaywin << oddconverter(z[6].text)
  end

  williamhill_football_draw = []
  williamhill_football.each do |z|
    williamhill_football_draw << oddconverter(z[5].text)
  end

  williamhill_matches = []
  k = 0
  l = williamhill_football.size
  while k < l 
    williamhill_matches << [williamhill_football_hometeam[k],williamhill_football_awayteam[k],williamhill_football_time[k],williamhill_football_homewin[k],williamhill_football_awaywin[k],williamhill_football_draw[k]]
    k += 1
  end
  return williamhill_matches
end
