class Event < ActiveRecord::Base
  has_and_belongs_to_many :masters, class_name: "User"
  has_many :competitions
  has_many :event_pages

  Status = [:not_published, :open, :ongoing, :closed, :cancelled]
end
