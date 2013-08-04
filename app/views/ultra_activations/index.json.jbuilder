json.array!(@ultra_activations) do |ultra_activation|
  json.extract! ultra_activation, :sim_number, :zip_code, :ninteen_plan, :twentynine_plan, :tirtynine_plan, :fortynine_plan, :fiftynine_plan, :first_name, :last_name, :email, :admin_id, :wallet_id
  json.url ultra_activation_url(ultra_activation, format: :json)
end
