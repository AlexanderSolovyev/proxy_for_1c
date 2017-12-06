require "net/http"
require "uri"
class SendOrderJob < ApplicationJob
  queue_as :default

  def perform(order)
    # Do something later
    uri = URI.parse("http://212.7.4.74:8000/hv_copy/hs/PutOrder?Orders=Hello")
    data = {'firm' => order.firm,
            'name' => order.name,
            'phone' => order.phone,
            'email' => order.email,
            'vitenumber' => order.vitenumber,
            'deliveryAddress'=> order.delivery_address,
            'deliveryDate' => order.delivery_date,
            'deliveryTime' => order.delivery_time,
            'bottles' => order.bottles,
            'returnedBottles' => order.returned_bottles,
            'information' => "This order from rails!"
    }
    puts data
    req = Net::HTTP::Post.new(uri, data)
    req.body = data.to_json
    req.basic_auth 'exch', '13572468'
    res = Net::HTTP.start(uri.hostname, uri.port){ |http| http.request(req) }
    puts res.code
    puts res.message
    puts res.body
  end

end
