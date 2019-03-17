class Api::MeetingsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @meetings = Meeting.where(:remote => true)
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    render 'show.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time],
      location: params[:location],
      remote: params[:remote],
      speaker_id: params[:speaker_id]
    )
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def update
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.time = params[:time] || @meeting.time
    @meeting.location = params[:location] || @meeting.location
    @meeting.remote = params[:remote] || false
    @meeting.speaker_id = params[:speaker_id] || @meeting.speaker_id
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def destroy
    the_id = params[:id]
    @meeting = Meeting.find_by id:the_id
    @meeting.destroy
    render 'destroy.json.jbuilder'
  end
end
