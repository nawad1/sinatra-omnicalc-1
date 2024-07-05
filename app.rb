require "sinatra"
require "sinatra/reloader"
require "active_support/all"

get("/") do
  erb(:square)
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
  @the_num = params.fetch("user_number").to_f
  @the_result = Math.sqrt(@the_num)
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @rate = params.fetch("user_apr").to_f / 100 / 12
 @number_periods = params.fetch("user_years").to_f * 12
  @present_value = params.fetch("user_pv").to_f
 @payment = (@rate * @present_value) / (1-(1+@rate)**(@number_periods * -1))
  erb(:payment_results)
end

get("/random/new") do
  erb(:random)
end
  
get("/random/results") do
  @min_num = params.fetch("user_min").to_f
  @max_num = params.fetch("user_max").to_f
  @rand_num = rand(@min_num...@max_num)
  erb(:random_results)
end
