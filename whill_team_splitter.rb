def whill_team_splitter(both_teams, team_a_array, team_b_array)
  both_teams.each do |z|
    team_a_array << z[/(([A-Z]*[a-z]*)(\s[A-Z]+[a-z]+)?)(?<!\sv\s)/]
  end

  both_teams.each do |z|
    team_b_array << z[/(?<=v\s)(([A-Z]*[a-z]*)\s*)*$/]
  end
end


def whill_team_splitter(both_teams, team_a_array, team_b_array)

    team_a_array << both_teams[/(([A-Z]*[a-z]*)(\s[A-Z]+[a-z]+)?)(?<!\sv\s)/]

    team_b_array << both_teams[/(?<=v\s)(([A-Z]*[a-z]*)\s*)*$/]
end


Vasek Pospisil   v   Viktor Troicki

/(.*)\s\s\sv\s\s\s(.*)/