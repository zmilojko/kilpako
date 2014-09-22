p 'Create ROI Cross event, with 10 competitions and results.'

@event_roi = Event.create! name: 'ROI Cross - Sulanmaan Valjakkourheilukisat',
                  venue: 'Pöyliövaara',
                  start_date: '2014-09-14',
                  end_date: '2014-09-14',
                  status: :closed

=begin
Info: 

# TERVETULOA ROI CROSS – SULANMAAN VALJAKKOURHEILUKISOIHIN PÖYLIÖVAARAAN 20.9.14
* Tuomari: Kauko Ruokolainen
* Säännöt: IFSS/VUL kansalliset
* Järjestäjä: RPKK
* Kisapäällikkö & ratamestari: Niina Konttaniemi, 0405390372, niina.konttaniemi@vul.fi

* Luokat: DCM/W 4,5 km, DCM/WJ 3 km, koirajuoksun harrastussarja 3 km (harrastussarjassa isot ja pienet koirat palkitaan erikseen, koirien koot yli ja alle 43cm), DBM/W 4,5 km, DBM/WJ 3 km, koirapyöräilyn harrastussarja 3 km, DS1 4,5 km, DS1J 3 km, DS1 harrastussarja 3 km. Miehet ja naiset samassa sarjassa.
* Aikataulu: toimisto aukeaa klo 9.00, ajajien kokous klo 10.30, ensimmäinen startti & luokka klo 11.00.
* Ilmoittautumiset: Ilmoittautumiset 14.9.2014 mennessä: niina.konttaniemi@vul.fi
* Hinta: 
    * Kilpailuluokat 20 €
    * Harrastus 10 €
    * Harrastussarjojen kilpailukohtainen vakuutusmaksu + 10 €
    * Jälki-ilmoittautuneilta peritään 10 € enemmän.
    * Harrastussarjaan voi ilmoittautua myös kilpailupäivänä ilman lisämaksua (harrastus 10 € + lisenssittömät 10 € enemmän).
    * Maksukuitti ilmon mukaan. Pohjolan Osuuspankki 564002-4151071, viite 56999
* Muuta: Kilpailut pidetään Rovaniemellä Pöyliövaaran hiihtolatupohjalla. Ajo-ohjeet toimitetaan kisakirjeessä kilpailijoille tai pyydettäessä sähköpostiin.
=end


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
