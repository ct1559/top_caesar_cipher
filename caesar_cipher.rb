def caesar_cipher(string, num)
    # Check if num is within 1-25 range
    if num > 25 || num < 1
      return "Shift must be between 1-25"
    end
    
    str_arr = string.split("")
    str_arr.map! do |char|
      if char.match(/[[:upper:]]/)
        char = char.ord
          if char <= 90-num
             char += num
           else
             char = num-(90-char)+64
          end
      elsif char.match(/[[:lower:]]/)
        char = char.ord
          if char <= 122-num
            char += num
          else
            char = num-(122-char)+96
          end
      else
        char = char.ord
      end
    end 
    str_arr.map! {|char| char = char.chr}
    str_arr.join("")
  end