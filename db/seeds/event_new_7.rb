p 'Create upcoming event Kuusamo SPrint'

@kus15 = Event.create! name: 'Kuusamo Sprinti',
                      venue: 'Ruka, Kuusamo',
                      start_date: '2015-03-28',
                      end_date: '2015-03-28',
                      status: :open

@kus15.masters << @kp

@kus15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    järjestäjä SHS, Sp6 2 x 9 km. Lisäksi epävirallinen Sp4-luokka, 

    matka 9 km. Eli Sp6 starttaa ensin, kun tulevat maaliin, niin starttaa Sp4. Sp4-luokan jälkeen 

    starttaa Sp6-luokka uudelleen.
    CONTENT
@kus15_sp4 = @kus15.competitions.create! name: "Sp4 9km",
  description: "Epaviralinen Sprint 4 dog class 9km",
  start_date: '2015-03-28',
  end_date: '2015-03-28',
  status: :open,
  competition_format: @cf_1sr
@mts15_sp6 = @mts15.competitions.create! name: "Sp6 9+9km",
  description: "Sprint 6 dog class 9+9km",
  start_date: '2015-03-28',
  end_date: '2015-03-28',
  status: :open,
  competition_format: @cf_2rc

