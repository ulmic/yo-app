class Web::WelcomeController < ApplicationController
  def index
    @conversion = ConversionForm.new_with_model
  end
end
