class Filme < ActiveRecord::Base

	attr_accessible :horario_data, :horario_hora

	def horario
		"#{data_formatada} #{hora_formatada}"
	end

	def data_formatada
		horario_data.strftime("%B %d, %Y")
	end

	def hora_formatada
		horario_hora.strftime("%l:%M%p").strip.downcase
	end

end
