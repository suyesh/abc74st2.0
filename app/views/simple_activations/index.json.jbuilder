json.array!(@simple_activations) do |simple_activation|
  json.extract! simple_activation, :sim_number, :zip_code, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :ild, :admin_id, :wallet_id
  json.url simple_activation_url(simple_activation, format: :json)
end
