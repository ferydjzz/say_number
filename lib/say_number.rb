require "say_number/version"
require_relative "say_number/languages/indonesia"


module SayNumber
	def self.digit_separator(number)
  	@separated = []
  	@array_number = number.to_s.split("")
  	@length = @array_number.count
  	@idx = @length-1
		for i in 0..@length-1
			if i != 0 && i % 3 == 0 
				@separated.push(".")
			end
			@separated.push(@array_number[@idx])
			@idx = @idx-1
		end
		@separated = @separated.join("")
		return @separated
  end


  def self.say(number, language = :id)
  	if language == :id
  		Indonesia.initialize_sayer
  		@separated = digit_separator(number.to_i)
  		@array = @separated.split(".")
  		@length = @array.count
  		@saying = []
  		for i in 0..@length-1
  			@saying.push(Indonesia.get_number_sayer_per_separator(i, @array[i]))
  		end
  		@saying = @saying.reverse.join(" ")
  		return Indonesia.check_nol(@saying).first
  	else
  		raise "Unknown Language"
  	end
  end   
end
