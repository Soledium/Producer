json.extract! concert, :id, :date, :assistants, :place, :duration, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
