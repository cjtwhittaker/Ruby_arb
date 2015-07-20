def l1_ppower

  @browser.goto 'http://www.paddypower.com/football/football-matches/english-league-1'
  ppower_football = []
  @browser.divs(class: 'pp_fb_event').each do |x|
    ppower_football << x
  end

  ppower_football_teams = []
  ppower_football.each do |x|
    ppower_football_teams << x.div(class: 'fb_event_name').text
  end

  ppower_football_hometeam = []
  ppower_football_teams.each do |z|
    ppower_football_hometeam << z[/(([A-Z]*[a-z]*)(\s[A-Z]+[a-z]+)?)(?<!\sv\s)/]
  end

  ppower_football_awayteam = []
  ppower_football_teams.each do |z|
    ppower_football_awayteam << z[/(?<=v\s)(([A-Z]*[a-z]*)\s*)*$/]
  end

  ppower_football_time = []
  ppower_football.each do |z|
    ppower_football_time << z.text[/\d*:\d*/]
  end

  ppower_football_homewin = []
  ppower_football.each do |z|
    ppower_football_homewin << oddconverter(ppower_football[0].divs(class: 'oddssmall')[0].text)
  end

  ppower_football_awaywin = []
  ppower_football.each do |z|
    ppower_football_awaywin << oddconverter(ppower_football[0].divs(class: 'oddssmall')[2].text)
  end

  ppower_football_draw = []
  ppower_football.each do |z|
    ppower_football_draw << oddconverter(ppower_football[0].divs(class: 'oddssmall')[1].text)
  end

  ppower_matches = []
  k = 0
  l = ppower_football.size
  while k < l 
    ppower_matches << [ppower_football_hometeam[k],ppower_football_awayteam[k],ppower_football_time[k],ppower_football_homewin[k],ppower_football_awaywin[k],ppower_football_draw[k]]
    k += 1
  end
  return ppower_matches
end