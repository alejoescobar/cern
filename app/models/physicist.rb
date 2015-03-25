class Physicist < ActiveRecord::Base
  has_many :experiments

  enum specialty: [:theoric, :experimentalist]
end
