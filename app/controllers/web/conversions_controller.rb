class Web::ConversionsController < ApplicationController
  include ::Karamzin

  def create
    @conversion = ConversionForm.new_with_model
    body = params[:conversion][:body]
    params[:conversion][:converted_body] = insert params[:conversion][:body]
    params[:conversion][:size] = params[:conversion][:body].size
    params[:conversion][:body] = nil
    if @conversion.submit params[:conversion]
      redirect_to conversion_path @conversion, body: body
    else
      redirect_to root_path notice: :error
    end
  end

  def show
    @conversion = Conversion.find params[:id]
  end

  def update
    @conversion = ConversionForm.find_with_model params[:id]
    if @conversion.submit params[:conversion]
      redirect_to root_path, notice: t('notices.thanks_for_answer')
    else
      redirect_to '/500'
    end
  end
end
