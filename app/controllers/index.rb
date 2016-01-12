get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  @anagrams = Word.anagrams_for(@new_word) #es de instancia para poder usarla/mandarle en la vista
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end