class Conversion < ActiveRecord::Base
  enumerize :status, [ :good, :bad, :not_rated ]
end
