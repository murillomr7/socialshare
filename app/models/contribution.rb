class Contribution < ActiveRecord::Base
  belongs_to :share_request
  belongs_to :member
  delegate :name, to: :member, :prefix => true, :allow_nil => true
  delegate :title, to: :social_share, :prefix => true, :allow_nil => true
end
