File.open(ARGF.argv[0]).each do |line|
  rlist = [ /\A(?<number>\d+)\. (?<name>.+), (?<club>.+), (?<dog>.+) (?<time>\d+\.\d+)/,
            /\A(?<number>\d+) (?<name>.+ .+) (?<nationality>.+) (?<time>\d\d\:\d\d\:\d\d)?/,
            /\A(?<number>\d+)\. (?<name>\D+ \D+) (?<club>\D+) (?<time>\d?\d?\:?\d\d\:\d\d\,?\d?)/,
          ]
  comp_list = [ /\A(SM )?(?<name>\w.*) (?<len>\d?\,?\d)\ ?km/,
              ]
  comp_list.each do |r|
    if not (line=~r).nil?
      @curr = line[r,:name].downcase.gsub(/(\W)/, "")
      case ARGF.argv[1]
      when "show"
        puts "********Race is now #{@curr}"
      when "races"
        puts @curr
      end
    end
  end
  rlist.each do |r|
    if not (line =~r).nil?
      name = line[r,:name]
      nation = begin line[r,:nationality].downcase rescue :finland end
      initials = "#{name.split.collect{|name| name[0]}.join.downcase}#{nation[0].downcase}" 
      t = line[r,:time]
      time = t.to_i * 60 + t.to_f%1*100
      case ARGF.argv[1]
      when "users"
        puts "@#{initials} ||= User.create! email: '#{name.split.join('.').downcase}@example.com',"
        puts "                  password: '#{name.split[0].downcase}1234567',"
        puts "                  password_confirmation: '#{name.split[0].downcase}1234567',"
        puts "                  name: '#{name}',"
        puts "                  club: '#{begin line[r, :club].downcase rescue "" end}',"
        puts "                  nationality: :#{nation}"
      when "show"
        puts line[r,:number]
        puts line[r,:name]
        begin puts line[r,:club] rescue puts :none end
        begin puts line[r,:dog] rescue puts :none end
        puts line[r,:time]
        begin puts line[r,:nationality] rescue puts :finland end
      when "comp"
        puts "@#{ARGF.argv[2]}_#{@curr}_#{initials} = @#{ARGF.argv[2]
             }_#{@curr}.competitors.create! user: @i#{initials}, number: #{line[r,:number]}"
      when "runs"
        puts "@#{ARGF.argv[2]}_#{@curr}_r_#{initials} = @#{ARGF.argv[2]
             }_#{@curr}_#{initials}.runs.create! race: @#{ARGF.argv[2]}_#{@curr}_r, number: #{line[r,:number]
             }, result_time: #{'%.0f' % time}"
      when "races"
      else
        puts "don't know how to do that!"
      end
    end
  end
end
