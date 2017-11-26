json.extract! registration, :id, :regno, :subno, :regdate, :remdate, :remcode, :created_at, :updated_at
json.url registration_url(registration, format: :json)
