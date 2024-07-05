require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  erb(:payment_results)
end

get("/random/new") do
  erb(:random)
end
  
get("/random/results") do
  erb(:random_results)
end
