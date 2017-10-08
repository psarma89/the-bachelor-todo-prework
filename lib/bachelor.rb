def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |woman|
    winner = woman["name"].split(" ")[0] if woman["status"] == "Winner"
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  contestants = data.values.flatten!
  contestants.each do |contestant|
    name = contestant["name"] if contestant["occupation"] == occupation
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  contestants = data.values.flatten!
  contestants.each do |contestant|
    count += 1 if contestant["hometown"] == hometown
  end
  count

end

def get_occupation(data, hometown)
  # code here
  occupation = []
  contestants = data.values.flatten!
  contestants.each do |contestant|
    occupation << contestant["occupation"] if contestant["hometown"] == hometown
  end
  occupation[0]

end

def get_average_age_for_season(data, season)
  # code here
  denom = data[season].size
  sum = 0
  data[season].each{|woman| sum += woman["age"].to_f}
  (sum/denom).round
end
