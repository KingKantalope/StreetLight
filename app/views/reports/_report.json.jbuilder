json.extract! report, :id, :time_occur, :latitude, :longitude, :location, :tags, :description, :user, :created_at, :updated_at
json.url report_url(report, format: :json)
