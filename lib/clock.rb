# clock.rb

def clock(hours, minutes, seconds)
  time_fields = [hours, minutes, seconds]
  max_values = [24, 60, 60]

  time_fields.each_with_index do |field, index|
    if field >= max_values[index]
      raise ArgumentError.new("#{field} is too large")
    end
  end

  time_fields.map! do |field|
    if field < 10
      "0#{field}"
    else
      "#{field}"
    end
  end

  return "#{time_fields[0]}:#{time_fields[1]}:#{time_fields[2]}"
end