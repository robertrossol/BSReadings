json.array! @readings.each do |reading|
  json.partial! 'reading.json.jbuilder', reading: reading
end