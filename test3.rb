class Measurement
	def initialize(power_density:,watt:,volt:,max_length:,min_length:,max_width:,min_width:)
		@power_density = power_density
		@watt = watt
		@volt = volt
		@max_length = max_length
		@min_length = min_length
		@max_width = max_width
		@min_width = min_width
	end
	def show_value
		puts @power_density
		puts @watt
		puts @volt
		puts @max_length
		puts @min_length
		puts @max_width
		puts @min_width
	end
end

measurement1 = Measurement.new(gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i)
measurement1.show_value