require 'http'

p "If you would like the meeting notes from a particualar meeting, please enter the number of the meeting else enter 'all':"

meeting_id = gets.chomp.to_i

if meeting_id == 0
  meeting_notes = HTTP.get('http://localhost:3000/api/meetings')
  p meeting_notes.parse
else
  meeting_notes = HTTP.get("http://localhost:3000/api/meetings/#{meeting_id}") 
  p meeting_notes.parse
end