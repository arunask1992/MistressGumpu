class Participation < ActiveRecord::Base
  class << self
    def add_participation(event_id,participant_id)
      participation = find_or_create_by(event_id: event_id, participant_id: participant_id)
      participation.save!
      participation
    end
  end
end
