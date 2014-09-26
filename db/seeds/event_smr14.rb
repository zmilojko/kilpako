p 'Create SM Rautavaara event, with competitions and results.'

@event_smr = Event.create! name: 'Metsäkartano Race, SM sprint, SM hiihto yhdistetty ja kahden koiran koirahiihto',
  venue: 'Rautavaara Metsäkartano',
  start_date: '2014-02-15',
  end_date: '2014-02-16',
  status: :closed

@event_smr.masters << @kp

@event_smr.event_pages.create! name: "Tervetuloa",
  content: (<<-CONTENT.strip_heredoc)
              Metsäkartano Race SM sprint ja SM hiihto

              __Ajankohta:__
              Lauantai, helmikuu 15, 2014 - Sunnuntai, helmikuu 16, 2014
              __Metsäkartano Race SM sprint  ja SM hiihto yhdistetty__
              
              Kilpailun ajankohta: 15. -16.2.2014
              Kilpailupaikka ja majoitus: Metsäkartano, Metsäkartanontie 700, 73900 Rautavaara
              www.metsäkartano.comNutrolin
              
              Kilpailuluokat ja kilpailumatkat
              SpU, Avoin sprintti, 22 km  
              Sp8, 8 koiran sprintti. 17 km
              Sp6, 6 koiran sprintti, 13.5 km
              Sp4, 4 koiran sprintti, 8 km
              Sp4J, Nuoret 14-16 v. 4 koiran sprintti, 8 km
              
              NMD/NWC, NMCJ / NWCJ  Yhdistetyn SM kilpailut 2 x 8 km
              NSM2/MSW2 2-koiran koirahiihto, naiset 13,5 km ja miehet 17 km
              
              Kilpailuaikataulu
              Kilsakanslia aukeaa: Perjantaina 14.2. illalla ja lauantai 15.2 aamulla kello 8.00.
              Ensimmäinen startti ( hiihto) kello 10.00.  Aikataulu on alustava!  
              Ajajien kokous: lauantai 15.2 kello 9.00
              
              Kilpailusäännöt: VUL kansalliset SM-kisasäännöt - IFSS.
              Voimassa oleva lisenssi
              
              Kilpailujärjestäjä: Sisuva, KPSH
              Kilpailun www-sivut:  sisuva.vul.fi  
              
              Osaanottomaksu maksetaan ajoluokissa SiSuVan tilille ja hiihtoluokissa KPSH:n tilille.
              Ajo 60 €, maksetaan tilille Sisä-Suomen valjakkourheilijat, FI54 1054 3006 101262, viitenumeo 1384
              Hiihto 30 € /luokka, maksetaan tilille Kuopion palvelus ja seurakoiraharrastajat ry,  FI55 4600 0010 2293 48, viitenumero 30205 01405. Hox: kirjoita IBAN-numero ilman välejä verkkopankissa! 
              
              Ilmoittautuminen
              Ajo: riitta.kempe@gmail.com
              Hiihto: terhi.lallukka@fimnet.fi
              Viimeinen ilmoittautumispäivä: keskiviikko 5.2.2014. Maksukuitti liitteeksi, kiitos!
              
              Tiedustelut: samuli.nissinen@gmail.com, puhelin. +358 45 3260707
              Kilpailunjohtaja : Riitta Kempe 050-3478356, riitta.kempe@gmail.com 
              Päätuomarit : Kari Tolkkila 
              Eläinlääkäri: Päivystävä
              http://www.sisuva.vul.fi
              CONTENT

@smr_nmcnwc = @event_smr.competitions.create! name: "SM NMC/NWC 16km",
  description: "NMD/NWC, NMCJ / NWCJ  Yhdistetyn SM kilpailut 2 x 8 km",
  start_date: '2014-02-15',
  end_date: '2014-02-15',
  status: :closed,
  competition_format: @cf_2rc
@smr_nmcnwc_day1 = @smr_nmcnwc.races.create! status: :closed, race_format: @rf_tt

@smr_sp6 = @event_smr.competitions.create! name: "SM Sp6 10 km",
  description: "SM Sp6, 6 koiran sprintti, 10 km",
  start_date: '2014-02-15',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_2rc
@smr_sp6_day1 = @smr_sp6.races.create! status: :closed, race_format: @rf_tt
@smr_sp6_day2 = @smr_sp6.races.create! status: :closed, race_format: @rf_tt

@smr_sp8 = @event_smr.competitions.create! name: "SM Sp8 14,7 km",
  description: "SM Sp8, 8 koiran sprintti. 14,7 km",
  start_date: '2014-02-15',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_2rc
@smr_sp8_day1 = @smr_sp8.races.create! status: :closed, race_format: @rf_tt
@smr_sp8_day2 = @smr_sp8.races.create! status: :closed, race_format: @rf_tt

@smr_sp4 = @event_smr.competitions.create! name: "Sp4 7,2 km",
  description: "Sp4, 4 koiran sprintti. 7,2 km",
  start_date: '2014-02-15',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_2rc
@smr_sp4_day1 = @smr_sp4.races.create! status: :closed, race_format: @rf_tt
@smr_sp4_day2 = @smr_sp4.races.create! status: :closed, race_format: @rf_tt

@smr_spu = @event_smr.competitions.create! name: "SpU 21 km",
  description: "SpU, Avoin sprintti, 21 km",
  start_date: '2014-02-15',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_2rc
@smr_spu_day1 = @smr_spu.races.create! status: :closed, race_format: @rf_tt
@smr_spu_day2 = @smr_spu.races.create! status: :closed, race_format: @rf_tt

@smr_nms2 = @event_smr.competitions.create! name: "NMS2 10 km",
  description: "NSM2 2-koiran koirahiihto, miehet 10 km",
  start_date: '2014-02-16',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_1sr
@smr_nms2_day2 = @smr_nms2.races.create! status: :closed, race_format: @rf_tt

@smr_nws2 = @event_smr.competitions.create! name: "NWS2 10 km",
  description: "NSW2 2-koiran koirahiihto, naiset 10 km",
  start_date: '2014-02-16',
  end_date: '2014-02-16',
  status: :closed,
  competition_format: @cf_1sr
@smr_nws2_day2 = @smr_nws2.races.create! status: :closed, race_format: @rf_tt

#competitors
@smr_nmcnwc_vjf = @smr_nmcnwc.competitors.create! user: @vjf, number: 1
@smr_nmcnwc_mnf = @smr_nmcnwc.competitors.create! user: @mnf, number: 2
@smr_nmcnwc_snf = @smr_nmcnwc.competitors.create! user: @snf, number: 3
@smr_nmcnwc_mtf = @smr_nmcnwc.competitors.create! user: @mtf, number: 4
@smr_nmcnwc_tlf = @smr_nmcnwc.competitors.create! user: @tlf, number: 5
@smr_nmcnwc_mvf = @smr_nmcnwc.competitors.create! user: @mvf, number: 6
@smr_nmcnwc_mvf = @smr_nmcnwc.competitors.create! user: @mvf, number: 7
@smr_nmcnwc_pkf = @smr_nmcnwc.competitors.create! user: @pkf, number: 8
@smr_nmcnwc_rhf = @smr_nmcnwc.competitors.create! user: @rhf, number: 9
@smr_sp6_tkf = @smr_sp6.competitors.create! user: @tkf, number: 1
@smr_sp6_khf = @smr_sp6.competitors.create! user: @khf, number: 2
@smr_sp6_rkf = @smr_sp6.competitors.create! user: @rkf, number: 3
@smr_sp6_thf = @smr_sp6.competitors.create! user: @thf, number: 4
@smr_sp6_amf = @smr_sp6.competitors.create! user: @amf, number: 5
@smr_sp6_paf = @smr_sp6.competitors.create! user: @paf, number: 6
@smr_sp6_atf = @smr_sp6.competitors.create! user: @atf, number: 7
@smr_sp6_mnf = @smr_sp6.competitors.create! user: @mnf, number: 8
@smr_sp8_phf = @smr_sp8.competitors.create! user: @phf, number: 1
@smr_sp8_vlf = @smr_sp8.competitors.create! user: @vlf, number: 2
@smr_sp8_vhf = @smr_sp8.competitors.create! user: @vhf, number: 3
@smr_sp8_alf = @smr_sp8.competitors.create! user: @alf, number: 4
@smr_sp8_spf = @smr_sp8.competitors.create! user: @spf, number: 5
@smr_sp8_jpf = @smr_sp8.competitors.create! user: @jpf, number: 6
@smr_sp4_amf = @smr_sp4.competitors.create! user: @amf, number: 1
@smr_sp4_ehf = @smr_sp4.competitors.create! user: @ehf, number: 2
@smr_sp4_khf = @smr_sp4.competitors.create! user: @khf, number: 3
@smr_sp4_rkf = @smr_sp4.competitors.create! user: @rkf, number: 4
@smr_sp4_jkf = @smr_sp4.competitors.create! user: @jkf, number: 5
@smr_sp4_kpf = @smr_sp4.competitors.create! user: @kpf, number: 6
@smr_sp4_klf = @smr_sp4.competitors.create! user: @klf, number: 7
@smr_sp4_vlf = @smr_sp4.competitors.create! user: @vlf, number: 8
@smr_sp4_sbf = @smr_sp4.competitors.create! user: @sbf, number: 9
@smr_sp4_apf = @smr_sp4.competitors.create! user: @apf, number: 10
@smr_sp4_jrf = @smr_sp4.competitors.create! user: @jrf, number: 11
@smr_sp4_akf = @smr_sp4.competitors.create! user: @akf, number: 12
@smr_sp4_ahs = @smr_sp4.competitors.create! user: @ahs, number: 13
@smr_sp4_aif = @smr_sp4.competitors.create! user: @aif, number: 14
@smr_sp4_taf = @smr_sp4.competitors.create! user: @taf, number: 15
@smr_sp4_vrs = @smr_sp4.competitors.create! user: @vrs, number: 16
@smr_sp4_kpf = @smr_sp4.competitors.create! user: @kpf, number: 17
@smr_sp4_rsf = @smr_sp4.competitors.create! user: @rsf, number: 18
@smr_sp4_mhf = @smr_sp4.competitors.create! user: @mhf, number: 19
@smr_sp4_shf = @smr_sp4.competitors.create! user: @shf, number: 20
@smr_sp4_nmf = @smr_sp4.competitors.create! user: @nmf, number: 21
@smr_sp4_tkf = @smr_sp4.competitors.create! user: @tkf, number: 22
@smr_spu_rsf = @smr_spu.competitors.create! user: @rsf, number: 1
@smr_spu_alf = @smr_spu.competitors.create! user: @alf, number: 2
@smr_spu_vlf = @smr_spu.competitors.create! user: @vlf, number: 3
@smr_spu_ajf = @smr_spu.competitors.create! user: @ajf, number: 4
@smr_spu_jef = @smr_spu.competitors.create! user: @jef, number: 5
@smr_spu_klf = @smr_spu.competitors.create! user: @klf, number: 6
@smr_nms2_vjf = @smr_nms2.competitors.create! user: @vjf, number: 3
@smr_nms2_snf = @smr_nms2.competitors.create! user: @snf, number: 2
@smr_nms2_mtf = @smr_nms2.competitors.create! user: @mtf, number: 4
@smr_nms2_jrf = @smr_nms2.competitors.create! user: @jrf, number: 5
@smr_nms2_pkf = @smr_nms2.competitors.create! user: @pkf, number: 1
@smr_nws2_slf = @smr_nws2.competitors.create! user: @slf, number: 10
@smr_nws2_mnf = @smr_nws2.competitors.create! user: @mnf, number: 6
@smr_nws2_mtf = @smr_nws2.competitors.create! user: @mtf, number: 7
@smr_nws2_ejf = @smr_nws2.competitors.create! user: @ejf, number: 9
@smr_nws2_rhf = @smr_nws2.competitors.create! user: @rhf, number: 8

#day 1 runs
@smr_nmcnwc_day1_vjf = @smr_nmcnwc_vjf.runs.create! race: @smr_nmcnwc_day1, number: 1, result_time: 1918.4
@smr_nmcnwc_day1_mnf = @smr_nmcnwc_mnf.runs.create! race: @smr_nmcnwc_day1, number: 2, result_time: 1963.1
@smr_nmcnwc_day1_snf = @smr_nmcnwc_snf.runs.create! race: @smr_nmcnwc_day1, number: 3, result_time: 2058.2
@smr_nmcnwc_day1_mtf = @smr_nmcnwc_mtf.runs.create! race: @smr_nmcnwc_day1, number: 4, result_time: 2112.1
@smr_nmcnwc_day1_tlf = @smr_nmcnwc_tlf.runs.create! race: @smr_nmcnwc_day1, number: 5, result_time: 2269.8
@smr_nmcnwc_day1_mvf = @smr_nmcnwc_mvf.runs.create! race: @smr_nmcnwc_day1, number: 6, result_time: 2272.3
@smr_nmcnwc_day1_mvf = @smr_nmcnwc_mvf.runs.create! race: @smr_nmcnwc_day1, number: 7, result_time: 2276.6
@smr_nmcnwc_day1_pkf = @smr_nmcnwc_pkf.runs.create! race: @smr_nmcnwc_day1, number: 8, result_time: 2328.0
@smr_nmcnwc_day1_rhf = @smr_nmcnwc_rhf.runs.create! race: @smr_nmcnwc_day1, number: 9, verdict: :dns
@smr_sp6_day1_tkf = @smr_sp6_tkf.runs.create! race: @smr_sp6_day1, number: 1, result_time: 1143.0
@smr_sp6_day1_khf = @smr_sp6_khf.runs.create! race: @smr_sp6_day1, number: 2, result_time: 1169.4
@smr_sp6_day1_rkf = @smr_sp6_rkf.runs.create! race: @smr_sp6_day1, number: 3, result_time: 1214.0
@smr_sp6_day1_thf = @smr_sp6_thf.runs.create! race: @smr_sp6_day1, number: 4, result_time: 1214.4
@smr_sp6_day1_amf = @smr_sp6_amf.runs.create! race: @smr_sp6_day1, number: 5, result_time: 1338.0
@smr_sp6_day1_paf = @smr_sp6_paf.runs.create! race: @smr_sp6_day1, number: 6, result_time: 1472.2
@smr_sp6_day1_atf = @smr_sp6_atf.runs.create! race: @smr_sp6_day1, number: 7, result_time: 1681.7
@smr_sp6_day1_mnf = @smr_sp6_mnf.runs.create! race: @smr_sp6_day1, number: 8, result_time: 2023.0
@smr_sp8_day1_phf = @smr_sp8_phf.runs.create! race: @smr_sp8_day1, number: 1, result_time: 1792.8
@smr_sp8_day1_vlf = @smr_sp8_vlf.runs.create! race: @smr_sp8_day1, number: 2, result_time: 1870.1
@smr_sp8_day1_vhf = @smr_sp8_vhf.runs.create! race: @smr_sp8_day1, number: 3, result_time: 2026.4
@smr_sp8_day1_alf = @smr_sp8_alf.runs.create! race: @smr_sp8_day1, number: 4, result_time: 2005.8
@smr_sp8_day1_spf = @smr_sp8_spf.runs.create! race: @smr_sp8_day1, number: 5, result_time: 2674.8
@smr_sp8_day1_jpf = @smr_sp8_jpf.runs.create! race: @smr_sp8_day1, number: 6, verdict: :dns
@smr_sp4_day1_amf = @smr_sp4_amf.runs.create! race: @smr_sp4_day1, number: 1, result_time: 830.8
@smr_sp4_day1_ehf = @smr_sp4_ehf.runs.create! race: @smr_sp4_day1, number: 2, result_time: 867.6
@smr_sp4_day1_khf = @smr_sp4_khf.runs.create! race: @smr_sp4_day1, number: 3, result_time: 893.4
@smr_sp4_day1_rkf = @smr_sp4_rkf.runs.create! race: @smr_sp4_day1, number: 4, result_time: 867.0
@smr_sp4_day1_jkf = @smr_sp4_jkf.runs.create! race: @smr_sp4_day1, number: 5, result_time: 930.4
@smr_sp4_day1_kpf = @smr_sp4_kpf.runs.create! race: @smr_sp4_day1, number: 6, result_time: 912.7
@smr_sp4_day1_klf = @smr_sp4_klf.runs.create! race: @smr_sp4_day1, number: 7, result_time: 922.3
@smr_sp4_day1_vlf = @smr_sp4_vlf.runs.create! race: @smr_sp4_day1, number: 8, result_time: 941.5
@smr_sp4_day1_sbf = @smr_sp4_sbf.runs.create! race: @smr_sp4_day1, number: 9, result_time: 952.6
@smr_sp4_day1_apf = @smr_sp4_apf.runs.create! race: @smr_sp4_day1, number: 10, result_time: 1005.6
@smr_sp4_day1_jrf = @smr_sp4_jrf.runs.create! race: @smr_sp4_day1, number: 11, result_time: 1061.2
@smr_sp4_day1_akf = @smr_sp4_akf.runs.create! race: @smr_sp4_day1, number: 12, result_time: 1123.6
@smr_sp4_day1_ahs = @smr_sp4_ahs.runs.create! race: @smr_sp4_day1, number: 13, result_time: 1106.2
@smr_sp4_day1_aif = @smr_sp4_aif.runs.create! race: @smr_sp4_day1, number: 14, result_time: 1197.2
@smr_sp4_day1_taf = @smr_sp4_taf.runs.create! race: @smr_sp4_day1, number: 15, result_time: 1287.8
@smr_sp4_day1_vrs = @smr_sp4_vrs.runs.create! race: @smr_sp4_day1, number: 16, result_time: 1278.1
@smr_sp4_day1_kpf = @smr_sp4_kpf.runs.create! race: @smr_sp4_day1, number: 17, result_time: 1490.0
@smr_sp4_day1_rsf = @smr_sp4_rsf.runs.create! race: @smr_sp4_day1, number: 18, result_time: 1635.7
@smr_sp4_day1_mhf = @smr_sp4_mhf.runs.create! race: @smr_sp4_day1, number: 19, result_time: 1618.6
@smr_sp4_day1_shf = @smr_sp4_shf.runs.create! race: @smr_sp4_day1, number: 20, result_time: 1856.2
@smr_sp4_day1_nmf = @smr_sp4_nmf.runs.create! race: @smr_sp4_day1, number: 21, result_time: 2223.4
@smr_sp4_day1_tkf = @smr_sp4_tkf.runs.create! race: @smr_sp4_day1, number: 22, result_time: 964.8
@smr_spu_day1_rsf = @smr_spu_rsf.runs.create! race: @smr_spu_day1, number: 1, result_time: 2823.9
@smr_spu_day1_alf = @smr_spu_alf.runs.create! race: @smr_spu_day1, number: 2, result_time: 2884.2
@smr_spu_day1_vlf = @smr_spu_vlf.runs.create! race: @smr_spu_day1, number: 3, result_time: 2930.2
@smr_spu_day1_ajf = @smr_spu_ajf.runs.create! race: @smr_spu_day1, number: 4, result_time: 2974.0
@smr_spu_day1_jef = @smr_spu_jef.runs.create! race: @smr_spu_day1, number: 5, verdict: :dns
@smr_spu_day1_klf = @smr_spu_klf.runs.create! race: @smr_spu_day1, number: 6, verdict: :dns

#day 2 runs
@smr_sp6_day2_tkf = @smr_sp6_tkf.runs.create! race: @smr_sp6_day2, number: 1, result_time: 1120.4
@smr_sp6_day2_khf = @smr_sp6_khf.runs.create! race: @smr_sp6_day2, number: 2, result_time: 1160.6
@smr_sp6_day2_rkf = @smr_sp6_rkf.runs.create! race: @smr_sp6_day2, number: 3, result_time: 1183.1
@smr_sp6_day2_thf = @smr_sp6_thf.runs.create! race: @smr_sp6_day2, number: 4, result_time: 1196.3
@smr_sp6_day2_amf = @smr_sp6_amf.runs.create! race: @smr_sp6_day2, number: 5, result_time: 1353.6
@smr_sp6_day2_paf = @smr_sp6_paf.runs.create! race: @smr_sp6_day2, number: 6, result_time: 1522.7
@smr_sp6_day2_atf = @smr_sp6_atf.runs.create! race: @smr_sp6_day2, number: 7, result_time: 1702.0
@smr_sp6_day2_mnf = @smr_sp6_mnf.runs.create! race: @smr_sp6_day2, number: 8, result_time: 2138.7
@smr_sp8_day2_phf = @smr_sp8_phf.runs.create! race: @smr_sp8_day2, number: 1, result_time: 1779.7
@smr_sp8_day2_vlf = @smr_sp8_vlf.runs.create! race: @smr_sp8_day2, number: 2, result_time: 1860.2
@smr_sp8_day2_vhf = @smr_sp8_vhf.runs.create! race: @smr_sp8_day2, number: 3, result_time: 2036.9
@smr_sp8_day2_alf = @smr_sp8_alf.runs.create! race: @smr_sp8_day2, number: 4, result_time: 2200.9
@smr_sp8_day2_spf = @smr_sp8_spf.runs.create! race: @smr_sp8_day2, number: 5, result_time: 2430.7
@smr_sp8_day2_jpf = @smr_sp8_jpf.runs.create! race: @smr_sp8_day2, number: 6, verdict: :dns
@smr_sp4_day2_amf = @smr_sp4_amf.runs.create! race: @smr_sp4_day2, number: 1, result_time: 819.6
@smr_sp4_day2_ehf = @smr_sp4_ehf.runs.create! race: @smr_sp4_day2, number: 2, result_time: 854.7
@smr_sp4_day2_khf = @smr_sp4_khf.runs.create! race: @smr_sp4_day2, number: 3, result_time: 857.5
@smr_sp4_day2_rkf = @smr_sp4_rkf.runs.create! race: @smr_sp4_day2, number: 4, result_time: 889.2
@smr_sp4_day2_jkf = @smr_sp4_jkf.runs.create! race: @smr_sp4_day2, number: 5, result_time: 880.4
@smr_sp4_day2_kpf = @smr_sp4_kpf.runs.create! race: @smr_sp4_day2, number: 6, result_time: 923.4
@smr_sp4_day2_klf = @smr_sp4_klf.runs.create! race: @smr_sp4_day2, number: 7, result_time: 919.7
@smr_sp4_day2_vlf = @smr_sp4_vlf.runs.create! race: @smr_sp4_day2, number: 8, result_time: 929.3
@smr_sp4_day2_sbf = @smr_sp4_sbf.runs.create! race: @smr_sp4_day2, number: 9, result_time: 992.1
@smr_sp4_day2_apf = @smr_sp4_apf.runs.create! race: @smr_sp4_day2, number: 10, result_time: 1006.2
@smr_sp4_day2_jrf = @smr_sp4_jrf.runs.create! race: @smr_sp4_day2, number: 11, result_time: 1068.6
@smr_sp4_day2_akf = @smr_sp4_akf.runs.create! race: @smr_sp4_day2, number: 12, result_time: 1111.7
@smr_sp4_day2_ahs = @smr_sp4_ahs.runs.create! race: @smr_sp4_day2, number: 13, result_time: 1196.6
@smr_sp4_day2_aif = @smr_sp4_aif.runs.create! race: @smr_sp4_day2, number: 14, result_time: 1186.4
@smr_sp4_day2_taf = @smr_sp4_taf.runs.create! race: @smr_sp4_day2, number: 15, result_time: 1380.8
@smr_sp4_day2_vrs = @smr_sp4_vrs.runs.create! race: @smr_sp4_day2, number: 16, result_time: 1442.7
@smr_sp4_day2_kpf = @smr_sp4_kpf.runs.create! race: @smr_sp4_day2, number: 17, result_time: 1513.8
@smr_sp4_day2_rsf = @smr_sp4_rsf.runs.create! race: @smr_sp4_day2, number: 18, result_time: 1526.0
@smr_sp4_day2_mhf = @smr_sp4_mhf.runs.create! race: @smr_sp4_day2, number: 19, result_time: 1589.8
@smr_sp4_day2_shf = @smr_sp4_shf.runs.create! race: @smr_sp4_day2, number: 20, result_time: 1951.9
@smr_sp4_day2_nmf = @smr_sp4_nmf.runs.create! race: @smr_sp4_day2, number: 21, result_time: 2157.6
@smr_sp4_day2_tkf = @smr_sp4_tkf.runs.create! race: @smr_sp4_day2, number: 22, verdict: :dns
@smr_spu_day2_rsf = @smr_spu_rsf.runs.create! race: @smr_spu_day2, number: 1, result_time: 2900.7
@smr_spu_day2_alf = @smr_spu_alf.runs.create! race: @smr_spu_day2, number: 2, result_time: 3051.0
@smr_spu_day2_vlf = @smr_spu_vlf.runs.create! race: @smr_spu_day2, number: 3, verdict: :dns
@smr_spu_day2_ajf = @smr_spu_ajf.runs.create! race: @smr_spu_day2, number: 4, verdict: :dns
@smr_spu_day2_jef = @smr_spu_jef.runs.create! race: @smr_spu_day2, number: 5, verdict: :dns
@smr_spu_day2_klf = @smr_spu_klf.runs.create! race: @smr_spu_day2, number: 6, verdict: :dns
@smr_nms2_day2_vjf = @smr_nms2_vjf.runs.create! race: @smr_nms2_day2, number: 3, result_time: 1094.0
@smr_nms2_day2_snf = @smr_nms2_snf.runs.create! race: @smr_nms2_day2, number: 2, result_time: 1172.0
@smr_nms2_day2_mtf = @smr_nms2_mtf.runs.create! race: @smr_nms2_day2, number: 4, result_time: 1226.0
@smr_nms2_day2_jrf = @smr_nms2_jrf.runs.create! race: @smr_nms2_day2, number: 5, result_time: 1267.0
@smr_nms2_day2_pkf = @smr_nms2_pkf.runs.create! race: @smr_nms2_day2, number: 1, result_time: 1460.0
@smr_nws2_day2_slf = @smr_nws2_slf.runs.create! race: @smr_nws2_day2, number: 10, result_time: 1101.0
@smr_nws2_day2_mnf = @smr_nws2_mnf.runs.create! race: @smr_nws2_day2, number: 6, result_time: 1112.0
@smr_nws2_day2_mtf = @smr_nws2_mtf.runs.create! race: @smr_nws2_day2, number: 7, result_time: 1139.0
@smr_nws2_day2_ejf = @smr_nws2_ejf.runs.create! race: @smr_nws2_day2, number: 9, result_time: 1183.0
@smr_nws2_day2_rhf = @smr_nws2_rhf.runs.create! race: @smr_nws2_day2, number: 8, result_time: 1783.0

