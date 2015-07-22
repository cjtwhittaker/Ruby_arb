
def tennis_betfair_css
  tennis_betfair_url = 'https://www.betfair.com/sport/tennis'
  unless @betfair_browser_tennis.url ==  tennis_betfair_url
    @betfair_browser_tennis.goto tennis_betfair_url
  end
  @betfair_browser_tennis.lis(class:"com-coupon-line").each do |row|
    if row.div(class:"details-market").text.match(/Suspended/) == nil
    end
#william hill we have time, odds a, player a, player b, odds b
  end
#enter the match into the array
#end

end

























# def tenniss_betfair
# 	@betfair_browser_tennis.goto 'https://www.betfair.com/sport/tennis'
# 	betfair_tennis_data = @betfair_browser_tennis.text

#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_data.txt', 'w'
#     file << betfair_tennis_data
#   file.close


# 	#in play matches
# 	betfair_tennis_matches_inplay = betfair_tennis_data.scan(/(In-Play)\n(.+)\s(?:.\s\(\d+\)\s\d+\s-\s\d+\s\(\d+\)|\(\d+\)\s\d+\s-\s\d+\s\(\d+\)\s.)\s(.+)\n(\d+\/\d+)\n(\d+\/\d+)/)
#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches_inplay.txt', 'w'
#     file << betfair_tennis_matches_inplay
#   file.close

# 	#betfair matches coming up
# 	# betfair_tennis_matches_willgoinplay = betfair_tennis_data.scan(/(?:Will Go In-Play\n)?(.+),(.+)\sv\s(.+),(.+)\s(\d{2}:\d{2})\n(EVS|\d+\/\d+)\n(EVS|\d+\/\d+)/)
#  #  file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches_willgoinplay.txt', 'w'
#  #    file << betfair_tennis_matches_willgoinplay
#  #  file.close

# 	#the rest of the matches
# 	#################################need to sort out Play/n creeping into the capture group###########################################
# 	betfair_tennis_matches_later = betfair_tennis_data.scan(/([A-z]+(?:\s|\W)?(?:[A-z]+)?),\s([A-z]+(?:\s|\W)?(?:[A-z]+)?)\sv\s([A-z]+(?:\s|\W)?(?:[A-z]+)?),\s([A-z]+(?:\s|\W)?(?:[A-z]+)?)\s(?:Tomorrow)?\s?(\d{2}:\d{2})\n(\d+\/\d+)\n(\d+\/\d+)/)
#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches_later.txt', 'w'
#     file << betfair_tennis_matches_later
#   file.close
	

# 	betfair_tennis_matches_later_reformatted = []
# 	betfair_tennis_matches_later.each do |entry|
# 		betfair_tennis_matches_later_reformatted << ["#{entry[1]}"" ""#{entry[0]}", "#{entry[3]}"" ""#{entry[2]}", entry[4], entry[5], entry[6]]
# 	end

#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches_later_reformatted.txt', 'w'
#     file << betfair_tennis_matches_later_reformatted
#   file.close

# 	betfair_tennis_matches = betfair_tennis_matches_inplay + betfair_tennis_matches_willgoinplay + betfair_tennis_matches_later_reformatted

#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches.txt', 'w'
#     file << betfair_tennis_matches
#   file.close
  
# 	betfair_tennis_matches_decimal = []
# 	betfair_tennis_matches.each do |z|
# 		betfair_tennis_matches_decimal << [z[0], z[1], z[2], oddconverter(z[3]), oddconverter(z[4])]
# 	end

#   file = File.open 'f:/users/charlie/documents/ruby_arb/betfair_tennis_matches_decimal.txt', 'w'
#     file << betfair_tennis_matches_decimal
#   file.close

# 	return betfair_tennis_matches_decimal

# end
