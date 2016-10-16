class RequestRecord < ActiveRecord::Base
  extend Enumerize
  enumerize :request_type, in: [ :web, :api, :telegram ], default: :web
end
