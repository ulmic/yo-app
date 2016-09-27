class Conversion < ActiveRecord::Base
  extend Enumerize
  enumerize :status, in: [ :good, :bad, :not_rated ]
end
