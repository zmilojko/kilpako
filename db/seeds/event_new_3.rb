p 'Create upcoming event Eastpoint Open'

@est15 = Event.create! name: 'Eastpoint Open',
                      venue: 'Nurmijärvi',
                      start_date: '2015-02-13',
                      end_date: '2015-02-15',
                      status: :open

@est15.masters << @kp

@est15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    Pitkän matkan SM-koiravaljakkoajokilpailu. Matka 300 km. 

    Järjestäjä Carelian Eastpoint.

    Kilpailuissa käytettäviin sääntöihin anottavat muutokset, jotka on ilmoitettava 

    kilpailukutsussa:

    - Rajoitettu 10 koiran luokka*

    Kilpailuun startatessa on valjakossa oltava vähintään 8 koiraa

    Maaliin tullessa on oltava vähintään 6 koiraa **

    * IFSS sääntö 35.2.5.

    ** Checkpointilta startatessa valjakossa on oltava vähintään 6 koiraa (kilpailukohtainen 

    sääntö)

    CONTENT
@est15_c = @est15.competitions.create! name: "",
  description: "",
  start_date: '2015-02-13',
  end_date: '2015-02-15',
  status: :open,
  competition_format: @cf_1sr


