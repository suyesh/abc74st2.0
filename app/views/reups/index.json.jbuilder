json.array!(@reups) do |reup|
  json.extract! reup, :phone_number, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :seventy_plan, :change_plan, :admin_id, :wallet_id
  json.url reup_url(reup, format: :json)
end
