json.extract! instructor, :id, :middle, :last, :first, :email, :idnum, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
