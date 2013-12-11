# enconding: utf-8

class Teste

	@@hash = {
		"M" => 1000,
		"CM" => 900,
		"D" => 500,
		"CD" => 400,
		"C" => 100,
		"XC" => 90,
		"L" => 50,
		"XL" => 40,
		"X" => 10,
		"IX" => 9,
		"V" => 5,
		"IV" => 4,
		"I" => 1
	}

	def initialize
		p "p hash : #{hash}"
		p "hash.each"
		@@hash.each do |e| #e is [key,value]
		  p e
		end

		p "hash.each_pair"
		@@hash.each_pair do |k,v| #k and v class as in hash
		  p "#{k}=#{v}"
		end


		p "hash.each_value"
		@@hash.each_value do |e| #e is value
		  p e
		end
	end
end

#Teste.new

class RomanosParser

	@@valores = {
		"M" => 1000,
		"CM" => 900,
		"D" => 500,
		"CD" => 400,
		"C" => 100,
		"XC" => 90,
		"L" => 50,
		"XL" => 40,
		"X" => 10,
		"IX" => 9,
		"V" => 5,
		"IV" => 4,
		"I" => 1
	}

	#@@valores = [
	#	["M" , 1000],
	#	["CM" , 900],
	#	["D" , 500],
	#	["CD" , 400],
	#	["C" , 100],
	#	["XC" , 90],
	#	["L" , 50],
	#	["XL" , 40],
	#	["X" , 10],
	#	["IX" , 9],
	#	["V" , 5],
	#	["IV" , 4],
	#	["I" , 1]
	#]

	def self.parser numero_romano
		if (numero_romano.nil? || numero_romano.length == 0)
			raise ArgumentError, "Número romano não fornecido."
		end

		if (numero_romano.include?("IIII") || numero_romano.include?("CCCC") || numero_romano.include?("XXXX"))
			raise ArgumentError, "Número romano fornecido não existe."
		end

		if (numero_romano.chars.any? { |caractere| !@@valores.has_key?(caractere) })
			raise ArgumentError, "Número romano fornecido não existe."
		end

		valor_arabico = 0

		@@valores.each_pair { |key, value|
			while numero_romano.index(key) == 0
				valor_arabico += value
				numero_romano.slice!(key)
			end
		}

		valor_arabico
	end
end

puts RomanosParser.parser("MMM")
puts RomanosParser.parser("MD")
puts RomanosParser.parser("XLIII")
puts RomanosParser.parser("LXXXVIII")
puts RomanosParser.parser("MCMXCIX")
puts RomanosParser.parser("LXV")
puts RomanosParser.parser("LXIV")
puts RomanosParser.parser("XLIV")