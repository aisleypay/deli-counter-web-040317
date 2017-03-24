def line (katz_deli)
  line = "The line is currently: "

  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each_with_index { |customer, idx|
      if idx == katz_deli.length - 1
        idx += 1
        line << "#{idx}. #{customer}"

      else
        idx += 1
        line << "#{idx}. #{customer} "
      end
    }

    puts line
  end

end

def take_a_number (katz_deli, new_customer)
  katz_deli.push(new_customer)

  puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end

def now_serving (katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    current_customer = katz_deli.shift
    puts "Currently serving #{current_customer}."
  end
end
