class Fixnum
  define_method(:ping_pong) do

    array_num = (1..self).to_a

    array_num.map! do |number|

      if number % 3 == 0 && number % 5 == 0
        "PININININGGGG PONNNNNNNNNG!!!!?!"
      elsif number % 3 == 0
        "ping"
      elsif number % 5 == 0
        "pong"
      else
        number

      end


    end


  end

end
