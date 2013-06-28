IO.foreach('/Users/apprentice/Downloads/sinatra_skeleton/words.txt') do |x|
  Word.create(:word => x.strip, :con => x.strip.chars.sort.join)
end
