class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/customer" do
    dbCustomer = Customers.all
    dbCustomer.to_json
  end

  get "/order" do
    dbOrder = Orders.all
    dbOrder.all.to_json
  end

  get "/space" do
    dbSpace = Spaces.all
    dbSpace.all.to_json
  end

end
