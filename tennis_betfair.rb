tennis_betfair.rb

@betfiar_browser_tennis.goto 'https://www.betfair.com/sport/tennis'
betfair_tennis_data = @betfiar_browser_tennis.text

#in play matches
betfair_tennis_matches_inplay = betfair_tennis_data.scan(/In-Play\n([A-z]+\s[A-z]+)\s(?:.\s\(\d+\)\s\d+\s-\s\d+\s\(\d+\)\s|\(\d+\)\s\d+\s-\s\d+\s\(\d+\)\s.\s)([A-z]+\s[A-z]+)\n(SUSPENDED\n)?(\d+\/\d+)\n(\d+\/\d+)
/)

#betfair matches coming up
betfair_tennis_matches_willgoinplay = betfair_tennis_data.scan(/([A-z]+\s[A-z]+)\sv\s([A-z]+(?:\s|\.|-)[A-z]+(?:\s|\.|-)?(?:[A-z]+)?)(?:\s|\.|-)?\s(\d{2}:\d{2})\n(\d+\/\d+)\n(\d+\/\d+)/

betfair_tennis_matches_later = betfair_tennis_data.scan(/([A-z]+(?:\s|\W)?(?:[A-z]+)?),\s([A-z]+(?:\s|\W)?(?:[A-z]+)?)\sv\s([A-z]+(?:\s|\W)?(?:[A-z]+)?),\s([A-z]+(?:\s|\W)?(?:[A-z]+)?)\s(?:Tomorrow)?\s?(\d{2}:\d{2})\n(\d+\/\d+)\n(\d+\/\d+)/)

