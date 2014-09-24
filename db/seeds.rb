# for quick minimal seed call
#
#     rake db:seed minimal=yes

list = %w{
  competition_formats race_formats users event_roicross 
  }
list += %w{
  event_ec14 event_jami event_smr14 event_new_tk15
  } unless ENV["minimal"]
list.each do |part|
  load File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end
