json.array!(@ptel_reups) do |ptel_reup|
  json.extract! ptel_reup, :pone_number, :fourty_plan, :fifty_plan, :real_paygo, :paygo_amount, :admin_id, :wallet_id
  json.url ptel_reup_url(ptel_reup, format: :json)
end
