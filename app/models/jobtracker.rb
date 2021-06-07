class Jobtracker < ApplicationRecord
  belongs_to :user, :optional => true
end
