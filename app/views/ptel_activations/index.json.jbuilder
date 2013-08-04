json.array!(@ptel_activations) do |ptel_activation|
  json.extract! ptel_activation, :sim_number, :zip_code, :email, :first_name, :last_name, :contact_number, :fourty_plan, :fifty_plan, :real_paygo, :paygo_amount, :admin_id, :wallet_id
  json.url ptel_activation_url(ptel_activation, format: :json)
end
