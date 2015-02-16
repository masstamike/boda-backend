json.array!(@rsvps) do |rsvp|
  json.extract! rsvp, :id, :family, :coming, :song, :message, :count
  json.url rsvp_url(rsvp, format: :json)
end
