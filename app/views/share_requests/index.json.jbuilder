json.array!(@share_requests) do |share_request|
  json.extract! share_request, :id, :title, :value, :eventDate, :description, :member_id
  json.url share_request_url(share_request, format: :json)
end
