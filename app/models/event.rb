class Event < ActiveRecord::Base
  has_and_belongs_to_many :masters, class_name: "User"
end
