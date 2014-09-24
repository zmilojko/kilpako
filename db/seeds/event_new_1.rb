p 'Create upcoming events Robur sprint and Ruuhirod'

# Robur Sprint

@rb15 = Event.create! name: 'Robur sprint 2015',
                      venue: 'Toivakka',
                      start_date: '2015-01-03',
                      end_date: '2015-01-04',
                      status: :open

@rb15.masters << @kp

@rb15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
  Robur sprint, 3-4.1. Järjestäjä Sisuva. SP4, SP8 ja koirahiihdot
  CONTENT
@rb15.event_pages.create! name: "Info",
  content: (<<-CONTENT.strip_heredoc)
  # Robur sprint, Toivakka,
  Ajankohta: 
  Lauantai, tammikuu 3, 2014 - Sunnuntai, tammikuu 4, 2015
  
  ROBUR -SPRINT Toivakka
  
  Kilpailun ajankohta: 3. -4.1.2014
  Kilpailupaikka ja majoitus: Toivakka, Hytönen Huikontie 630  Toivakka
  Kilpailuluokat ja kilpailumatkat: Sp4 6 km, Sp6 6 km, harrastusluokka max 3 koiraa 6 km, lastenluokka NMS1 ja NWS1 12 km. Kilpailuaikataulu Kisakanslia aukeaa klo  9:00 Race office opens, handout of bibs Ajajien kokous: klo 10:00 Ensimmäinen lähtö klo 11:00 skijoring, ajoluokat hiihtoluokkien jälkeen
  Kilpailusäännöt: VUL - IFSS - voimassa oleva lisenssi
  Kilpailujärjestäjä: Sisuva
  www.sisuva.vul.fi  
  Osaanottomaksut: Hiihtoluokat 25 eur/pv, ajoluokat 50 eur harrastussarjat 25 eur/pv (ilman lisessiä 25+10=35 eur vakuutusmaksu) lastenluokka ilmainen
  Osaanottomaksu maksetaan tilille: sisä-suomen valjakkourheilijat Nordea 105430-6101262, viite 138
  
  Ilmoittautuminen :
  Kimmo Hytönen, Huikontie 630  Toivakka
  kimmo.hytonen@versowood.fi  p.050 598 1337
  Viimeinen ilmoittautumispäivä 29.12.2014
  
  Kilpailunjohtaja : Kimmo Hytönen  
  Päätuomari : Kari Tolkkila 
  Eläinlääkäri: Päivystävä
  Ajo ohjeet: Toivakasta 7 km Lievestuoreelle päin. Tienviitassa lukee ampumarata Huikontie 630, Toivakka - majoitusvaraukset:  paikalliset mökit - Lastenluokka lauantaina. Uralla muutamia ysikymppikurveja Hiihdossa palkinnot yhteenlaskettujen aikojen perusteella (la+su) Sp8 ja hiihtoluokissa 6 km:n rata kierretään kahdesti Jos luokassa alle 5 kilpailijaa, luokkia voidaan yhdistää
  http://www.sisuva.vul.fi
  CONTENT
@rb15_sp4 = @rb15.competitions.create! name: "Sp4 6km",
  description: "Sp4 Sprint 4 dog class 6km",
  start_date: '2015-01-03',
  start_date: '2015-01-04',
  status: :open,
  competition_format: @cf_2rc
@rb15_sp6 = @rb15.competitions.create! name: "Sp4 6km",
  description: "Sp4 Sprint 4 dog class 6km",
  start_date: '2015-01-03',
  start_date: '2015-01-04',
  status: :open,
  competition_format: @cf_2rc
@rb15_nms1 = @rb15.competitions.create! name: "NMS1 12km",
  description: "NMS 1 dog skiing men 12km",
  start_date: '2015-01-04',
  start_date: '2015-01-04',
  status: :open,
  competition_format: @cf_1sr
@rb15_nws1 = @rb15.competitions.create! name: "NWS1 12km",
  description: "NMS 1 dog skiing women 12km",
  start_date: '2015-01-04',
  start_date: '2015-01-04',
  status: :open,
  competition_format: @cf_1sr




@rr15 = Event.create! name: 'Ruuhirod 2015',
                      venue: 'Seljesåsen, Alaveteli',
                      start_date: '2015-02-07',
                      end_date: '2015-02-08',
                      status: :open

@rr15.masters << @kp

@rr15.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
    Sääntöihin anottavat muutokset: MD-kisa ajettava 20h sisällä. Luokat 
    MD8, MD6, MD4, SP4, epävirallinen retkiluokka 1 x 20 km. Järjestäjä SHS/Larek.
    CONTENT
@rr15.event_pages.create! name: "Info",
  content: (<<-CONTENT.strip_heredoc)
    # Ruuhirod 2015
    
    20-VUOTISJUHLAKILPAILU SM-KOKEINEEN 8.-9.2.2014 KRUUNUPYYN SELJEKSESSÄ!
    
    KILPAILULUOKAT

    MD8, MD6 ja MD4 4 x 20 km ja kaikissa MD-luokissa SM-kilpailukoe, MD-luokkien EM-katsastuskilpailut! Kilpailumaksu 50 € ja SM-REK-koe 20 €.
    Ruuhis/print 4-kl 2 x 8 km. Kilpailumaksu 30 € ja REK-koe 15 €.
    Epävirallinen Ruuhikierros 1 x 20 km, koiramäärä min. 3 - max. 8, kilpailumaksu 20 €
    TUOMARINA: Hannu Miettinen

    ILMOITTAUTUMINEN KILPAILUIHIN JA KOKEESEEN 27.1.2014 mennessä, kaisu.salminen@kpedu.fi / puh. 045 844 4211

    Kilpailumaksut LAREKIN tilille FI67 5553 0320 0112 99, viestillä: RUUHIROD 2014.
    SM-koemaksut maksetaan SHS:n tilille 510802-258960, joko viitteellä 201993 tai 202014111.
    Kuitti koemaksusta esitettävä ilmoittautumisen yhteydessä.

    AIKATAULU

    Lauantai klo

    11:30 Ilmoittautuminen Seljeksen päärakennuksessa
    11:30 Ajajien kokous
    12:30 Ruuhisprint starttaa 1. kierrokselle arvotussa järjestyksessä
    14:00 Ruuhirod luokat starttaavat 1. kierrokselle arvotussa järjestyksessä.
    Kierrokset 2.- 4. lähtöajan saa itse valita. Lähdön voi tehdä itselleen sopivana tasaminuuttina. Lähtöaikeesta kerrottava 10 min ennen ajanottajalle. Lähtövälin edelliseen oltava 1 min. Kaikki 4 kierrosta on oltava ajettuna viimeistään 20 h kuluttua omasta starttiajasta laskettuna. n.15:00
    Ruuhikierros starttaa heti Ruuhirodin perään minuutin välein.
    Sunnuntai klo

    10:30 Ruuhisprint starttaa 2. kierrokselle nopeusjärjestyksessä
    n.12:30 Palkintojen jako
    MUUTA: Majoitus ja ruokailu, www.seljes.fi kilpailupaikan osoite: Seljesharju 204, 68410 Alaveteli
    CONTENT
@rr15_sp4 = @rr15.competitions.create! name: "Sp4 2 x 8km",
  description: "Ruuhisprint 4 dog class 2x8km",
  start_date: '2015-02-07',
  end_date: '2015-02-08',
  status: :open,
  competition_format: @cf_2rc
@rr15_md4 = @rr15.competitions.create! name: "MD4 4 x 20km",
  description: "Middistance 4 dog class 4x20km",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@rr15_md6 = @rr15.competitions.create! name: "MD6 4 x 20km",
  description: "Middistance 6 dog class 4x20km",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@rr15_md8 = @rr15.competitions.create! name: "MD8 4 x 20km",
  description: "Middistance 8 dog class 4x20km",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr
@rr15_harr = @rr15.competitions.create! name: "Harr. kierros 20km",
  description: "Ruuhikierros 1x20km, koiramäärä min. 3 - max. 8",
  start_date: '2015-02-07',
  end_date: '2015-02-07',
  status: :open,
  competition_format: @cf_1sr


