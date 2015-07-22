#if william hill name 1 (whill[2]) is equal to betfair name 1 (bfair[0])
#and if william hill name 2 (whill[3]) is eqaul to name 2 (bfair[1])
#and if william hill time (whill[0]) is equal to betfair time (bfair[2])
#and if there is an arbitrage present (if 1/whill[1]+1/bfair[3] < 0 or if 1/whill[4]+1/bfair[4] < 0)
#then figure out the ratios needed to acieve the arbitrage
#then print 'by jove, we seem to have an arbitrage present!! Lets go make some money!! :D'
#and then in the future we can get it to place the appropriate bets
def tennis_arb_calc

  @whill_tennis_match.each do |whill|
    betfair_tennis_matches_decimal.each do |bfair|

      if whill[2] == bfair[0] && whill[3] == bfair[1] && whill[0] == bfair[2] && (((1/whill[1]+(1/bfair[4])) < 0 ) || (((1/whill[4])+(1/bfair[3])) < 0)) 
        puts 'an arbitrage is present!!!!'
      end
    end
  end
end

