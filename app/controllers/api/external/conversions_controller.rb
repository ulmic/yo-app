class Api::External::ConversionsController < ApplicationController
  include ::Karamzin

  def index
    text = insert params[:text]
    render json: { text: text }
  end
end
