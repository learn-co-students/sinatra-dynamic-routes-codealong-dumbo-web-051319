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

  # Code your final two routes here:

  get "/goodbye/:name" do             
    @user_name = params[:name]
    "Goodbye, #{@user_name}.!"
  end

  get '/multiply/:num1/:num2' do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end


# Creating the route will send a 200 status code, regardless if there is any code in it
#INSTRUCTIONS for the multiply
#Step 1: route starting with /multiply that accepts two params (num1 and num2) 
#         get '/multiply/:num1/:num2'

#Step 2: returns the product of the two numbers
#         SOLUTION BREAKDOWN
#         @product = params[:num1].to_i * params[:num2].to_i
#         "#{@product}"

#         @product is going to be our variable that we use to return
#         We need params!!! like before
#         We know the first params is going to be [:num1]
#         params[:num1]
#         We know that we need to multiply so we need the multipication operator (*)
#         params[:num1] *
#         We know the second params is going to be [:num2]
#         params[:num1] * params[:num2]
#         We know we need to return the product so that's gonna interpolate
#         "#{@product" 

# NOTE: If we ran shotgun with just the following code:
#        params[:num1] * params[:num2]
#        "#{@product"
#        Sinatra (should) give us a TypeError
#                 No Implicit conversion of String to Integer
#         which we should remember was a method (.to_i)

#Step 4: Convert the string to integer to both params[:num#] at the end
#         @product = params[:num1].to_i * params[:num2].to_i
#         "#{@product}"  
# When you run shotgun again you should get 0 

