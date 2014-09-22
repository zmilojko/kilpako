p 'Create two events with two masters'

@ec14 = Event.create! name: '2014 IFSS European Championships Finland',
                        venue: 'Rautavaara',
                        start_date: '2014-03-07',
                        end_date: '2014-03-09',
                        status: :closed

@ec14.masters << @zm << @kp





@tk15 = Event.create! name: '2015 Taivalvaara Sled Dog Race',
                      venue: 'Taivalvaara, Taivalkoski',
                      start_date: '2015-03-06',
                      end_date: '2015-03-08'

@tk15.masters << @zm << @kp
