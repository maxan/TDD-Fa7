# enconding: utf-8

class RomanosParser

	@@valores = {
		"I" => 1,
		"V" => 5,
		"X" => 10,
		"L" => 50,
		"C" => 100,
		"D" => 500,
		"M" => 1000
	}

	def self.parser numero_romano
		if (numero_romano.nil? || numero_romano.length == 0)
			raise ArgumentError, "Número romano não fornecido."
		end

		if (numero_romano.include?("IIII") || numero_romano.include?("CCCC") || numero_romano.include?("XXXX"))
			raise ArgumentError, "Número romano fornecido não existe."
		end

		@@valores[numero_romano]
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

		it "retorna valores que podem se repetir: I, X, C, M"

		it "retorna caracteres que não podem se repetir: V, L, D"

		it "retorna combinações de caracteres que se soma"

		it "retorna combinações de caracteres que se subtraem"

		it "não retorna combinações impossíveis: IIII, CCCC, XXXX" do
			expect { RomanosParser.parser("IIII") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("CCCC") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
			expect { RomanosParser.parser("XXXX") }.to raise_error(ArgumentError, "Número romano fornecido não existe.")
		end
	end
end