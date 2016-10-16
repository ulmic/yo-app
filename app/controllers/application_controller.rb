class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def increase_request_counter(request_type)
    rr = RequestRecord.find_or_create_by request_type: request_type 
    rr.update_attributes count: rr.count.to_i + 1
  end
end
