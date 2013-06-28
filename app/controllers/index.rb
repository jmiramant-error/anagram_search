get '/' do
  erb :index
end


post '/' do
  p params
  input = params[:search_input]
  sort_word = input.chars.sort.join
  anagrams = Word.where(:con => sort_word)
  @output = []  
  anagrams.each {|ana| @output << ana.word}
  erb :anagram, :layout => false
end
