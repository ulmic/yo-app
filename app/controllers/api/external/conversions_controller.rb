class Api::External::ConversionsController < ApplicationController
  include ::Karamzin

  def index
    text = insert params[:text]
    increase_request_counter :api
    render json: { text: text }
  end
end
