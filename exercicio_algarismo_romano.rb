# enconding: utf-8

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

	def self.parser numero_romano
		if (numero_romano.nil? || numero_romano.length == 0)
			raise ArgumentError, "Número romano não fornecido."
		end

		if (numero_romano.include?("IIII") || numero_romano.include?("CCCC") || numero_romano.include?("XXXX"))
			raise ArgumentError, "Número romano fornecido não existe."
		end

		if (numero_romano.include?("VV") || numero_romano.include?("DD") || numero_romano.include?("LL"))
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

describe RomanosParser do
	context "#parser" do
		it "retorna 'nil' se nenhum valor for fornecido" do
			expect { RomanosParser.parser("") }.to raise_error(ArgumentError, "Número romano não fornecido.")
			expect { RomanosParser.parser(nil) }.to raise_error(ArgumentError, "Número romano não fornecido.")
		end

		it "retorna valores simples: I, V, X, L, C, D, M" do
			expect(RomanosParser.parser("I")).to eql 1
			expect(RomanosParser.parser("V")).to eql 5
			expect(RomanosParser.parser("X")).to eql 10
			#pending "ajuste a ser reparado após correção do teste anterior" do
			expect(RomanosParser.parser("L")).to eql 50
			expect(RomanosParser.parser("C")).to eql 100
			expect(RomanosParser.parser("D")).to eql 500
			expect(RomanosParser.parser("M")).to eql 1000
			#end
		end

		it "retorna valores que podem se repetir: I, X, C, M" do
			#pending "ajustando teste de valores inválidos antes" do
			expect(RomanosParser.parser("XX")).to eql 20
			expect(RomanosParser.parser("XXX")).to eql 30
			expect(RomanosParser.parser("II")).to eql 2
			expect(RomanosParser.parser("III")).to eql 3
			expect(RomanosParser.parser("CC")).to eql 200
			expect(RomanosParser.parser("CCC")).to eql 300
			expect(RomanosParser.parser("MM")).to eql 2000
			expect(RomanosParser.parser("MMM")).to eql 3000
			#end
		end

		it "não retorna caracteres que não podem se repetir: V, L, D" do
			expect { RomanosParser.parser("VV") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("LL") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("DD") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
		end

		it "retorna combinações de caracteres que se soma"

		it "retorna combinações de caracteres que se subtraem"

		it "não retorna combinações impossíveis: IIII, CCCC, XXXX" do
			expect { RomanosParser.parser("IIII") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("CCCC") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("XXXX") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
		end
        
        it "não retorna combinações inválidas" do
            expect { RomanosParser.parser("abc") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
            expect { RomanosParser.parser("b") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
        end
	end
end