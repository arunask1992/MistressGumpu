json.array!(@participations) do |participation|
  json.extract! participation, :id, :event_id, :participant_id
  json.url participation_url(participation, format: :json)
end
