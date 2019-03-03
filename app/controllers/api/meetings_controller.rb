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
end
