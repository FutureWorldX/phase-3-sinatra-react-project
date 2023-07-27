class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  ## Custom Method for Getting Request body
  def getBody (req)
    ## Rewind the body in case it has already been read
    req.body.rewind
    ## parse the body
    return JSON.parse(req.body.read)
  end
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # route to get all items from a data table
  ['/customer', '/customers', '/customer/', '/customers/', '/Customer', '/Customers', '/Customer/', '/Customers/'].each do |path|
    get path do
      dbCustomer = Customer.all
      data = dbCustomer.all.to_json
      puts "Received request for #{path}"
      puts "Data: #{data}"
      return data
    end
  end
  
  ## single route which converts id to an integer before returning the result
  ['/customer/:id', '/customers/:id', '/Customer/:id', '/Customers/:id'].each do |path|
    get path do
      dbCustomer = Customer.all
      id = params["id"].to_i 
      return dbCustomer[id].to_json
    end
  end
  
  # Customer table POST
  # Create Route for making a new entry in the table
  ['/customer', '/customers', '/customer/', '/customers/', '/Customer', '/Customers', '/Customer/', '/Customers/'].each do |path|
  post path do
    # Pass the request into the custom getBody function
    body = getBody(request)

    # create the new item
    customer = Customer.create(
      name: body['name'],
      phone_no: body['phone_no'],
      id_number: body['id_number'],
      email_address: body['email_address'],
      local_address: body['local_address'],
      po_box: body['po_box'],
      county: body['county'],
      city: body['city']
    )

    # return the new item
    return customer.to_json
    end
  end

## Customer table Update Route PUT or PATCH
  ['/customer/:id', '/customers/:id', '/Customer/:id', '/Customers/:id'].each do |path|
    put path do
      
      # get the id from the array
      id = params['id'].to_i
      customer = Customer.find(id)

      # get the request body
      body = getBody(request)

      # update the item attributes
      customer.update(
        name: body['name'],
        phone_no: body['phone_no'],
        id_number: body['id_number'],
        email_address: body['email_address'],
        local_address: body['local_address'],
        po_box: body['po_box'],
        county: body['county'],
        city: body['city']
      )

      # return the updated item
      return customer.to_json
    end
  end

  ## Destroy/Delete Route
  ['/customer/:id', '/customers/:id', '/Customer/:id', '/Customers/:id'].each do |path|
    delete path do
      # get the id from the array
      id = params["id"].to_i

      # choose the item needed for deletion
      customer = Customer.find(id)

      # delete the item
      customer.destroy
      
      # return a success message or status
      { status: 'success', message: 'Customer deleted successfully' }.to_json
    end
  end

  # route to get all items from the Order table
  ['/order', '/orders', '/order/', '/orders/', '/Order', '/Orders', '/Order/', '/Orders/'].each do |path|
    get path do
      dbOrder = Order.all
      data = dbOrder.all.to_json
      puts "Received request for #{path}"
      puts "Data: #{data}"
      return data
    end
  end

  ## single route which converts id to an integer before returning the result
  ['/order/:id', '/orders/:id', '/Order/:id', '/Orders/:id'].each do |path|
    get path do
      dbOrder = Order.all
      id = params["id"].to_i 
      data = dbOrder[id].to_json
      puts "Received request for #{path} at position #{id}"
      puts "Data: #{data}"
      return data
    end
  end

  # Order table POST
  # Create Route for making a new entry in the table
  ['/order', '/orders', '/order/', '/orders/', '/Order', '/Orders', '/Order/', '/Orders/'].each do |path|
    post path do
      # Pass the request into the custom getBody function
      body = getBody(request)
  
      # create the new item
      order = Order.create(
        order_id: rand(1000) + 1,
        name: body['name'],
        status: body['status'],
        quantity: body['quantity'],
        price: body['price'],
        description: body['description']
      )
  
      # return the new item
      return order.to_json
      end
    end

  ## Order table Update Route PUT or PATCH
  ['/order/:id', '/orders/:id', '/Order/:id', '/Orders/:id'].each do |path|
    put path do
      
      # get the id from the array
      id = params['id'].to_i
      order = Order.find(id)

      # get the request body
      body = getBody(request)

      # update the item attributes
      order.update(
        name: body['name'],
        status: body['status'],
        quantity: body['quantity'],
        price: body['price'],
        description: body['description']
      )

      # return the updated item
      return order.to_json
    end
  end

  ## Destroy/Delete Route
  ['/order/:id', '/orders/:id', '/Order/:id', '/Orders/:id'].each do |path|
    delete path do
      # get the id from the array
      id = params["id"].to_i

      # choose the item needed for deletion
      order = Order.find(id)

      # delete the item
      order.destroy
      
      # return a success message or status
      { status: 'success', message: 'Order deleted successfully' }.to_json
    end
  end

  # route to get all items from the Spaces table
  ['/space', '/spaces', '/space/', '/spaces/', '/Space', '/Spaces', '/Space/', '/Spaces/'].each do |path|
    get path do
      dbSpace = Space.all
      data = dbSpace.all.to_json
      puts "Received request for #{path}"
      puts "Data: #{data}"
      return data
    end
  end

  ## single route which converts id to an integer before returning the result
  ['/space/:id', '/spaces/:id', '/Space/:id', '/Spaces/:id'].each do |path|
    get path do
      dbSpace = Space.all
      id = params["id"].to_i 
      data = dbSpace[id].to_json
      puts "Received request for #{path} at position #{id}"
      puts "Data: #{data}"
      return data
    end
  end

    
  # Customer table POST
  # Create Route for making a new entry in the table
  ['/space', '/spaces', '/space/', '/spaces/', '/Space', '/Spaces', '/Space/', '/Spaces/'].each do |path|
    post path do
      # Pass the request into the custom getBody function
      body = getBody(request)
  
      # create the new item
      customer = Space.create(
        name: body['name'],
        phone_no: body['phone_no'],
        id_number: body['id_number'],
        email_address: body['email_address'],
        local_address: body['local_address'],
        po_box: body['po_box'],
        county: body['county'],
        city: body['city']
      )
  
      # return the new item
      return customer.to_json
      end
    end

  ## Space table Update Route PUT or PATCH
  ['/space/:id', '/spaces/:id', '/Space/:id', '/Spaces/:id'].each do |path|
    put path do
      
      # get the id from the array
      id = params['id'].to_i
      space = Space.find(id)

      # get the request body
      body = getBody(request)

      # update the item attributes
      space.update(
        space_type: body['space_type'],
        size: body['size'],
        style: body['style'],
        price_per_unit: body['price_per_unit'],
        length: body['length'],
        width: body['width'],
        height: body['height'],
        location: body['location'],
        description: body['description']
      )

      # return the updated item
      return space.to_json
    end
  end

  ## Destroy/Delete Route
  ['/space/:id', '/spaces/:id', '/Space/:id', '/Spaces/:id'].each do |path|
    delete path do
      # get the id from the array
      id = params["id"].to_i

      # choose the item needed for deletion
      space = Space.find(id)

      # delete the item
      space.destroy
      
      # return a success message or status
      { status: 'success', message: 'Space deleted successfully' }.to_json
    end
  end

end
