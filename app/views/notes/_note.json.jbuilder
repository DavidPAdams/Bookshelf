json.extract! note, :id, :author, :note_entry, :created_at, :updated_at
json.url note_url(note, format: :json)
