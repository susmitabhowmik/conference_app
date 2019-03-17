json.array! @meetings.each do |meeting|
  json.id meeting.id
  json.title meeting.title
  json.agenda meeting.agenda
  json.time meeting.time
  json.location meeting.location
  json.remote meeting.remote
  json.speaker_email meeting.speaker.email
end