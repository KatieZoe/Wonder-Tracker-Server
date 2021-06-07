class Task < ApplicationRecord
  belong_to :user, :optional => true
end
