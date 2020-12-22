require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do # renders the reverse.erb page
    erb :reverse
  end

  post '/reverse' do # receives the params hash from the form and renders the reversed.erb
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do #renders the friends.erb page
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end