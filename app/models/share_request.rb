class ShareRequest < ActiveRecord::Base
  belongs_to :member
  delegate :name, to: :member, :prefix => true, :allow_nil => true
end
