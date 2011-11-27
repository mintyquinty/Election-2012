class Party
  include Mongoid::Document
  field :name, :type => String
  field :abbreviation, :type => String
  field :color, :type => String
  has_many :candidates
end
