p 'Create Taivalkoski event, no competitions yet.'

@tk15 = Event.create! name: '2015 Taivalvaara Sled Dog Race',
                      venue: 'Taivalvaara, Taivalkoski',
                      start_date: '2015-03-06',
                      end_date: '2015-03-08'

@tk15.masters << @kp