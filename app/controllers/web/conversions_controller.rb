class Web::ConversionsController < ApplicationController
  include ::Karamzin

  def create
    @conversion = ConversionForm.new_with_model
    body = params[:conversion][:body].clone
    params[:conversion][:converted_body] = insert body
    params[:conversion][:size] = params[:conversion][:body].size
    if @conversion.submit params[:conversion]
      increase_request_counter :web
      redirect_to conversion_path @conversion
    else
      redirect_to root_path notice: :error
    end
  end

  def show
    @conversion = Conversion.find params[:id]
  end

  def update
    @conversion = ConversionForm.find_with_model params[:id]
    if @conversion.status.not_rated? && params[:conversion][:status] == 'good'
      params[:conversion][:body] = nil
      params[:conversion][:converted_body] = nil
    end
    if @conversion.submit params[:conversion]
      redirect_to root_path, notice: t('notices.thanks_for_answer')
    else
      redirect_to '/500'
    end
  end
end
