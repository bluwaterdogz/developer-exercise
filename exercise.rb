class Exercise

  # Returns a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it is instead replaced with "Marklar".
  def self.marklar(str)

    # create array of words
    arr = str.split(" ")
    i = 0 

    while i < arr.length

      val = arr[i]

      if val.length > 4

        # preserve end of word punctuation
        if val[val.length-1] =~ /([[:punct:]\s])/
          punct = val[val.length-1]
        end

        # preserve case
        if val[0] == val[0].upcase
          ins = "Marklar"
        else
          ins = "marklar"
        end
        
        # add punctuation back
        if punct != nil
          ins = ins + punct
        end

        arr[i] = ins 

      end

      i += 1
    end

    return arr.join(" ")

  end

  # Returns the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  def self.even_fibonacci(nth)

    x = 1
    y = 0
    z = 0
    iter = 1
    total = 0
    
    while iter <= nth
      
      # add even numbers to total
      if x % 2 == 0 
        total += x
      end

      # store old value
      z = x

      # create new value
      x = x + y 

      # store new value
      y = z

      iter += 1
    
    end

    return total

  end



end
