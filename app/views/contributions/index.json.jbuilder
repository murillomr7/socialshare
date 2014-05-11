json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :amount, :share_request_id, :member_id
  json.url contribution_url(contribution, format: :json)
end
