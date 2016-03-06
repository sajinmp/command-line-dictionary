def output(myarr)
  if myarr[0].empty?
    puts "No #{myarr[2].capitalize} for the word - #{myarr[1]}"
  else
    puts "#{myarr[2].capitalize} of the word - #{myarr[1]}"
    myarr[0].each_with_index do |i, index|
      puts "#{index + 1}. #{i}"
    end
  end
end
