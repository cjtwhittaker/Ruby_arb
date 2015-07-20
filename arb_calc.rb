def football_arb_calc
  @whmatch.each do |whmatch|
    @bfmatch.each do |bfmatch|
      @ppmatch.each do |ppmatch|
        if (bfmatch[0] == whmatch[0]) && (bfmatch[1] == whmatch[1]) && (bfmatch[2] == whmatch[2])
          if (1/whmatch[3]) + (1/whmatch[4]) + (1/bfmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/whmatch[3]) + (1/bfmatch[4]) + (1/whmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/bfmatch[3]) + (1/whmatch[4]) + (1/whmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/whmatch[3]) + (1/bfmatch[4]) + (1/bfmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/bfmatch[3]) + (1/whmatch[4]) + (1/bfmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/bfmatch[3]) + (1/bfmatch[4]) + (1/whmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/bfmatch[3]) + (1/ppmatch[4]) + (1/ppmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/ppmatch[3]) + (1/bfmatch[4]) + (1/ppmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/ppmatch[3]) + (1/ppmatch[4]) + (1/bfmatch[5]) < 1
            puts 'there is an arb present'
          elsif (1/bfmatch[3]) + (1/ppmatch[4]) + (1/ppmatch[5]) < 1
            puts 'there is an arb present'
          else
            puts 'there is no arb present'
          end          
        end
      end
    end
  end
end