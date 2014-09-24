p 'Create upcoming event Ruuna Race'

@rur15 = Event.create! name: 'Ruunaa Race',
                      venue: 'Ruuna, Lieksa',
                      start_date: '2015-03-06',
                      end_date: '2015-03-08',
                      status: :open

@rur15.masters << @kp

@rur15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    Keskipitkän matkan SM-koiravaljakkoajokilpailut. Kilpailuluokkien 
    koiramäärä: 5-8 koiran luokka ja 3-4 koiran luokka. Järjestäjä Carelian Eastpoint.
    Kilpailuissa käytettäviin sääntöihin anottavat muutokset, jotka on ilmoitettava 
    kilpailukutsussa:
    Kilpailussa anotaan SM-luokat myös RNB-luokille , Kilpailuluokat MD rajoitettu ( MD8 ja MD4 
    ) / VUL kansalliset säännöt.
    CONTENT
@rur15_md4 = @rur15.competitions.create! name: "MD4 150km",
  description: "MD 4 dog class 3x50km",
  start_date: '2015-03-06',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc
@rur15_md8 = @rur15.competitions.create! name: "MD8 150km",
  description: "MD 8 dog class 3x50km",
  start_date: '2015-03-06',
  end_date: '2015-03-08',
  status: :open,
  competition_format: @cf_2rc


