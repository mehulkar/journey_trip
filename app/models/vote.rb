class Vote < ActiveRecord::Base
  belongs_to :poll
  belongs_to :location
  validates_presence_of :person_name
end
