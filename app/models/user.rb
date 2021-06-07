class User < ApplicationRecord
  has_many :tasks
  belongs_to :cohort, :optional => true
  has_many :jobtrackers


  has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
