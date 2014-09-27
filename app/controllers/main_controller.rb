class MainController < ApplicationController
  def get
    @previous_events = Event.where("start_date < ?", Time.zone.now.beginning_of_day)
    @coming_events = Event.where("start_date >= ?", Time.zone.now.beginning_of_day)
  end
end
