p 'Create upcoming event SHS Metsäkartano sprint'

@mts15 = Event.create! name: 'SHS Metsäkartano Sprint & MD',
                      venue: 'Metsäkartano, Rautavaara',
                      start_date: '2015-03-14',
                      end_date: '2015-03-15',
                      status: :open

@mts15.masters << @kp

@mts15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
- SHS:n seuramestaruuskilpailut. SM-luokat 

ovat SPU, SP6. Kansalliset luokat ovat SP4, SP4J, MD12, MD6, nuorten-, lasten- ja 

harrastusluokka. Järjestäjä SHS. (Järjestäjän huomio: rastittivat kohdan kansallinen kilpailu 

mutta eivät halua rajata pois ulkomaalaisia osallistujia. Lomakkeesta puuttuu siis kohta 

kansainvälinen kilpailu).
Ilmoittautuminen sekä kisassa palkitseminen tapahtuu roduttain. Kilpailussa anotaan SM-luokat myös RNB-luokille.
    CONTENT
@mts15_sp4 = @mts15.competitions.create! name: "Sp4 8km",
  description: "Sprint 4 dog class 8km",
  start_date: '2015-03-14',
  end_date: '2015-03-15',
  status: :open,
  competition_format: @cf_2rc
@mts15_sp4j = @mts15.competitions.create! name: "Sp4J 8km",
  description: "Sprint Juniori 4 dog class 8km",
  start_date: '2015-03-14',
  end_date: '2015-03-15',
  status: :open,
  competition_format: @cf_2rc
@mts15_md6 = @mts15.competitions.create! name: "MD6 42km",
  description: "Mid distance 6 dog class 41km",
  start_date: '2015-03-14',
  end_date: '2015-03-15',
  status: :open,
  competition_format: @cf_2rc
@mts15_md12 = @mts15.competitions.create! name: "MD12 42km",
  description: "Mid distance 12 dog class 41km",
  start_date: '2015-03-14',
  end_date: '2015-03-15',
  status: :open,
  competition_format: @cf_2rc
@mts15_harr = @mts15.competitions.create! name: "Harr 8km",
  description: "Harrastus luokka 8km",
  start_date: '2015-03-15',
  end_date: '2015-03-15',
  status: :open,
  competition_format: @cf_1sr


