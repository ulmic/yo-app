class Web::ConversionsController < ApplicationController
  include ::Karamzin

  def create
    @conversion = ConversionForm.new_with_model
    params[:conversion][:converted_body] = insert params[:conversion][:body]
    params[:conversion][:size] = params[:conversion][:body].size
    body = params[:conversion][:body]
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
end
