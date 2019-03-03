class Api::SpeakersController < ApplicationController
  def show
    the_id = params[:id]
    @speaker = Speaker.find_by id:the_id
    render 'show.json.jbuilder'
  end
end
