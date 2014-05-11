class Contribution < ActiveRecord::Base
  belongs_to :share_request
  belongs_to :member
end
