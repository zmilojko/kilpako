p 'Create come competitions for the @ec14'

@c1 = Competition.create! name: 'sp4 11km',
                        description: 'Four dog sprint 11km',
                        start_date: '2014-03-08',
                        end_date: '2014-03-09',
                        status: :not_published,
                        competition_format: @cf_2rc,
                        event: @ec14

@c2 = Competition.create! name: 'md6 42km',
                        description: 'Six dog mid distance 42km',
                        start_date: '2014-03-09',
                        end_date: '2014-03-09',
                        status: :not_published,
                        competition_format: @cf_1sr,
                        event: @ec14