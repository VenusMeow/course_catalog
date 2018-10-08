json.extract! subject, :id, :name, :abbreviation, :idnum, :created_at, :updated_at
json.url subject_url(subject, format: :json)
