# for quick minimal seed call
#
#     rake db:seed minimal=yes

list = %w{
  competition_formats race_formats users event_roicross event_new_1 event_new_2 event_new_3
  }
list += %w{
  event_ec14 event_jami event_smr14  event_new_4 event_new_5 event_new_6 event_new_7
  } unless ENV["minimal"]
list.each do |part|
  load File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end
