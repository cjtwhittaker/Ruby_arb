def tennis_whill
  @browser.goto "http://sports.williamhill.com/bet/en-gb/betting/y/17/mh/Tennis.html"

  file = File.open 'c:/users/charlie/documents/tennis.txt', 'w'
  file << @browser.text
  file.close
  file = File.open 'c:/users/charlie/documents/tennis.txt', 'r'
  data = file.read

  player = data.match(/(^\w+-?.?\w*\s?\w*)(?:\s{3}v)/)[1]



  # create an array with all the tennis match details in
  # whill_tennis_matches = []
  # @browser.trs(class: 'rowOdd').each do |x|
  #   whill_tennis_matches << x 
  # end

# array with all the tennis players
 
#then split the players into seperate arrays
  player_1 = []
  player_2 = []



  # whill_tennis_players.each do |z|
  #   player_1 << z[/(^\w+-?.?\w*\s?\w*)(?:\s\s\sv)/]
  # end
  
  # whill_tennis_players.each do |z|
  #   player_2 << z[/([A-z]+-?.?[A-z]*\s?[A-z]*)$/]
  # end
# whill_team_splitter(whill_tennis_players, player_1, player_2)

#take the odds for each player

end


#getting the data into the file 
@whill_tennis_browser.goto 'http://sports.williamhill.com/bet/en-gb/betting/y/17/mh/Tennis.html'
whill_tennis_data = @browser.text
#file = File.open 'c:/users/charlie/documents/tennis.txt', 'w'
#file << whill_tennis_data





#returns non live results
#need to add doubles to the regular expression

@whill_tennis_match = whill_tennis_data.scan(/(\d{2}:\d{2}\s..|(?:Live\n\d+-\d+))\n(\d+\/\d+)\n(^\w+-?.?\w*\s?\w*)\s{3}v\s{3}(\w+-?\.?\w*\s?\w*)\n(\d+\/\d+)/)
whill_tennis_time = []
whill_tennis_odds_a = []
whill_tennis_player_a = []
whill_tennis_odds_b = []
whill_tennis_player_b = []

whill_regex_splitter(whill_tennis_time,0)
whill_regex_splitter(whill_tennis_odds_a,1)
whill_regex_splitter(whill_tennis_player_a,2)
whill_regex_splitter(whill_tennis_odds_b,3)
whill_regex_splitter(whill_tennis_player_b,4)

def whill_regex_splitter(output_arr, output_index)
  output_arr = []
  @whill_tennis_match.each do |split|
    output_arr << split[output_index]
  end
end


