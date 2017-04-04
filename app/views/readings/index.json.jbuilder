json.array! @readings.each do |reading|
  json.date reading.date
  json.time reading.time
  json.bs reading.bs
end