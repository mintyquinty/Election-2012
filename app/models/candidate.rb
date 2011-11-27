class Candidate
  include Mongoid::Document
  field :first_name, :type => String
  field :last_name, :type => String
  field :party_id, :type => Integer
  field :quote, :type => String
  field :in_race, :type => Boolean
  field :in_race_status, :type => String
  field :remote_image_url, :type => String
  belongs_to :party
  mount_uploader :image, CandidateImageUploader
end
