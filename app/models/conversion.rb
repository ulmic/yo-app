class Conversion < ActiveRecord::Base
  extend Enumerize
  enumerize :status, in: [ :good, :bad, :not_rated ], default: :not_rated

  scope :good, -> { where status: :good }
  scope :bad, -> { where status: :bad }
  scope :not_rated, -> { where status: :not_rated }
end
