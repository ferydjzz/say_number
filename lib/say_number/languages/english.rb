class English
	def self.initialize_sayer
		@satuan_en = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
		@teen = {10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}
		@anomalies = {20=>"twenty", 30=>"thirty", 40=>"fourty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety", 100=>"hundred", 1000=>"thousand", 1000000=>"million", 1000000000=>"billion", 1000000000000=>"trillion", 1000000000000000=>"quadrillion"}
	end

  def self.get_number_sayer_ratusan(number)
  	@sayer = []
  	@temp = number.first
  	if number.count == 1
			return @sayer.push(@satuan_en[@temp])
		elsif number.count == 2
			if number[1] == 1
				@sayer.push(@teen[10+@temp])
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp])
				else
					@sayer.push(@anomalies[number[1]*10])
				end
			end
			return @sayer
		elsif number.count == 3
			if number.last == 0
			else
				@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
			end
			if number[1] == 1
				@sayer.push(@teen[10+@temp])
			elsif number[1] == 0
				if @temp != 0
					@sayer.push(@satuan_en[@temp])
				end
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp])
				else
					@sayer.push(@anomalies[number[1]*10])	
				end
			end
			return @sayer
		end	
  end

  def self.get_number_sayer_ratus_ribuan(number)
  	@sayer = []
  	@temp = number.first
  	if number.count == 1
			@sayer.push(@satuan_en[@temp]).push(@anomalies[1000])
			return @sayer
		elsif number.count == 2
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000])
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000])
				end
			end
			return @sayer
		elsif number.count == 3
			if number.last == 0
			else
				if @temp != 0
					@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
				else
					if number[1] != 0
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
					else
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100]).push(@anomalies[1000])
					end
				end
			end
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000])
			elsif number[1] == 0
				if @temp != 0
					@sayer.push(@satuan_en[@temp]).push(@anomalies[1000])
				end
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000])
				end
			end
			return @sayer
		end
  end

  def self.get_number_sayer_ratus_jutaan(number)
  	@sayer = []
  	@temp = number.first
  	if number.count == 1
			@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000])
			return @sayer
		elsif number.count == 2
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000])
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000])
				end
			end
			return @sayer
		elsif number.count == 3
			if number.last == 0
			else
				if @temp != 0
					@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
				else
					if number[1] != 0
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
					else
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100]).push(@anomalies[1000000])
					end
				end
			end
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000])
			elsif number[1] == 0
				if @temp != 0
					@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000])
				end
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000])
				end
			end
			return @sayer
		end
  end

  def self.get_number_sayer_ratus_milyaran(number)
		@sayer = []
  	@temp = number.first
  	if number.count == 1
			@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000000])
			return @sayer
		elsif number.count == 2
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000000])
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000000])
				end
			end
			return @sayer
		elsif number.count == 3
			if number.last == 0
			else
				if @temp != 0
					@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
				else
					if number[1] != 0
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
					else
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100]).push(@anomalies[1000000000])
					end
				end
			end
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000000])
			elsif number[1] == 0
				if @temp != 0
					@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000000])
				end
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000000])
				end
			end
			return @sayer
		end
  end

  def self.get_number_sayer_ratus_triliunan(number)
  	@sayer = []
  	@temp = number.first
  	if number.count == 1
			@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000000000])
			return @sayer
		elsif number.count == 2
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000000000])
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000000000])
				end
			end
			return @sayer
		elsif number.count == 3
			if number.last == 0
			else
				if @temp != 0
					@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
				else
					if number[1] != 0
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100])
					else
						@sayer.push(@satuan_en[number.last]).push(@anomalies[100]).push(@anomalies[1000000000000])
					end
				end
			end
			if number[1] == 1
				@sayer.push(@teen[10+@temp]).push(@anomalies[1000000000000])
			elsif number[1] == 0
				if @temp != 0
					@sayer.push(@satuan_en[@temp]).push(@anomalies[1000000000000])
				end
			else
				if @temp != 0
					@sayer.push(@anomalies[number[1]*10]).push(@satuan_en[@temp]).push(@anomalies[1000000000000])
				else
					@sayer.push(@anomalies[number[1]*10]).push(@anomalies[1000000000000])
				end
			end
			return @sayer
		end
  end

  def self.check_nol(saying)
  	if saying == ["zero"] or saying == "zero"
  		return ["zero"]
  	end
  	@check = saying.split(@satuan_en.first)
  	if @check.count < 1
  		return @check
  	else
  		return @check.map!{ |element| element.gsub("zero", "").gsub("  ", " ") }
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