class Task < ActiveRecord::Base
  attr_accessible :name, :list_id

  belongs_to :lists

  validates :name, :presence => true
end
