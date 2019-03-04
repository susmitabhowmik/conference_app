class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    render 'index.json.jbuilder'
  end
  
  def show
    the_id = params[:id]
    @speaker = Speaker.find_by id:the_id
    render 'show.json.jbuilder'
  end

  def create
    @speaker = Speaker.create(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email])
    render 'show.json.jbuilder'
  end
end
