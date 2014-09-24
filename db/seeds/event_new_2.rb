p 'Create upcoming event Ohkola'

@oht15 = Event.create! name: 'Ohkolan talvi',
                      venue: 'Ohkola',
                      start_date: '2015-02-14',
                      end_date: '2015-02-15',
                      status: :open

@oht15.masters << @kp

@oht15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    Valjakkoajon sprinttikilpailu. Luokat Sp4, Sp4j, Sp6 ja 

    lastenluokka. Järjestäjä L-SVU. Lisäksi kansallinen Sp1, Sp2 ja Sp1J 3km.

    Kyseessä on molempina päivinä erilliset kilpailut joihin ilmoittaudutaan erikseen. Tällä 

    järjestelyllä pyritään antamaan mahdollisimman monelle kilpailijalle mahdollisuus osallistua 

    kilpailuun.
    CONTENT
@oht15_sp4_1 = @oht15.competitions.create! name: "Sp4 12km",
  description: "Sprint 4 dog class 12km, day 1",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp4_2 = @oht15.competitions.create! name: "Sp4 12km",
  description: "Sprint 4 dog class 12km, day 2",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp4j_1 = @oht15.competitions.create! name: "Sp4J 12km",
  description: "Sprint Juniori 4 dog class 12km, day 1",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp4j_2 = @oht15.competitions.create! name: "Sp4J 12km",
  description: "Sprint Juniori 4 dog class 12km, day 2",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp6_1 = @oht15.competitions.create! name: "Sp6 12km",
  description: "Sprint 6 dog class 12km, day 1",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp6_2 = @oht15.competitions.create! name: "Sp6 12km",
  description: "Sprint 6 dog class 12km, day 2",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp1 = @oht15.competitions.create! name: "Sp1 3km",
  description: "Sprint 1 dog class 3km",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp2 = @oht15.competitions.create! name: "Sp2 3km",
  description: "Sprint 2 dog class 3km",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
@oht15_sp1J = @oht15.competitions.create! name: "Sp1J 3km",
  description: "Sprint Juniori 1 dog class 3km",
  start_date: '2015-02-08',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_1sr
