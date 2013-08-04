json.array!(@ultra_reups) do |ultra_reup|
  json.extract! ultra_reup, :phone_number, :nineteen_plan, :twentynine_plan, :thirtynine_plan, :fourtynine_plan, :fiftynine_plan, :other_amount, :amount, :admin_id, :wallet_id
  json.url ultra_reup_url(ultra_reup, format: :json)
end
