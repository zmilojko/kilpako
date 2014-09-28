p 'Create event 2014 IFSS European Championships Finland'

# NOTE! All MD runs should add one hour to each time (3600 seconds!) Sometimes maybe 2.

@ec14 = Event.create! name: '2014 IFSS European Championships Finland',
                        venue: 'Rautavaara',
                        start_date: '2014-03-07',
                        end_date: '2014-03-09',
                        status: :closed

@ec14.masters << @tp << @kp

@ec14.event_pages.create! name: "Welcome",
                               content: (<<-CONTENT.strip_heredoc)
                                # Welcome to race in wintery Finland!

                                Finland has the joy of hosting the sleddog sports on snow European Championships!
                                All races in MD, sprint, skidog pulka and skijoring classes take place in the same race center and same trails in Metsäkartano in Rautavaara, Eastern Finland. 

                                An all new network of trails is being built in Metsäkartano. The hilly terrain offers a beautiful setting for the first IFSS on snow European Championships. The trail profiles have been planned together with dog skiers and sled drivers. MD-classes are driven as two- lap race without the lap change taking place near the start/finish area. The trail width follows the new IFSS rules with the basic width being 4 meters and 6 meters for mass start races. 

                                Finnish Sleddog Sport Federation puts extra effort into the securing condition of the trails. During the winter starting from mid-January Metsäkartano is going to host training camps and national races in many classes so the trails will be in good condition all winter. The people in Metsäkartano speak English. Finnish Championship in nordic and sprint will be in February 15-16th. Everybody is welcome to the Finnish championship race! Look for more information in the Finnish Sleddog Sport Federation calendar. 

                                The European Championships will be hosted by Finnish Sleddog Sport Federation in conjunction with three national clubs.
                                The opening ceremonies will be held the 6th of March and the races from 7th to 9th of March 2014. 

                                Accommodation can be booked from Metsäkartano. There are many different choices of accommodation from suites to apartments in a wilderness hotel. The accommodation in Metsäkartano is located 500 meters and the camping place just 200 meters from the start/finish area. There are a limited number of accommodations available in Metsäkartano so book yours as soon as possible. Bomba in Nurmes offers nice lodges with breakfast for approximately 50 rooms and 40 kilometers away from Metsäkartano. There is a hotel in the center of Rautavaara about 20 km away. Tahko skiing center lies about 60 km away and they have plenty of hotel and lodging accommodation available. A newsletter about accommodation offers with booking information is going to be released during October of 2013. 
                                CONTENT

@ec14.event_pages.create! name: "Information",
                               content: (<<-CONTENT.strip_heredoc)
                                # Valjakkourheilun Euroopanmestaruudet ratkaistiin Rautavaaralla
                                
                                Valjakkourheilun Euroopanmestaruuksista kilpailtiin 7.-9.3 Rautavaaran Metsäkartanolla sekä kunnan hiihtokeskuksessa. Mestaruudet ratkottiin valjakkoajon sprinttiluokissa ja keskipitkillä matkoilla sekä hiihtoluokissa koirahiihdossa, yhdistetyssä ja viestikilpailussa. Kilpailuun osallistuu yhteensä 15 maata ja kilpailusuorituksia tuli lähes kaksisataa.

                                Perjataina Suomi saavutti koirahiihdossa kultaa, hopeaa ja pronssia. Naisten sarjassa haukiputaalainen Maija Nivala voitti Euroopanmestaruuskultaa. Samassa sarjassa oululainen Minna Viide saavutti pronssia. Suomen naisten kuuden kärjen rikkoi ainoastaan hopealle sijoittunut Norjan Carina Aas. Lauantaina oululainen Maija Nivala kiri valjakkohiihdon yhdistetyssä pronssia.

                                Miehissä viime talven Alaskan nelinkertainen maailmanmestari  Vesa-Pekka Jurvelin taipui tällä kertaa hopealle Norjan Eskil Knagin voittaessa sarjan 7 sekunnin erolla 16 kilometrin matkalla. Yhteensä perjantaina hiihtoluokissa kilpaili 19 suomalaista, joista 4 junioriluokissa.

                                Valjakkoajossa Suomen menestys oli myös huimaa. 4-koiran luokassa Antti Mäkiaho voitti kultaa 11 sekunnin turvin ja Essi Hytönen ajoi valjakkonsa pronssille. 4-koiran junioriluokassa Vilma Laitinen sijoittui pronssille.

                                Sunnuntaina valjakkoajot jouduttiin valitettavasti perumaan, sillä rata oli vaarallisen jäinen. Niinpä perjantain ja lauantain tulokset määrittelivät Euroopan mestaruudet 6-koiran luokassa, jossa Kimmo Hytönen voitti kultaa ja Teemu Kaivola pronssia. Myös 8-koiran luokan tulokset ratkaisivat kahden päivän yhteistulokset, jotka toivat Suomelle kaksoisvoiton. Pasi Heinonen voitti valjakollaan kultaa ja Riku Setälä hopeaa. Keskipitkän matkan valjakkoajon voitto Suomen Pauliina Kiiski kahden päivän yhteistuloksella.

                                Sunnuntaina kilpailtiin koirahiihtoviesti, joka ratkesi loppukiri taistelussa Norjan voitoksi. Suomen joukkue Maija Nivala, Kati Mansikkasalo-Jurvelin ja Vesa-Pekka Jurvelin saivat hopeaa. Pronssille kiri Ruotsin joukkue.
                                
                                ## Race center location:
                                Metsäkartano in Rautavaara, Finland
                                Start and finish are at Metsäkartano in Rautavaara

                                ## Officers


                                __Race Marshal__
                                Steinar Johanssen

                                __Chief Judge Sprint/MD__
                                Kari Tolkkila

                                __Chief Judge Nordic__
                                Kati Kettumäki

                                __Race Chief Vet__
                                Mervi Saviranta
                                
                                __Trail Boss__
                                President of Finnish Sleddog Sport Accociation
                                Romppanen Juha, president@vul.fi

                                __First-aider person__
                                Wille Mustonen

                                __Media contact person__
                                Romppanen Juha, president@vul.fi 
                                +35844 772 8800

                                __Local Coordinator__
                                President of Finnish Sleddog Sport Accociation
                                Romppanen Juha, president@vul.fi 
                                CONTENT
                                        
@ec14_sp4 = @ec14.competitions.create! name: "Sp4 7,2 + 7,2",
                                description: "Sprint 4 dogs class, two races 7,2km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_sp4j = @ec14.competitions.create! name: "Sp4J 7,2 + 7,2",
                                description: "Sprint Juniors 4 dogs class, two races 7,2km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_sp6 = @ec14.competitions.create! name: "Sp6 10 + 10",
                                description: "Sprint 6 dogs class, two races 10km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_sp8 = @ec14.competitions.create! name: "Sp8 13 + 13",
                                description: "Sprint 8 dogs class, two races 13km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_spu = @ec14.competitions.create! name: "SpU 21 + 21",
                                description: "Sprint open dogs class, two races 21km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_md12 = @ec14.competitions.create! name: "MD12 41 + 41",
                                description: "Mid-distance 12 dogs class, two races 41km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_md6 = @ec14.competitions.create! name: "MD6 41 + 41",
                                description: "Mid-distance 6 dogs class, two races 41km each",
                                start_date: '2014-03-07',
                                start_date: '2014-03-08',
                                status: :closed,
                                competition_format: @cf_2rc

@ec14_sp4_amf = @ec14_sp4.competitors.create! user: @amf, number: 56
@ec14_sp4_itp = @ec14_sp4.competitors.create! user: @itp, number: 59
@ec14_sp4_ehf = @ec14_sp4.competitors.create! user: @ehf, number: 53
@ec14_sp4_ebs = @ec14_sp4.competitors.create! user: @ebs, number: 55
@ec14_sp4_rvc = @ec14_sp4.competitors.create! user: @rvc, number: 57
@ec14_sp4_arp = @ec14_sp4.competitors.create! user: @arp, number: 63
@ec14_sp4_mhs = @ec14_sp4.competitors.create! user: @mhs, number: 68
@ec14_sp4_css = @ec14_sp4.competitors.create! user: @css, number: 67
@ec14_sp4_hhg = @ec14_sp4.competitors.create! user: @hhg, number: 65
@ec14_sp4_kkn = @ec14_sp4.competitors.create! user: @kkn, number: 69
@ec14_sp4_sgs = @ec14_sp4.competitors.create! user: @sgs, number: 60
@ec14_sp4_hlf = @ec14_sp4.competitors.create! user: @hlf, number: 66
@ec14_sp4_lpp = @ec14_sp4.competitors.create! user: @lpp, number: 62
@ec14_sp4_dnc = @ec14_sp4.competitors.create! user: @dnc, number: 54
@ec14_sp4_apf = @ec14_sp4.competitors.create! user: @apf, number: 64
@ec14_sp4_sbf = @ec14_sp4.competitors.create! user: @sbf, number: 61
@ec14_sp4_mkl = @ec14_sp4.competitors.create! user: @mkl, number: 71
@ec14_sp4_ahf = @ec14_sp4.competitors.create! user: @ahf, number: 51
@ec14_sp4_tnf = @ec14_sp4.competitors.create! user: @tnf, number: 70
@ec14_sp4_por = @ec14_sp4.competitors.create! user: @por, number: 58
@ec14_sp4_spc = @ec14_sp4.competitors.create! user: @spc, number: 52
@ec14_sp4j_jhn = @ec14_sp4j.competitors.create! user: @jhn, number: 74
@ec14_sp4j_acf = @ec14_sp4j.competitors.create! user: @acf, number: 72
@ec14_sp4j_vlf = @ec14_sp4j.competitors.create! user: @vlf, number: 73
@ec14_sp6_khf = @ec14_sp6.competitors.create! user: @khf, number: 78
@ec14_sp6_cts = @ec14_sp6.competitors.create! user: @cts, number: 75
@ec14_sp6_tkf = @ec14_sp6.competitors.create! user: @tkf, number: 76
@ec14_sp6_ton = @ec14_sp6.competitors.create! user: @ton, number: 80
@ec14_sp6_rkf = @ec14_sp6.competitors.create! user: @rkf, number: 87
@ec14_sp6_vlf2 = @ec14_sp6.competitors.create! user: @vlf2, number: 90
@ec14_sp6_jtc = @ec14_sp6.competitors.create! user: @jtc, number: 77
@ec14_sp6_jkf = @ec14_sp6.competitors.create! user: @jkf, number: 84
@ec14_sp6_idl = @ec14_sp6.competitors.create! user: @idl, number: 85
@ec14_sp6_mbg = @ec14_sp6.competitors.create! user: @mbg, number: 81
@ec14_sp6_mcs = @ec14_sp6.competitors.create! user: @mcs, number: 82
@ec14_sp6_amf = @ec14_sp6.competitors.create! user: @amf, number: 83
@ec14_sp6_mcc = @ec14_sp6.competitors.create! user: @mcc, number: 79
@ec14_sp6_abp = @ec14_sp6.competitors.create! user: @abp, number: 86
@ec14_sp6_atf = @ec14_sp6.competitors.create! user: @atf, number: 89
@ec14_sp6_lpp = @ec14_sp6.competitors.create! user: @lpp, number: 88
@ec14_sp8_phf = @ec14_sp8.competitors.create! user: @phf, number: 92
@ec14_sp8_rsf = @ec14_sp8.competitors.create! user: @rsf, number: 102
@ec14_sp8_akg = @ec14_sp8.competitors.create! user: @akg, number: 100
@ec14_sp8_cws = @ec14_sp8.competitors.create! user: @cws, number: 93
@ec14_sp8_hhg = @ec14_sp8.competitors.create! user: @hhg, number: 91
@ec14_sp8_mtg = @ec14_sp8.competitors.create! user: @mtg, number: 97
@ec14_sp8_vhf = @ec14_sp8.competitors.create! user: @vhf, number: 99
@ec14_sp8_egl = @ec14_sp8.competitors.create! user: @egl, number: 101
@ec14_sp8_svh = @ec14_sp8.competitors.create! user: @svh, number: 104
@ec14_sp8_mtp = @ec14_sp8.competitors.create! user: @mtp, number: 95
@ec14_sp8_klf = @ec14_sp8.competitors.create! user: @klf, number: 103
@ec14_sp8_fhn = @ec14_sp8.competitors.create! user: @fhn, number: 98
@ec14_sp8_amr = @ec14_sp8.competitors.create! user: @amr, number: 96
@ec14_sp8_jbn = @ec14_sp8.competitors.create! user: @jbn, number: 94
@ec14_spu_hin = @ec14_spu.competitors.create! user: @hin, number: 106
@ec14_spu_kzs = @ec14_spu.competitors.create! user: @kzs, number: 108
@ec14_spu_mtg = @ec14_spu.competitors.create! user: @mtg, number: 109
@ec14_spu_tsg = @ec14_spu.competitors.create! user: @tsg, number: 110
@ec14_spu_alf = @ec14_spu.competitors.create! user: @alf, number: 107
@ec14_spu_ksg = @ec14_spu.competitors.create! user: @ksg, number: 105
@ec14_md12_crs = @ec14_md12.competitors.create! user: @crs, number: 111
@ec14_md12_rcf = @ec14_md12.competitors.create! user: @rcf, number: 112
@ec14_md12_ads = @ec14_md12.competitors.create! user: @ads, number: 115
@ec14_md12_psf = @ec14_md12.competitors.create! user: @psf, number: 116
@ec14_md12_rrg = @ec14_md12.competitors.create! user: @rrg, number: 114
@ec14_md12_ppc = @ec14_md12.competitors.create! user: @ppc, number: 113
@ec14_md6_pkf = @ec14_md6.competitors.create! user: @pkf, number: 119
@ec14_md6_asr = @ec14_md6.competitors.create! user: @asr, number: 123
@ec14_md6_mvc = @ec14_md6.competitors.create! user: @mvc, number: 120
@ec14_md6_gbp = @ec14_md6.competitors.create! user: @gbp, number: 122
@ec14_md6_hma = @ec14_md6.competitors.create! user: @hma, number: 126
@ec14_md6_jss = @ec14_md6.competitors.create! user: @jss, number: 118
@ec14_md6_jef = @ec14_md6.competitors.create! user: @jef, number: 117
@ec14_md6_kkf = @ec14_md6.competitors.create! user: @kkf, number: 124
@ec14_md6_slf = @ec14_md6.competitors.create! user: @slf, number: 127
@ec14_md6_gzc = @ec14_md6.competitors.create! user: @gzc, number: 121
@ec14_md6_paf = @ec14_md6.competitors.create! user: @paf, number: 125
  
@ec14_sp4_day1 = @ec14_sp4.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 11:00'
@ec14_sp4j_day1 = @ec14_sp4j.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 12:00'
@ec14_sp6_day1 = @ec14_sp6.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 12:30'
@ec14_sp8_day1 = @ec14_sp8.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 13:30'
@ec14_spu_day1 = @ec14_spu.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 14:30'
@ec14_md12_day1 = @ec14_md12.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 15:30'
@ec14_md6_day1 = @ec14_md6.races.create! name: 'Day 1', status: :closed,
  race_format: @rf_tt, time: '2014-03-07 16:30'
@ec14_sp4_day2 = @ec14_sp4.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 10:00'
@ec14_sp4j_day2 = @ec14_sp4j.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 11:00'
@ec14_sp6_day2 = @ec14_sp6.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 11:30'
@ec14_sp8_day2 = @ec14_sp8.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 12:30'
@ec14_spu_day2 = @ec14_spu.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 13:30'
@ec14_md12_day2 = @ec14_md12.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 14:30'
@ec14_md6_day2 = @ec14_md6.races.create! name: 'Day 2', status: :closed,
  race_format: @rf_tt, time: '2014-03-08 15:30'

# runs on day 1
@ec14_sp4_day1_amf = @ec14_sp4_amf.runs.create! race: @ec14_sp4_day1, number: 56, result_time: 804.5
@ec14_sp4_day1_itp = @ec14_sp4_itp.runs.create! race: @ec14_sp4_day1, number: 59, result_time: 816.2
@ec14_sp4_day1_ehf = @ec14_sp4_ehf.runs.create! race: @ec14_sp4_day1, number: 53, result_time: 826.8
@ec14_sp4_day1_ebs = @ec14_sp4_ebs.runs.create! race: @ec14_sp4_day1, number: 55, result_time: 864.4
@ec14_sp4_day1_rvc = @ec14_sp4_rvc.runs.create! race: @ec14_sp4_day1, number: 57, result_time: 845.8
@ec14_sp4_day1_arp = @ec14_sp4_arp.runs.create! race: @ec14_sp4_day1, number: 63, result_time: 846.3
@ec14_sp4_day1_mhs = @ec14_sp4_mhs.runs.create! race: @ec14_sp4_day1, number: 68, result_time: 826.0
@ec14_sp4_day1_css = @ec14_sp4_css.runs.create! race: @ec14_sp4_day1, number: 67, result_time: 855.2
@ec14_sp4_day1_hhg = @ec14_sp4_hhg.runs.create! race: @ec14_sp4_day1, number: 65, result_time: 854.1
@ec14_sp4_day1_kkn = @ec14_sp4_kkn.runs.create! race: @ec14_sp4_day1, number: 69, result_time: 861.5
@ec14_sp4_day1_sgs = @ec14_sp4_sgs.runs.create! race: @ec14_sp4_day1, number: 60, result_time: 867.5
@ec14_sp4_day1_hlf = @ec14_sp4_hlf.runs.create! race: @ec14_sp4_day1, number: 66, result_time: 919.0
@ec14_sp4_day1_lpp = @ec14_sp4_lpp.runs.create! race: @ec14_sp4_day1, number: 62, result_time: 906.5
@ec14_sp4_day1_dnc = @ec14_sp4_dnc.runs.create! race: @ec14_sp4_day1, number: 54, result_time: 918.4
@ec14_sp4_day1_apf = @ec14_sp4_apf.runs.create! race: @ec14_sp4_day1, number: 64, result_time: 1006.9
@ec14_sp4_day1_sbf = @ec14_sp4_sbf.runs.create! race: @ec14_sp4_day1, number: 61, result_time: 1040.4
@ec14_sp4_day1_mkl = @ec14_sp4_mkl.runs.create! race: @ec14_sp4_day1, number: 71, result_time: 1119.6
@ec14_sp4_day1_ahf = @ec14_sp4_ahf.runs.create! race: @ec14_sp4_day1, number: 51, result_time: 1262.3
@ec14_sp4_day1_tnf = @ec14_sp4_tnf.runs.create! race: @ec14_sp4_day1, number: 70, verdict: :dns
@ec14_sp4_day1_por = @ec14_sp4_por.runs.create! race: @ec14_sp4_day1, number: 58, verdict: :dns
@ec14_sp4_day1_spc = @ec14_sp4_spc.runs.create! race: @ec14_sp4_day1, number: 52, verdict: :dns
@ec14_sp4j_day1_jhn = @ec14_sp4j_jhn.runs.create! race: @ec14_sp4j_day1, number: 74, result_time: 808.2
@ec14_sp4j_day1_acf = @ec14_sp4j_acf.runs.create! race: @ec14_sp4j_day1, number: 72, result_time: 909.6
@ec14_sp4j_day1_vlf = @ec14_sp4j_vlf.runs.create! race: @ec14_sp4j_day1, number: 73, result_time: 936.5
@ec14_sp6_day1_khf = @ec14_sp6_khf.runs.create! race: @ec14_sp6_day1, number: 78, result_time: 1076.3
@ec14_sp6_day1_cts = @ec14_sp6_cts.runs.create! race: @ec14_sp6_day1, number: 75, result_time: 1129.1
@ec14_sp6_day1_tkf = @ec14_sp6_tkf.runs.create! race: @ec14_sp6_day1, number: 76, result_time: 1127.8
@ec14_sp6_day1_ton = @ec14_sp6_ton.runs.create! race: @ec14_sp6_day1, number: 80, result_time: 1156.7
@ec14_sp6_day1_rkf = @ec14_sp6_rkf.runs.create! race: @ec14_sp6_day1, number: 87, result_time: 1148.7
@ec14_sp6_day1_vlf2 = @ec14_sp6_vlf2.runs.create! race: @ec14_sp6_day1, number: 90, result_time: 1176.3
@ec14_sp6_day1_jtc = @ec14_sp6_jtc.runs.create! race: @ec14_sp6_day1, number: 77, result_time: 1191.9
@ec14_sp6_day1_jkf = @ec14_sp6_jkf.runs.create! race: @ec14_sp6_day1, number: 84, result_time: 1239.0
@ec14_sp6_day1_idl = @ec14_sp6_idl.runs.create! race: @ec14_sp6_day1, number: 85, result_time: 1204.4
@ec14_sp6_day1_mbg = @ec14_sp6_mbg.runs.create! race: @ec14_sp6_day1, number: 81, result_time: 1233.1
@ec14_sp6_day1_mcs = @ec14_sp6_mcs.runs.create! race: @ec14_sp6_day1, number: 82, result_time: 1275.8
@ec14_sp6_day1_amf = @ec14_sp6_amf.runs.create! race: @ec14_sp6_day1, number: 83, result_time: 1271.6
@ec14_sp6_day1_mcc = @ec14_sp6_mcc.runs.create! race: @ec14_sp6_day1, number: 79, result_time: 1341.0
@ec14_sp6_day1_abp = @ec14_sp6_abp.runs.create! race: @ec14_sp6_day1, number: 86, result_time: 1430.3
@ec14_sp6_day1_atf = @ec14_sp6_atf.runs.create! race: @ec14_sp6_day1, number: 89, result_time: 1686.4
@ec14_sp6_day1_lpp = @ec14_sp6_lpp.runs.create! race: @ec14_sp6_day1, number: 88, result_time: 1315.6
@ec14_sp8_day1_phf = @ec14_sp8_phf.runs.create! race: @ec14_sp8_day1, number: 92, result_time: 1536.8
@ec14_sp8_day1_rsf = @ec14_sp8_rsf.runs.create! race: @ec14_sp8_day1, number: 102, result_time: 1537.1
@ec14_sp8_day1_akg = @ec14_sp8_akg.runs.create! race: @ec14_sp8_day1, number: 100, result_time: 1555.8
@ec14_sp8_day1_cws = @ec14_sp8_cws.runs.create! race: @ec14_sp8_day1, number: 93, result_time: 1609.5
@ec14_sp8_day1_hhg = @ec14_sp8_hhg.runs.create! race: @ec14_sp8_day1, number: 91, result_time: 1588.5
@ec14_sp8_day1_mtg = @ec14_sp8_mtg.runs.create! race: @ec14_sp8_day1, number: 97, result_time: 1637.8
@ec14_sp8_day1_vhf = @ec14_sp8_vhf.runs.create! race: @ec14_sp8_day1, number: 99, result_time: 1695.0
@ec14_sp8_day1_egl = @ec14_sp8_egl.runs.create! race: @ec14_sp8_day1, number: 101, result_time: 1686.1
@ec14_sp8_day1_svh = @ec14_sp8_svh.runs.create! race: @ec14_sp8_day1, number: 104, result_time: 1941.5
@ec14_sp8_day1_mtp = @ec14_sp8_mtp.runs.create! race: @ec14_sp8_day1, number: 95, result_time: 2232.3
@ec14_sp8_day1_klf = @ec14_sp8_klf.runs.create! race: @ec14_sp8_day1, number: 103, result_time: 2331.9
@ec14_sp8_day1_fhn = @ec14_sp8_fhn.runs.create! race: @ec14_sp8_day1, number: 98, result_time: 2598.3
@ec14_sp8_day1_amr = @ec14_sp8_amr.runs.create! race: @ec14_sp8_day1, number: 96, verdict: :dq
@ec14_sp8_day1_jbn = @ec14_sp8_jbn.runs.create! race: @ec14_sp8_day1, number: 94, verdict: :dns
@ec14_spu_day1_hin = @ec14_spu_hin.runs.create! race: @ec14_spu_day1, number: 106, result_time: 3003.5
@ec14_spu_day1_kzs = @ec14_spu_kzs.runs.create! race: @ec14_spu_day1, number: 108, result_time: 2946.2
@ec14_spu_day1_mtg = @ec14_spu_mtg.runs.create! race: @ec14_spu_day1, number: 109, result_time: 3134.2
@ec14_spu_day1_tsg = @ec14_spu_tsg.runs.create! race: @ec14_spu_day1, number: 110, result_time: 210.0
@ec14_spu_day1_alf = @ec14_spu_alf.runs.create! race: @ec14_spu_day1, number: 107, verdict: :dq
@ec14_spu_day1_ksg = @ec14_spu_ksg.runs.create! race: @ec14_spu_day1, number: 105, verdict: :dns
@ec14_md12_day1_crs = @ec14_md12_crs.runs.create! race: @ec14_md12_day1, number: 111, result_time: 2546.0 + 3600
@ec14_md12_day1_rcf = @ec14_md12_rcf.runs.create! race: @ec14_md12_day1, number: 112, result_time: 2847.9 + 3600
@ec14_md12_day1_ads = @ec14_md12_ads.runs.create! race: @ec14_md12_day1, number: 115, result_time: 97.6 + 7200
@ec14_md12_day1_psf = @ec14_md12_psf.runs.create! race: @ec14_md12_day1, number: 116, result_time: 1918.2 + 7200
@ec14_md12_day1_rrg = @ec14_md12_rrg.runs.create! race: @ec14_md12_day1, number: 114, result_time: 2897.1 + 3600
@ec14_md12_day1_ppc = @ec14_md12_ppc.runs.create! race: @ec14_md12_day1, number: 113, verdict: :dns
@ec14_md6_day1_pkf = @ec14_md6_pkf.runs.create! race: @ec14_md6_day1, number: 119, result_time: 3027.6 + 3600
@ec14_md6_day1_asr = @ec14_md6_asr.runs.create! race: @ec14_md6_day1, number: 123, result_time: 3353.2 + 3600
@ec14_md6_day1_mvc = @ec14_md6_mvc.runs.create! race: @ec14_md6_day1, number: 120, result_time: 3301.0 + 3600
@ec14_md6_day1_gbp = @ec14_md6_gbp.runs.create! race: @ec14_md6_day1, number: 122, result_time: 70.4 + 7200
@ec14_md6_day1_hma = @ec14_md6_hma.runs.create! race: @ec14_md6_day1, number: 126, result_time: 368.8 + 7200
@ec14_md6_day1_jss = @ec14_md6_jss.runs.create! race: @ec14_md6_day1, number: 118, result_time: 48.7 + 7200
@ec14_md6_day1_jef = @ec14_md6_jef.runs.create! race: @ec14_md6_day1, number: 117, result_time: 3493.6 + 3600
@ec14_md6_day1_kkf = @ec14_md6_kkf.runs.create! race: @ec14_md6_day1, number: 124, result_time: 491.8 + 7200
@ec14_md6_day1_slf = @ec14_md6_slf.runs.create! race: @ec14_md6_day1, number: 127, result_time: 826.8 + 7200
@ec14_md6_day1_gzc = @ec14_md6_gzc.runs.create! race: @ec14_md6_day1, number: 121, result_time: 1059.7 + 7200
@ec14_md6_day1_paf = @ec14_md6_paf.runs.create! race: @ec14_md6_day1, number: 125, result_time: 2268.2 + 7200


# runs on day 2
@ec14_sp4_day2_amf = @ec14_sp4_amf.runs.create! race: @ec14_sp4_day2, number: 56, result_time: 873.7
@ec14_sp4_day2_itp = @ec14_sp4_itp.runs.create! race: @ec14_sp4_day2, number: 59, result_time: 873.0
@ec14_sp4_day2_ehf = @ec14_sp4_ehf.runs.create! race: @ec14_sp4_day2, number: 53, result_time: 876.7
@ec14_sp4_day2_ebs = @ec14_sp4_ebs.runs.create! race: @ec14_sp4_day2, number: 55, result_time: 887.8
@ec14_sp4_day2_rvc = @ec14_sp4_rvc.runs.create! race: @ec14_sp4_day2, number: 57, result_time: 910.3
@ec14_sp4_day2_arp = @ec14_sp4_arp.runs.create! race: @ec14_sp4_day2, number: 63, result_time: 910.2
@ec14_sp4_day2_mhs = @ec14_sp4_mhs.runs.create! race: @ec14_sp4_day2, number: 68, result_time: 936.9
@ec14_sp4_day2_css = @ec14_sp4_css.runs.create! race: @ec14_sp4_day2, number: 67, result_time: 910.0
@ec14_sp4_day2_hhg = @ec14_sp4_hhg.runs.create! race: @ec14_sp4_day2, number: 65, result_time: 931.8
@ec14_sp4_day2_kkn = @ec14_sp4_kkn.runs.create! race: @ec14_sp4_day2, number: 69, result_time: 930.9
@ec14_sp4_day2_sgs = @ec14_sp4_sgs.runs.create! race: @ec14_sp4_day2, number: 60, result_time: 927.7
@ec14_sp4_day2_hlf = @ec14_sp4_hlf.runs.create! race: @ec14_sp4_day2, number: 66, result_time: 942.9
@ec14_sp4_day2_lpp = @ec14_sp4_lpp.runs.create! race: @ec14_sp4_day2, number: 62, result_time: 960.8
@ec14_sp4_day2_dnc = @ec14_sp4_dnc.runs.create! race: @ec14_sp4_day2, number: 54, result_time: 1006.7
@ec14_sp4_day2_apf = @ec14_sp4_apf.runs.create! race: @ec14_sp4_day2, number: 64, result_time: 1171.0
@ec14_sp4_day2_sbf = @ec14_sp4_sbf.runs.create! race: @ec14_sp4_day2, number: 61, result_time: 1194.9
@ec14_sp4_day2_mkl = @ec14_sp4_mkl.runs.create! race: @ec14_sp4_day2, number: 71, result_time: 1192.3
@ec14_sp4_day2_ahf = @ec14_sp4_ahf.runs.create! race: @ec14_sp4_day2, number: 51, verdict: :dns
@ec14_sp4_day2_tnf = @ec14_sp4_tnf.runs.create! race: @ec14_sp4_day2, number: 70, verdict: :dns
@ec14_sp4_day2_por = @ec14_sp4_por.runs.create! race: @ec14_sp4_day2, number: 58, verdict: :dns
@ec14_sp4_day2_spc = @ec14_sp4_spc.runs.create! race: @ec14_sp4_day2, number: 52, verdict: :dns
@ec14_sp4j_day2_jhn = @ec14_sp4j_jhn.runs.create! race: @ec14_sp4j_day2, number: 74, result_time: 892.8
@ec14_sp4j_day2_acf = @ec14_sp4j_acf.runs.create! race: @ec14_sp4j_day2, number: 72, result_time: 982.6
@ec14_sp4j_day2_vlf = @ec14_sp4j_vlf.runs.create! race: @ec14_sp4j_day2, number: 73, result_time: 1029.1
@ec14_sp6_day2_khf = @ec14_sp6_khf.runs.create! race: @ec14_sp6_day2, number: 78, result_time: 1191.6
@ec14_sp6_day2_cts = @ec14_sp6_cts.runs.create! race: @ec14_sp6_day2, number: 75, result_time: 1174.1
@ec14_sp6_day2_tkf = @ec14_sp6_tkf.runs.create! race: @ec14_sp6_day2, number: 76, result_time: 1207.9
@ec14_sp6_day2_ton = @ec14_sp6_ton.runs.create! race: @ec14_sp6_day2, number: 80, result_time: 1225.2
@ec14_sp6_day2_rkf = @ec14_sp6_rkf.runs.create! race: @ec14_sp6_day2, number: 87, result_time: 1288.4
@ec14_sp6_day2_vlf2 = @ec14_sp6_vlf2.runs.create! race: @ec14_sp6_day2, number: 90, result_time: 1266.0
@ec14_sp6_day2_jtc = @ec14_sp6_jtc.runs.create! race: @ec14_sp6_day2, number: 77, result_time: 1279.8
@ec14_sp6_day2_jkf = @ec14_sp6_jkf.runs.create! race: @ec14_sp6_day2, number: 84, result_time: 1259.6
@ec14_sp6_day2_idl = @ec14_sp6_idl.runs.create! race: @ec14_sp6_day2, number: 85, result_time: 1330.0
@ec14_sp6_day2_mbg = @ec14_sp6_mbg.runs.create! race: @ec14_sp6_day2, number: 81, result_time: 1372.3
@ec14_sp6_day2_mcs = @ec14_sp6_mcs.runs.create! race: @ec14_sp6_day2, number: 82, result_time: 1371.9
@ec14_sp6_day2_amf = @ec14_sp6_amf.runs.create! race: @ec14_sp6_day2, number: 83, result_time: 1407.4
@ec14_sp6_day2_mcc = @ec14_sp6_mcc.runs.create! race: @ec14_sp6_day2, number: 79, result_time: 1520.9
@ec14_sp6_day2_abp = @ec14_sp6_abp.runs.create! race: @ec14_sp6_day2, number: 86, result_time: 1619.4
@ec14_sp6_day2_atf = @ec14_sp6_atf.runs.create! race: @ec14_sp6_day2, number: 89, result_time: 1758.1
@ec14_sp6_day2_lpp = @ec14_sp6_lpp.runs.create! race: @ec14_sp6_day2, number: 88, verdict: :dns
@ec14_sp8_day2_phf = @ec14_sp8_phf.runs.create! race: @ec14_sp8_day2, number: 92, result_time: 1620.0
@ec14_sp8_day2_rsf = @ec14_sp8_rsf.runs.create! race: @ec14_sp8_day2, number: 102, result_time: 1642.8
@ec14_sp8_day2_akg = @ec14_sp8_akg.runs.create! race: @ec14_sp8_day2, number: 100, result_time: 1638.5
@ec14_sp8_day2_cws = @ec14_sp8_cws.runs.create! race: @ec14_sp8_day2, number: 93, result_time: 1679.0
@ec14_sp8_day2_hhg = @ec14_sp8_hhg.runs.create! race: @ec14_sp8_day2, number: 91, result_time: 1743.1
@ec14_sp8_day2_mtg = @ec14_sp8_mtg.runs.create! race: @ec14_sp8_day2, number: 97, result_time: 1753.0
@ec14_sp8_day2_vhf = @ec14_sp8_vhf.runs.create! race: @ec14_sp8_day2, number: 99, result_time: 1793.3
@ec14_sp8_day2_egl = @ec14_sp8_egl.runs.create! race: @ec14_sp8_day2, number: 101, result_time: 1902.0
@ec14_sp8_day2_svh = @ec14_sp8_svh.runs.create! race: @ec14_sp8_day2, number: 104, result_time: 2062.0
@ec14_sp8_day2_mtp = @ec14_sp8_mtp.runs.create! race: @ec14_sp8_day2, number: 95, result_time: 1921.4
@ec14_sp8_day2_klf = @ec14_sp8_klf.runs.create! race: @ec14_sp8_day2, number: 103, verdict: :dns
@ec14_sp8_day2_fhn = @ec14_sp8_fhn.runs.create! race: @ec14_sp8_day2, number: 98, verdict: :dns
@ec14_sp8_day2_amr = @ec14_sp8_amr.runs.create! race: @ec14_sp8_day2, number: 96, verdict: :dq
@ec14_sp8_day2_jbn = @ec14_sp8_jbn.runs.create! race: @ec14_sp8_day2, number: 94, verdict: :dns
@ec14_spu_day2_hin = @ec14_spu_hin.runs.create! race: @ec14_spu_day2, number: 106, result_time: 2912.0
@ec14_spu_day2_kzs = @ec14_spu_kzs.runs.create! race: @ec14_spu_day2, number: 108, result_time: 3101.0
@ec14_spu_day2_mtg = @ec14_spu_mtg.runs.create! race: @ec14_spu_day2, number: 109, result_time: 3220.6
@ec14_spu_day2_tsg = @ec14_spu_tsg.runs.create! race: @ec14_spu_day2, number: 110, result_time: 331.5
@ec14_spu_day2_alf = @ec14_spu_alf.runs.create! race: @ec14_spu_day2, number: 107, verdict: :dq
@ec14_spu_day2_ksg = @ec14_spu_ksg.runs.create! race: @ec14_spu_day2, number: 105, verdict: :dns
@ec14_md12_day2_crs = @ec14_md12_crs.runs.create! race: @ec14_md12_day2, number: 111, result_time: 3026.5 + 3600
@ec14_md12_day2_rcf = @ec14_md12_rcf.runs.create! race: @ec14_md12_day2, number: 112, result_time: 3544.7 + 3600
@ec14_md12_day2_ads = @ec14_md12_ads.runs.create! race: @ec14_md12_day2, number: 115, result_time: 611.4 + 7200
@ec14_md12_day2_psf = @ec14_md12_psf.runs.create! race: @ec14_md12_day2, number: 116, verdict: :dns
@ec14_md12_day2_rrg = @ec14_md12_rrg.runs.create! race: @ec14_md12_day2, number: 114, verdict: :dns
@ec14_md12_day2_ppc = @ec14_md12_ppc.runs.create! race: @ec14_md12_day2, number: 113, verdict: :dns
@ec14_md6_day2_pkf = @ec14_md6_pkf.runs.create! race: @ec14_md6_day2, number: 119, result_time: 3576.9 + 3600
@ec14_md6_day2_asr = @ec14_md6_asr.runs.create! race: @ec14_md6_day2, number: 123, result_time: 434.5 + 7200
@ec14_md6_day2_mvc = @ec14_md6_mvc.runs.create! race: @ec14_md6_day2, number: 120, result_time: 559.2 + 7200
@ec14_md6_day2_gbp = @ec14_md6_gbp.runs.create! race: @ec14_md6_day2, number: 122, result_time: 868.5 + 7200
@ec14_md6_day2_hma = @ec14_md6_hma.runs.create! race: @ec14_md6_day2, number: 126, result_time: 596.9 + 7200
@ec14_md6_day2_jss = @ec14_md6_jss.runs.create! race: @ec14_md6_day2, number: 118, result_time: 1105.4 + 7200
@ec14_md6_day2_jef = @ec14_md6_jef.runs.create! race: @ec14_md6_day2, number: 117, result_time: 1304.6 + 7200
@ec14_md6_day2_kkf = @ec14_md6_kkf.runs.create! race: @ec14_md6_day2, number: 124, result_time: 755.6 + 7200
@ec14_md6_day2_slf = @ec14_md6_slf.runs.create! race: @ec14_md6_day2, number: 127, result_time: 1435.3 + 7200
@ec14_md6_day2_gzc = @ec14_md6_gzc.runs.create! race: @ec14_md6_day2, number: 121, result_time: 2034.5 + 7200
@ec14_md6_day2_paf = @ec14_md6_paf.runs.create! race: @ec14_md6_day2, number: 125, verdict: :dns

@ec14_nms1 = @ec14.competitions.create! name: "NMS1 8 + 8",
  description: "Nordic Sprint 1 Dog – Man 8 + 8km",
  start_date: '2014-03-06',
  start_date: '2014-03-06',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nms1_r = @ec14_nms1.races.create! status: :closed, race_format: @rf_tt, time: '2014-03-06 17:30'

@ec14_nws1 = @ec14.competitions.create! name: "NWS1 8 + 5",
  description: "Nordic Sprint 1 Dog – Women 8 + 5km",
  start_date: '2014-03-06',
  start_date: '2014-03-06',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nws1_r = @ec14_nws1.races.create! status: :closed, race_format: @rf_tt, time: '2014-03-06 18:30'

@ec14_nmsj = @ec14.competitions.create! name: "NMSJ 5 + 5",
  description: "Nordic Sprint 1 Dog - Man Juniours – Man 5 + 5km",
  start_date: '2014-03-06',
  start_date: '2014-03-06',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nmsj_r = @ec14_nmsj.races.create! status: :closed, race_format: @rf_tt, time: '2014-03-06 19:30'

@ec14_nwsj = @ec14.competitions.create! name: "NWSJ 8 + 5",
  description: "Nordic Sprint 1 Dog – Women Juniors 5 + 5km",
  start_date: '2014-03-06',
  start_date: '2014-03-06',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nwsj_r = @ec14_nwsj.races.create! status: :closed, race_format: @rf_tt, time: '2014-03-06 20:30'

@ec14_nwcj = @ec14.competitions.create! name: "NWCJ 5 + 5",
  description: "Nordic Combined 1 Dog – Women Juniors 5 + 5km",
  start_date: '2014-03-07',
  start_date: '2014-03-07',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nwcj_r = @ec14_nwcj.races.create! status: :closed, race_format: @rf_tt, time: '2014-03-07 13:00'

@ec14_nwc = @ec14.competitions.create! name: "NWC 7 + 7",
  description: "Nordic Combined 1 Dog – Women (2 + 5km) + (2 + 5km)",
  start_date: '2014-03-07',
  start_date: '2014-03-07',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nwc_r = @ec14_nwc.races.create! status: :closed, race_format: @rf_ms, time: '2014-03-07 14:00'

@ec14_nmc = @ec14.competitions.create! name: "NMC 7 + 7",
  description: "Nordic Combined 1 Dog – Men (2 + 5km) + (2 + 5km)",
  start_date: '2014-03-07',
  start_date: '2014-03-07',
  status: :closed,
  competition_format: @cf_1sr
@ec14_nmc_r = @ec14_nmc.races.create! status: :closed, race_format: @rf_ms, time: '2014-03-07 15:00'


#competitors
@ec14_nms1_ekn = @ec14_nms1.competitors.create! user: @ekn, number: 19
@ec14_nms1_vjf = @ec14_nms1.competitors.create! user: @vjf, number: 17
@ec14_nms1_yhn = @ec14_nms1.competitors.create! user: @yhn, number: 27
@ec14_nms1_mks = @ec14_nms1.competitors.create! user: @mks, number: 23
@ec14_nms1_thn = @ec14_nms1.competitors.create! user: @thn, number: 25
@ec14_nms1_ams = @ec14_nms1.competitors.create! user: @ams, number: 21
@ec14_nms1_ylf = @ec14_nms1.competitors.create! user: @ylf, number: 16
@ec14_nms1_mtf = @ec14_nms1.competitors.create! user: @mtf, number: 29
@ec14_nms1_mln = @ec14_nms1.competitors.create! user: @mln, number: 14
@ec14_nms1_vcs = @ec14_nms1.competitors.create! user: @vcs, number: 15
@ec14_nms1_mps = @ec14_nms1.competitors.create! user: @mps, number: 18
@ec14_nms1_lcf = @ec14_nms1.competitors.create! user: @lcf, number: 30
@ec14_nms1_jps = @ec14_nms1.competitors.create! user: @jps, number: 20
@ec14_nms1_mvf = @ec14_nms1.competitors.create! user: @mvf, number: 26
@ec14_nms1_snf = @ec14_nms1.competitors.create! user: @snf, number: 22
@ec14_nms1_kif = @ec14_nms1.competitors.create! user: @kif, number: 28
@ec14_nms1_pkf = @ec14_nms1.competitors.create! user: @pkf, number: 24
@ec14_nms1_sef = @ec14_nms1.competitors.create! user: @sef, number: 13
@ec14_nws1_mnf = @ec14_nws1.competitors.create! user: @mnf, number: 44
@ec14_nws1_cnn = @ec14_nws1.competitors.create! user: @cnn, number: 43
@ec14_nws1_mvf = @ec14_nws1.competitors.create! user: @mvf, number: 41
@ec14_nws1_mtf = @ec14_nws1.competitors.create! user: @mtf, number: 40
@ec14_nws1_kmf = @ec14_nws1.competitors.create! user: @kmf, number: 34
@ec14_nws1_slf = @ec14_nws1.competitors.create! user: @slf, number: 38
@ec14_nws1_tbs = @ec14_nws1.competitors.create! user: @tbs, number: 33
@ec14_nws1_san = @ec14_nws1.competitors.create! user: @san, number: 36
@ec14_nws1_ans = @ec14_nws1.competitors.create! user: @ans, number: 39
@ec14_nws1_mvf = @ec14_nws1.competitors.create! user: @mvf, number: 42
@ec14_nws1_smr = @ec14_nws1.competitors.create! user: @smr, number: 32
@ec14_nws1_hkf = @ec14_nws1.competitors.create! user: @hkf, number: 47
@ec14_nws1_hkf = @ec14_nws1.competitors.create! user: @hkf, number: 31
@ec14_nws1_kkf = @ec14_nws1.competitors.create! user: @kkf, number: 46
@ec14_nws1_yhn = @ec14_nws1.competitors.create! user: @yhn, number: 45
@ec14_nmsj_ccf = @ec14_nmsj.competitors.create! user: @ccf, number: 203
@ec14_nmsj_abr = @ec14_nmsj.competitors.create! user: @abr, number: 1
@ec14_nmsj_tnf = @ec14_nmsj.competitors.create! user: @tnf, number: 2
@ec14_nwsj_ean = @ec14_nwsj.competitors.create! user: @ean, number: 9
@ec14_nwsj_mns = @ec14_nwsj.competitors.create! user: @mns, number: 12
@ec14_nwsj_oan = @ec14_nwsj.competitors.create! user: @oan, number: 4
@ec14_nwsj_sns = @ec14_nwsj.competitors.create! user: @sns, number: 5
@ec14_nwsj_aan = @ec14_nwsj.competitors.create! user: @aan, number: 11
@ec14_nwsj_jlf = @ec14_nwsj.competitors.create! user: @jlf, number: 7
@ec14_nwsj_tif = @ec14_nwsj.competitors.create! user: @tif, number: 10
@ec14_nwsj_vif = @ec14_nwsj.competitors.create! user: @vif, number: 3
@ec14_nwsj_asr = @ec14_nwsj.competitors.create! user: @asr, number: 6
@ec14_nwsj_jjs = @ec14_nwsj.competitors.create! user: @jjs, number: 8
@ec14_nwcj_ean = @ec14_nwcj.competitors.create! user: @ean, number: 145
@ec14_nwcj_sns = @ec14_nwcj.competitors.create! user: @sns, number: 140
@ec14_nwcj_oan = @ec14_nwcj.competitors.create! user: @oan, number: 142
@ec14_nwcj_aan = @ec14_nwcj.competitors.create! user: @aan, number: 143
@ec14_nwcj_mns = @ec14_nwcj.competitors.create! user: @mns, number: 144
@ec14_nwcj_asr = @ec14_nwcj.competitors.create! user: @asr, number: 141
@ec14_nwcj_jjs = @ec14_nwcj.competitors.create! user: @jjs, number: 146
@ec14_nwc_cnn = @ec14_nwc.competitors.create! user: @cnn, number: 150
@ec14_nwc_san = @ec14_nwc.competitors.create! user: @san, number: 153
@ec14_nwc_mnf = @ec14_nwc.competitors.create! user: @mnf, number: 147
@ec14_nwc_tbs = @ec14_nwc.competitors.create! user: @tbs, number: 154
@ec14_nwc_mtf = @ec14_nwc.competitors.create! user: @mtf, number: 149
@ec14_nwc_ans = @ec14_nwc.competitors.create! user: @ans, number: 152
@ec14_nwc_kmf = @ec14_nwc.competitors.create! user: @kmf, number: 155
@ec14_nwc_mvf = @ec14_nwc.competitors.create! user: @mvf, number: 156
@ec14_nwc_yhn = @ec14_nwc.competitors.create! user: @yhn, number: 148
@ec14_nwc_mvf = @ec14_nwc.competitors.create! user: @mvf, number: 151
@ec14_nmc_yhn = @ec14_nmc.competitors.create! user: @yhn, number: 167
@ec14_nmc_vjf = @ec14_nmc.competitors.create! user: @vjf, number: 158
@ec14_nmc_ekn = @ec14_nmc.competitors.create! user: @ekn, number: 171
@ec14_nmc_mws = @ec14_nmc.competitors.create! user: @mws, number: 159
@ec14_nmc_mln = @ec14_nmc.competitors.create! user: @mln, number: 157
@ec14_nmc_jps = @ec14_nmc.competitors.create! user: @jps, number: 161
@ec14_nmc_thn = @ec14_nmc.competitors.create! user: @thn, number: 170
@ec14_nmc_ylf = @ec14_nmc.competitors.create! user: @ylf, number: 169
@ec14_nmc_snf = @ec14_nmc.competitors.create! user: @snf, number: 162
@ec14_nmc_mks = @ec14_nmc.competitors.create! user: @mks, number: 166
@ec14_nmc_lcf = @ec14_nmc.competitors.create! user: @lcf, number: 163
@ec14_nmc_ams = @ec14_nmc.competitors.create! user: @ams, number: 164
@ec14_nmc_tlf = @ec14_nmc.competitors.create! user: @tlf, number: 165
@ec14_nmc_pkf = @ec14_nmc.competitors.create! user: @pkf, number: 172
@ec14_nmc_mvf = @ec14_nmc.competitors.create! user: @mvf, number: 168
@ec14_nmc_jmn = @ec14_nmc.competitors.create! user: @jmn, number: 160

#runs
@ec14_nms1_r_ekn = @ec14_nms1_ekn.runs.create! race: @ec14_nms1_r, number: 19, result_time: 1924.0
@ec14_nms1_r_vjf = @ec14_nms1_vjf.runs.create! race: @ec14_nms1_r, number: 17, result_time: 1931.0
@ec14_nms1_r_yhn = @ec14_nms1_yhn.runs.create! race: @ec14_nms1_r, number: 27, result_time: 1944.0
@ec14_nms1_r_mks = @ec14_nms1_mks.runs.create! race: @ec14_nms1_r, number: 23, result_time: 1994.0
@ec14_nms1_r_thn = @ec14_nms1_thn.runs.create! race: @ec14_nms1_r, number: 25, result_time: 2038.0
@ec14_nms1_r_ams = @ec14_nms1_ams.runs.create! race: @ec14_nms1_r, number: 21, result_time: 2051.0
@ec14_nms1_r_ylf = @ec14_nms1_ylf.runs.create! race: @ec14_nms1_r, number: 16, result_time: 2064.0
@ec14_nms1_r_mtf = @ec14_nms1_mtf.runs.create! race: @ec14_nms1_r, number: 29, result_time: 2071.0
@ec14_nms1_r_mln = @ec14_nms1_mln.runs.create! race: @ec14_nms1_r, number: 14, result_time: 2074.0
@ec14_nms1_r_vcs = @ec14_nms1_vcs.runs.create! race: @ec14_nms1_r, number: 15, result_time: 2100.0
@ec14_nms1_r_mps = @ec14_nms1_mps.runs.create! race: @ec14_nms1_r, number: 18, result_time: 2129.0
@ec14_nms1_r_lcf = @ec14_nms1_lcf.runs.create! race: @ec14_nms1_r, number: 30, result_time: 2152.0
@ec14_nms1_r_jps = @ec14_nms1_jps.runs.create! race: @ec14_nms1_r, number: 20, result_time: 2155.0
@ec14_nms1_r_mvf = @ec14_nms1_mvf.runs.create! race: @ec14_nms1_r, number: 26, result_time: 2164.0
@ec14_nms1_r_snf = @ec14_nms1_snf.runs.create! race: @ec14_nms1_r, number: 22, result_time: 2303.0
@ec14_nms1_r_kif = @ec14_nms1_kif.runs.create! race: @ec14_nms1_r, number: 28, result_time: 2310.0
@ec14_nms1_r_pkf = @ec14_nms1_pkf.runs.create! race: @ec14_nms1_r, number: 24, result_time: 2360.0
@ec14_nms1_r_sef = @ec14_nms1_sef.runs.create! race: @ec14_nms1_r, number: 13, result_time: 2937.0
@ec14_nws1_r_mnf = @ec14_nws1_mnf.runs.create! race: @ec14_nws1_r, number: 44, result_time: 1457.0
@ec14_nws1_r_cnn = @ec14_nws1_cnn.runs.create! race: @ec14_nws1_r, number: 43, result_time: 1466.0
@ec14_nws1_r_mvf = @ec14_nws1_mvf.runs.create! race: @ec14_nws1_r, number: 41, result_time: 1497.0
@ec14_nws1_r_mtf = @ec14_nws1_mtf.runs.create! race: @ec14_nws1_r, number: 40, result_time: 1517.0
@ec14_nws1_r_kmf = @ec14_nws1_kmf.runs.create! race: @ec14_nws1_r, number: 34, result_time: 1518.0
@ec14_nws1_r_slf = @ec14_nws1_slf.runs.create! race: @ec14_nws1_r, number: 38, result_time: 1521.0
@ec14_nws1_r_tbs = @ec14_nws1_tbs.runs.create! race: @ec14_nws1_r, number: 33, result_time: 1546.0
@ec14_nws1_r_san = @ec14_nws1_san.runs.create! race: @ec14_nws1_r, number: 36, result_time: 1563.0
@ec14_nws1_r_ans = @ec14_nws1_ans.runs.create! race: @ec14_nws1_r, number: 39, result_time: 1572.0
@ec14_nws1_r_mvf = @ec14_nws1_mvf.runs.create! race: @ec14_nws1_r, number: 42, result_time: 1636.0
@ec14_nws1_r_smr = @ec14_nws1_smr.runs.create! race: @ec14_nws1_r, number: 32, result_time: 1715.0
@ec14_nws1_r_hkf = @ec14_nws1_hkf.runs.create! race: @ec14_nws1_r, number: 47, result_time: 1771.0
@ec14_nws1_r_hkf = @ec14_nws1_hkf.runs.create! race: @ec14_nws1_r, number: 31, result_time: 1912.0
@ec14_nws1_r_kkf = @ec14_nws1_kkf.runs.create! race: @ec14_nws1_r, number: 46, result_time: 2067.0
@ec14_nws1_r_yhn = @ec14_nws1_yhn.runs.create! race: @ec14_nws1_r, number: 45, verdict: :dns
@ec14_nmsj_r_ccf = @ec14_nmsj_ccf.runs.create! race: @ec14_nmsj_r, number: 203, result_time: 1190.0
@ec14_nmsj_r_abr = @ec14_nmsj_abr.runs.create! race: @ec14_nmsj_r, number: 1, result_time: 1249.0
@ec14_nmsj_r_tnf = @ec14_nmsj_tnf.runs.create! race: @ec14_nmsj_r, number: 2, result_time: 1461.0
@ec14_nwsj_r_ean = @ec14_nwsj_ean.runs.create! race: @ec14_nwsj_r, number: 9, result_time: 1137.0
@ec14_nwsj_r_mns = @ec14_nwsj_mns.runs.create! race: @ec14_nwsj_r, number: 12, result_time: 1184.0
@ec14_nwsj_r_oan = @ec14_nwsj_oan.runs.create! race: @ec14_nwsj_r, number: 4, result_time: 1188.0
@ec14_nwsj_r_sns = @ec14_nwsj_sns.runs.create! race: @ec14_nwsj_r, number: 5, result_time: 1200.0
@ec14_nwsj_r_aan = @ec14_nwsj_aan.runs.create! race: @ec14_nwsj_r, number: 11, result_time: 1211.0
@ec14_nwsj_r_jlf = @ec14_nwsj_jlf.runs.create! race: @ec14_nwsj_r, number: 7, result_time: 1541.0
@ec14_nwsj_r_tif = @ec14_nwsj_tif.runs.create! race: @ec14_nwsj_r, number: 10, result_time: 1605.0
@ec14_nwsj_r_vif = @ec14_nwsj_vif.runs.create! race: @ec14_nwsj_r, number: 3, result_time: 2276.0
@ec14_nwsj_r_asr = @ec14_nwsj_asr.runs.create! race: @ec14_nwsj_r, number: 6, verdict: :dns
@ec14_nwsj_r_jjs = @ec14_nwsj_jjs.runs.create! race: @ec14_nwsj_r, number: 8, verdict: :dns
@ec14_nwcj_r_ean = @ec14_nwcj_ean.runs.create! race: @ec14_nwcj_r, number: 145, result_time: 1414.0
@ec14_nwcj_r_sns = @ec14_nwcj_sns.runs.create! race: @ec14_nwcj_r, number: 140, result_time: 1444.0
@ec14_nwcj_r_oan = @ec14_nwcj_oan.runs.create! race: @ec14_nwcj_r, number: 142, result_time: 1486.0
@ec14_nwcj_r_aan = @ec14_nwcj_aan.runs.create! race: @ec14_nwcj_r, number: 143, result_time: 1487.0
@ec14_nwcj_r_mns = @ec14_nwcj_mns.runs.create! race: @ec14_nwcj_r, number: 144, result_time: 1662.0
@ec14_nwcj_r_asr = @ec14_nwcj_asr.runs.create! race: @ec14_nwcj_r, number: 141, verdict: :dns
@ec14_nwcj_r_jjs = @ec14_nwcj_jjs.runs.create! race: @ec14_nwcj_r, number: 146, verdict: :dns
@ec14_nwc_r_cnn = @ec14_nwc_cnn.runs.create! race: @ec14_nwc_r, number: 150, result_time: 2010.0
@ec14_nwc_r_san = @ec14_nwc_san.runs.create! race: @ec14_nwc_r, number: 153, result_time: 2022.0
@ec14_nwc_r_mnf = @ec14_nwc_mnf.runs.create! race: @ec14_nwc_r, number: 147, result_time: 2044.0
@ec14_nwc_r_tbs = @ec14_nwc_tbs.runs.create! race: @ec14_nwc_r, number: 154, result_time: 2131.0
@ec14_nwc_r_mtf = @ec14_nwc_mtf.runs.create! race: @ec14_nwc_r, number: 149, result_time: 2191.0
@ec14_nwc_r_ans = @ec14_nwc_ans.runs.create! race: @ec14_nwc_r, number: 152, verdict: :dnf
@ec14_nwc_r_kmf = @ec14_nwc_kmf.runs.create! race: @ec14_nwc_r, number: 155, verdict: :dnf
@ec14_nwc_r_mvf = @ec14_nwc_mvf.runs.create! race: @ec14_nwc_r, number: 156, verdict: :dnf
@ec14_nwc_r_yhn = @ec14_nwc_yhn.runs.create! race: @ec14_nwc_r, number: 148, verdict: :dns
@ec14_nwc_r_mvf = @ec14_nwc_mvf.runs.create! race: @ec14_nwc_r, number: 151, verdict: :dns
@ec14_nmc_r_yhn = @ec14_nmc_yhn.runs.create! race: @ec14_nmc_r, number: 167, result_time: 1885.0
@ec14_nmc_r_vjf = @ec14_nmc_vjf.runs.create! race: @ec14_nmc_r, number: 158, result_time: 1886.0
@ec14_nmc_r_ekn = @ec14_nmc_ekn.runs.create! race: @ec14_nmc_r, number: 171, result_time: 1914.0
@ec14_nmc_r_mws = @ec14_nmc_mws.runs.create! race: @ec14_nmc_r, number: 159, result_time: 1926.0
@ec14_nmc_r_mln = @ec14_nmc_mln.runs.create! race: @ec14_nmc_r, number: 157, result_time: 1929.0
@ec14_nmc_r_jps = @ec14_nmc_jps.runs.create! race: @ec14_nmc_r, number: 161, result_time: 1974.0
@ec14_nmc_r_thn = @ec14_nmc_thn.runs.create! race: @ec14_nmc_r, number: 170, result_time: 2060.0
@ec14_nmc_r_ylf = @ec14_nmc_ylf.runs.create! race: @ec14_nmc_r, number: 169, result_time: 2096.0
@ec14_nmc_r_snf = @ec14_nmc_snf.runs.create! race: @ec14_nmc_r, number: 162, result_time: 2105.0
@ec14_nmc_r_mks = @ec14_nmc_mks.runs.create! race: @ec14_nmc_r, number: 166, result_time: 2109.0
@ec14_nmc_r_lcf = @ec14_nmc_lcf.runs.create! race: @ec14_nmc_r, number: 163, result_time: 2139.0
@ec14_nmc_r_ams = @ec14_nmc_ams.runs.create! race: @ec14_nmc_r, number: 164, result_time: 2213.0
@ec14_nmc_r_tlf = @ec14_nmc_tlf.runs.create! race: @ec14_nmc_r, number: 165, result_time: 2239.0
@ec14_nmc_r_pkf = @ec14_nmc_pkf.runs.create! race: @ec14_nmc_r, number: 172, result_time: 2254.0
@ec14_nmc_r_mvf = @ec14_nmc_mvf.runs.create! race: @ec14_nmc_r, number: 168, verdict: :dnf
@ec14_nmc_r_jmn = @ec14_nmc_jmn.runs.create! race: @ec14_nmc_r, number: 160, verdict: :dns







                                        