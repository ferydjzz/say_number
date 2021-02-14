class Indonesia
  def self.initialize_sayer
    @satuan_id = ["nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan"]
    @anomalies  = {10=>"sepuluh", 11=>"sebelas", 100=>"seratus", 1000=>"seribu", 1000000=>"juta", 1000000000=>"miliar", 1000000000000=>"triliun" }
  end

  def self.say_koma(koma)
    @koma = []
    @koma.push("koma")
    @temp = koma.to_s.split("")
    @temp.each do |k|
      @koma.push(@satuan_id[k.to_i])
    end
    return @koma.join(" ")
  end

  def self.get_number_sayer_ratusan(number)
    @sayer = []
    @temp = number.first
    if number.count == 1
      return @sayer.push(@satuan_id[@temp])
    elsif number.count == 2
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp])
        else
          @sayer.push(@satuan_id[@temp]).push("belas")
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh")
        end
      end
      return @sayer
    elsif number.count == 3
      if number.last == 1
        @sayer.push(@anomalies[100])
      else
        if number.last == 0
        else
          @sayer.push(@satuan_id[number.last]).push("ratus")
        end
      end
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp])
        else
          @sayer.push(@satuan_id[@temp]).push("belas")
        end
      elsif number[1] == 0
        if @temp != 0
          @sayer.push(@satuan_id[@temp])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh")
        end
      end
      return @sayer
    end
  end

  def self.get_number_sayer_ratus_ribuan(number)
    @sayer = []
    @temp = number.first
    if number.count == 1
      if @temp == 1
        @sayer.push(@anomalies[1000])
      else
        @sayer.push(@satuan_id[@temp]).push("ribu")
      end
      return @sayer
    elsif number.count == 2
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push("ribu")
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push("ribu")
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push("ribu")
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push("ribu")
        end
      end
      return @sayer
    elsif number.count == 3
      if number.last == 1
        if @temp != 0
          @sayer.push(@anomalies[100])
        else
          if number[1] != 0
            @sayer.push(@anomalies[100])
          else
            @sayer.push(@anomalies[100]).push("ribu")
          end
        end
      else
        if number.last == 0
        else
          if @temp != 0
            @sayer.push(@satuan_id[number.last]).push("ratus")
          else
            if number[1] != 0
              @sayer.push(@satuan_id[number.last]).push("ratus")
            else
              @sayer.push(@satuan_id[number.last]).push("ratus").push("ribu")
            end

          end
        end
      end
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push("ribu")
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push("ribu")
        end
      elsif number[1] == 0
        if @temp != 0
          @sayer.push(@satuan_id[@temp]).push("ribu")
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push("ribu")
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push("ribu")
        end
      end
    end
    return @sayer
  end

  def self.get_number_sayer_ratus_jutaan(number)
    @sayer = []
    @temp = number.first
    if number.count == 1
      return @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000])
    elsif number.count == 2
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000])
        end
      end
      return @sayer
    elsif number.count == 3
      if number.last == 1
        if @temp != 0
          @sayer.push(@anomalies[100])
        else
          if number[1] != 0
            @sayer.push(@anomalies[100])
          else
            @sayer.push(@anomalies[100]).push(@anomalies[1000000])
          end
        end
      else
        if number.last == 0
        else
          if @temp != 0
            @sayer.push(@satuan_id[number.last]).push("ratus")
          else
            if number[1] != 0
              @sayer.push(@satuan_id[number.last]).push("ratus")
            else
              @sayer.push(@satuan_id[number.last]).push("ratus").push(@anomalies[1000000])
            end

          end
        end
      end
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000])
        end
      elsif number[1] == 0
        if @temp != 0
          @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000])
        end
      end
      return @sayer
    end
  end

  def self.get_number_sayer_ratus_milyaran(number)
    @sayer = []
    @temp = number.first
    if number.count == 1
      return @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000000])
    elsif number.count == 2
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000000])
        end
      end
      return @sayer
    elsif number.count == 3
      if number.last == 1
        if @temp != 0
          @sayer.push(@anomalies[100])
        else
          if number[1] != 0
            @sayer.push(@anomalies[100])
          else
            @sayer.push(@anomalies[100]).push(@anomalies[1000000000])
          end
        end
      else
        if number.last == 0
        else
          if @temp != 0
            @sayer.push(@satuan_id[number.last]).push("ratus")
          else
            if number[1] != 0
              @sayer.push(@satuan_id[number.last]).push("ratus")
            else
              @sayer.push(@satuan_id[number.last]).push("ratus").push(@anomalies[1000000000])
            end

          end
        end
      end
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000000])
        end
      elsif number[1] == 0
        if @temp != 0
          @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000000])
        end
      end
      return @sayer
    end
  end

  def self.get_number_sayer_ratus_triliunan(number)
    @sayer = []
    @temp = number.first
    if number.count == 1
      return @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000000000])
    elsif number.count == 2
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000000000])
        end
      end
      return @sayer
    elsif number.count == 3
      if number.last == 1
        if @temp != 0
          @sayer.push(@anomalies[100])
        else
          if number[1] != 0
            @sayer.push(@anomalies[100])
          else
            @sayer.push(@anomalies[100]).push(@anomalies[1000000000000])
          end
        end
      else
        if number.last == 0
        else
          if @temp != 0
            @sayer.push(@satuan_id[number.last]).push("ratus")
          else
            if number[1] != 0
              @sayer.push(@satuan_id[number.last]).push("ratus")
            else
              @sayer.push(@satuan_id[number.last]).push("ratus").push(@anomalies[1000000000000])
            end

          end
        end
      end
      if number[1] == 1
        if @temp == 1 or @temp == 0
          @sayer.push(@anomalies[10+@temp]).push(@anomalies[1000000000000])
        else
          @sayer.push(@satuan_id[@temp]).push("belas").push(@anomalies[1000000000000])
        end
      elsif number[1] == 0
        if @temp != 0
          @sayer.push(@satuan_id[@temp]).push(@anomalies[1000000000000])
        end
      else
        if @temp != 0
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@satuan_id[@temp]).push(@anomalies[1000000000000])
        else
          @sayer.push(@satuan_id[number[1]]).push("puluh").push(@anomalies[1000000000000])
        end
      end
      return @sayer
    end
  end

  def self.check_nol(saying)
    if saying == ["nol"] or saying == "nol"
      return ["nol"]
    end
    @check = saying.split(@satuan_id.first)
    if @check.count < 1
      return @check
    else
      return @check.map!{ |element| element.gsub("nol", "").gsub("  ", " ") }
    end
  end

  def self.get_number_sayer_per_separator(block, number)
    @array_number = number.split("").map { |i| i.to_i }
    if block == 0
      get_number_sayer_ratusan(@array_number)
    elsif block == 1
      get_number_sayer_ratus_ribuan(@array_number)
    elsif block == 2
      get_number_sayer_ratus_jutaan(@array_number)
    elsif block == 3
      get_number_sayer_ratus_milyaran(@array_number)
    elsif block == 4
      get_number_sayer_ratus_triliunan(@array_number)
    else
      raise "exceeds the calculation function"
    end
  end
end