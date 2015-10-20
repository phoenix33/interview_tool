json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :first_name, :last_name, :phone_number, :em_addr, :city, :state, :u_id, :p_word
  json.url candidate_url(candidate, format: :json)
end
