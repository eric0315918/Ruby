puts "電流密度"
power_density = gets.to_i
puts "電力"
watt = gets.to_i
puts "電圧"
volt = gets.to_i
puts "最大長さ"
max_length = gets.to_i
puts "最小長さ"
min_length = gets.to_i
puts "最大幅"
max_width = gets.to_i
puts "最小幅"
min_width = gets.to_i

#焼成本数の仮置き（1本）
index = 1

#焼成コスト計算（1本ver）
number_length_shosei_1 = index
max_length_shosei_1 = 250/number_length_shosei_1
max_width_shosei_1 = watt / (2*power_density*max_length_shosei_1)
number_width_shosei_1 = 120 / max_width_shosei_1
cost_shosei_1 = 1100 / (2*number_width_shosei_1*number_length_shosei_1)

#tapeAのコスト計算
number_width_tape_A = 180 / max_width_shosei_1
number_length_tape_A = 200 / max_length_shosei_1
cost_tape_A = 80 / (number_width_tape_A*number_length_tape_A)

cost_1A = cost_shosei_1 + cost_tape_A

#tapeB～Zまで上記と同様の計算

#焼成本数の仮置き（2本）
index += 1

#焼成コスト計算（2本ver）
number_length_shosei_2 = index
max_length_shosei_2 = 250/number_length_shosei_2
max_width_shosei_2 = watt / (2*power_density*max_length_shosei_2)
number_width_shosei_2 = 120 / max_width_shosei_2
cost_shosei_2 = 1100 / (2*number_width_shosei_2*number_length_shosei_2)

#tapeAのコスト計算
number_width_tape_A = 180 / max_width_shosei_2
number_length_tape_A = 200 / max_length_shosei_2
cost_tape_A = 80 / (number_width_tape_A*number_length_tape_A)

cost_2A = cost_shosei_2 + cost_tape_A

if cost_1A > cost_2A
	puts "#{cost_2A},#{max_length_shosei_2},#{max_width_shosei_2}"
else
	puts "#{cost_1A},#{max_length_shosei_1},#{max_width_shosei_1}"
end

#抵抗値計算
resistance = volt^2 / watt

#回路面積
area_length = 
area_width = 

#比抵抗仮決め
resistivity_A = 19

#回路本数仮決め
number_circuit = 10

#回路幅計算
circuit_width = resistivity_A*(number_circuit*area_length+area_width)/(0.0023*resistance)

#回路隙間計算
circuit_gap = (area_width - circuit_width*)

if circuit_width > 0.3
	
	 

b>0.3 and z<b*1.5 回路同士の隙間(z)z={y-b*(本数)}/(本数-1)