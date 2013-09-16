get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  # "Show a list of anagrams for '#{word}'"
  @word = params[:word]
  @words = Word.anagrams(@word)
  # @word = params[:word]
  erb :words_view
end
