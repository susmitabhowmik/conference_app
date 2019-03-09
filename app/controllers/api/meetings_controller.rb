class Api::MeetingsController < ApplicationController
  def index
    meetings = Meeting.all
    @meetings = Meeting.where("id > 0").reverse_order
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    render 'show.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
      title: params[:input_title],
      agenda: params[:input_agenda],
      time: params[:input_time]
    )
    @meeting.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    @meeting.title = params[:input_title] || @meeting.title
    @meeting.agenda = params[:input_agenda] || @meeting.agenda
    @meeting.time = params[:input_time] || @meeting.time
    @meeting.save
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    @meeting.destroy
    render 'destroy.json.jbuilder'
  end
end
