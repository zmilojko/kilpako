p 'Create Taivalkoski event, with competitions.'

@tk15 = Event.create! name: '2015 Taivalvaara Sled Dog Race',
                      venue: 'Taivalvaara, Taivalkoski',
                      start_date: '2015-03-07',
                      end_date: '2015-03-08',
                      status: :open

@tk15.masters << @kp

@tk15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    Järjestäjä RPKK. SM-kilpailu koirahiihdossa ja yhdistetyssä 

    sekä SP4, SP4J ja SP8. Kansallinen kilpailu luokissa SP6, SPU, harrastusluokka.

    CONTENT
@tk15_sp4 = @tk15.competitions.create! name: "Sp4 8km",
  description: "Sprint 4 dog class 8km",
  start_date: '2015-03-07',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@tk15_sp4j = @tk15.competitions.create! name: "Sp4J 8km",
  description: "Sprint Juniori 4 dog class 8km",
  start_date: '2015-03-07',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@tk15_sp6 = @tk15.competitions.create! name: "Sp6 12km",
  description: "Sprint 6 dog class 12km",
  start_date: '2015-03-07',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@tk15_sp8 = @tk15.competitions.create! name: "Sp8 17km",
  description: "Sprint 8 dog class 17km",
  start_date: '2015-03-07',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@tk15_spu = @tk15.competitions.create! name: "SpU 17km",
  description: "Sprint Open class 21km",
  start_date: '2015-03-07',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@tk15_harr = @tk15.competitions.create! name: "Harr. 8km",
  description: "Harrastus sarja 8km",
  start_date: '2015-03-08',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_1sr
@tk15_nms1 = @tk15.competitions.create! name: "NMS1 8 + 8",
  description: "Nordic Sprint 1 Dog – Man 8 + 8km",
  start_date: '2015-03-07',
  start_date: '2015-03-07',
  status: :closed,
  competition_format: @cf_1sr
@tk15_nws1 = @tk15.competitions.create! name: "NWS1 8 + 5",
  description: "Nordic Sprint 1 Dog – Women 8 + 5km",
  start_date: '2015-03-07',
  start_date: '2015-03-07',
  status: :closed,
  competition_format: @cf_1sr
@tk15_nmc = @tk15.competitions.create! name: "NMC 7 + 7",
  description: "Nordic Combined 1 Dog – Men 7 + 7km, Mass Start",
  start_date: '2014-03-07',
  start_date: '2014-03-07',
  status: :closed,
  competition_format: @cf_1sr
@tk15_nwc = @tk15.competitions.create! name: "NWC 7 + 7",
  description: "Nordic Combined 1 Dog – Women 7 + 7km, Mass Start",
  start_date: '2014-03-07',
  start_date: '2014-03-07',
  status: :closed,
  competition_format: @cf_1sr

