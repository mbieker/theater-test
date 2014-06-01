class Event < ActiveRecord::Base
has_many :dates, class_name: "EventDate" , foreign_key:'event_id'
end
