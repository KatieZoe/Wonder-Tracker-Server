class User < ApplicationRecord
  has_many :tasks
  belongs_to :cohort, :optional => true
  has_many :jobtrackers


  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
