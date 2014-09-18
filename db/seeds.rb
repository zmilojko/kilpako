%w{
  users events competition_formats
}.each do |part|
  load File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end
