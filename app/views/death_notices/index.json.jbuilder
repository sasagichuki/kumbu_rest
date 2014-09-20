json.array!(@death_notices) do |death_notice|
  json.extract! death_notice, :id, :title, :date_added, :client_born, :client_died, :eulogy, :burial_date, :meeting_date, :burial_location, :meeting_location, :client_picture, :comments, :user_id
  json.url death_notice_url(death_notice, format: :json)
end
