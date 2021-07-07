require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:name1/:name2' do
    @user_name1 = params[:name1]
    @user_name2 = params[:name2]
    "#<%= @user_name1 * @user_name25%>"
  end

  # Code your final two routes here:

end