%w{
  users events competition_formats race_formats competitions
}.each do |part|
  load File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end
