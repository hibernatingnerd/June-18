require "pry"

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

cats=[]

ballots.each do |ballot|
  ballot.values.each do |name|
  cats << name
end
end

cat_score = {}
cats.uniq!.each {|cat|
  cat_score[cat] = 0
}


ballots.each do |ballot|
  ballot.each do |key, value|
    if key == 1
      cat_score[value] += 3
    elsif key == 2
      cat_score[value] += 2
    else key == 3
        cat_score[value] += 1
    end
  end
end

winner = cat_score.max_by {|k,v| v }
  puts "and the winner is #{winner[0]}"
  puts "by #{winner[1]} votes"

# binding.pry

#

# competitor = ['Smudge', 'Simba', 'Felix', 'Bella', 'Lucky, 'Boots', 'Tigger']
