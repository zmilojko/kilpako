p 'Create ROI Cross event, with 10 competitions and results.'

@roi = Event.create! name: 'ROI Cross - Sulanmaan Valjakkourheilukisat',
  venue: 'Pöyliövaara',
  start_date: '2014-09-20',
  end_date: '2014-09-20',
  status: :closed

@roi.masters << @tp

@roi.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
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
  CONTENT

@roi_ds1 = @roi.competitions.create! name: "DS1 4,5km",
  description: "DS1 Men+Women 4,5km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_ds1_r = @roi_ds1.races.create! status: :closed, race_format: @rf_tt

@roi_dcmw = @roi.competitions.create! name: "DS1 4,5km",
  description: "DCMW Men+Women 4,5km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_dcmw_r = @roi_dcmw.races.create! status: :closed, race_format: @rf_tt

@roi_dbmdbw = @roi.competitions.create! name: "DBM/DBW 4,5km",
  description: "DBM/DBW Men+Women 4,5km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_dbmdbw_r = @roi_dbmdbw.races.create! status: :closed, race_format: @rf_tt

@roi_dcmjdcwj = @roi.competitions.create! name: "DCMJ / DCWJ 3km",
  description: "DCMJ / DCWJ Men+Women Juniors 3km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_dcmjdcwj_r = @roi_dcmjdcwj.races.create! status: :closed, race_format: @rf_tt

@roi_ds1j = @roi.competitions.create! name: "DS1J 3km",
  description: "DS1J Men+Women Juniors 3km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_ds1j_r = @roi_ds1j.races.create! status: :closed, race_format: @rf_tt

@roi_harrds1 = @roi.competitions.create! name: "Harr. DS1 3km",
  description: "DS1 Men+Women Harrastus sarja 3km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_harrds1_r = @roi_harrds1.races.create! status: :closed, race_format: @rf_tt

@roi_harrdc = @roi.competitions.create! name: "Harr. DC 3km",
  description: "DC Men+Women Harrastus sarja 3km",
  start_date: '2014-09-20',
  start_date: '2014-09-20',
  status: :closed,
  competition_format: @cf_1sr
@roi_harrdc_r = @roi_harrdc.races.create! status: :closed, race_format: @rf_tt

#competitors
@roi_ds1_vjf = @roi_ds1.competitors.create! user: @vjf, number: 1
@roi_ds1_mnf = @roi_ds1.competitors.create! user: @mnf, number: 2
@roi_ds1_klf = @roi_ds1.competitors.create! user: @klf, number: 3
@roi_ds1_klf = @roi_ds1.competitors.create! user: @klf, number: 4
@roi_ds1_rsf = @roi_ds1.competitors.create! user: @rsf, number: 5
@roi_dcmw_mtf = @roi_dcmw.competitors.create! user: @mtf, number: 1
@roi_dcmw_mrf = @roi_dcmw.competitors.create! user: @mrf, number: 2
@roi_dbmdbw_vjf = @roi_dbmdbw.competitors.create! user: @vjf, number: 1
@roi_dbmdbw_kmf = @roi_dbmdbw.competitors.create! user: @kmf, number: 2
@roi_dbmdbw_mnf = @roi_dbmdbw.competitors.create! user: @mnf, number: 3
@roi_dbmdbw_nkf = @roi_dbmdbw.competitors.create! user: @nkf, number: 4
@roi_dcmjdcwj_tnf = @roi_dcmjdcwj.competitors.create! user: @tnf, number: 1
@roi_ds1j_tnf = @roi_ds1j.competitors.create! user: @tnf, number: 1
@roi_harrds1_tnf = @roi_harrds1.competitors.create! user: @tnf, number: 1
@roi_harrds1_eÄf = @roi_harrds1.competitors.create! user: @eÄf, number: 2
@roi_harrds1_aaf = @roi_harrds1.competitors.create! user: @aaf, number: 3
@roi_harrds1_klf = @roi_harrds1.competitors.create! user: @klf, number: 4
@roi_harrds1_rsf = @roi_harrds1.competitors.create! user: @rsf, number: 5
@roi_harrdc_hkf = @roi_harrdc.competitors.create! user: @hkf, number: 1
@roi_harrdc_mtf = @roi_harrdc.competitors.create! user: @mtf, number: 2
@roi_harrdc_ahf = @roi_harrdc.competitors.create! user: @ahf, number: 3

#runs
@roi_ds1_r_vjf = @roi_ds1_vjf.runs.create! race: @roi_ds1_r, number: 1, result_time: 505
@roi_ds1_r_mnf = @roi_ds1_mnf.runs.create! race: @roi_ds1_r, number: 2, result_time: 516
@roi_ds1_r_klf = @roi_ds1_klf.runs.create! race: @roi_ds1_r, number: 3, result_time: 573
@roi_ds1_r_klf = @roi_ds1_klf.runs.create! race: @roi_ds1_r, number: 4, result_time: 796
@roi_ds1_r_rsf = @roi_ds1_rsf.runs.create! race: @roi_ds1_r, number: 5, result_time: 825
@roi_dcmw_r_mtf = @roi_dcmw_mtf.runs.create! race: @roi_dcmw_r, number: 1, result_time: 835
@roi_dcmw_r_mrf = @roi_dcmw_mrf.runs.create! race: @roi_dcmw_r, number: 2, result_time: 1160
@roi_dbmdbw_r_vjf = @roi_dbmdbw_vjf.runs.create! race: @roi_dbmdbw_r, number: 1, result_time: 455
@roi_dbmdbw_r_kmf = @roi_dbmdbw_kmf.runs.create! race: @roi_dbmdbw_r, number: 2, result_time: 460
@roi_dbmdbw_r_mnf = @roi_dbmdbw_mnf.runs.create! race: @roi_dbmdbw_r, number: 3, result_time: 488
@roi_dbmdbw_r_nkf = @roi_dbmdbw_nkf.runs.create! race: @roi_dbmdbw_r, number: 4, result_time: 519
@roi_dcmjdcwj_r_tnf = @roi_dcmjdcwj_tnf.runs.create! race: @roi_dcmjdcwj_r, number: 1, result_time: 536
@roi_ds1j_r_tnf = @roi_ds1j_tnf.runs.create! race: @roi_ds1j_r, number: 1, result_time: 493
@roi_harrds1_r_tnf = @roi_harrds1_tnf.runs.create! race: @roi_harrds1_r, number: 1, result_time: 319
@roi_harrds1_r_eÄf = @roi_harrds1_eÄf.runs.create! race: @roi_harrds1_r, number: 2, result_time: 332
@roi_harrds1_r_aaf = @roi_harrds1_aaf.runs.create! race: @roi_harrds1_r, number: 3, result_time: 347
@roi_harrds1_r_klf = @roi_harrds1_klf.runs.create! race: @roi_harrds1_r, number: 4, result_time: 398
@roi_harrds1_r_rsf = @roi_harrds1_rsf.runs.create! race: @roi_harrds1_r, number: 5, result_time: 459
@roi_harrdc_r_hkf = @roi_harrdc_hkf.runs.create! race: @roi_harrdc_r, number: 1, result_time: 435
@roi_harrdc_r_mtf = @roi_harrdc_mtf.runs.create! race: @roi_harrdc_r, number: 2, result_time: 454
@roi_harrdc_r_ahf = @roi_harrdc_ahf.runs.create! race: @roi_harrdc_r, number: 3, result_time: 572

