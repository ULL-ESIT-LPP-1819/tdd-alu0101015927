
# Author::    Marta Garcia (mailto:alu0101015927@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
#
# == Clase Nutricion
# Esta clase se ha creado para describir los
# datos antropomedicos
# * metodo initialize
# * metodo indice_masa_corporal
# * imc_tabla
# * porc_grasa
# * relacion_cc
# * rcc_tabla
# * metodo to_s
#

class Nutricion

	attr_accessor :peso, :talla, :edad, :sexo, :ccintura, :ccadera

	# Se asignan los valores para los datos antropomedicos
	def initialize(peso, talla, edad, sexo, ccintura, ccadera)
		@peso = Float(peso)
		@talla = Float(talla)
		@edad = edad
		@sexo = sexo
		@ccintura = Float(ccintura)
		@ccadera = Float(ccadera)
	end

	# Se calcula el indice de masa corporal
	def indice_masa_corporal
		(peso / (talla * talla) * 10000).round(1)
	end

	# Se imprime el valor al que corresponde el indice de masa corporal
	def imc_tabla
		x = self.indice_masa_corporal


		if x < 18.5
			return "#{x} < 18.5 -- Bajo peso -- Delgado"
		elsif x >= 18.5 && x <= 24.9
			return "18.5 < #{x} < 24.9 -- Adecuado -- Aceptable"
		elsif x > 24.9 && x <= 29.9
			return "25.0 < #{x} < 29.9 -- Sobrepeso -- Sobrepeso"
		elsif x > 29.9 && x <= 39.9
			return "30.0 < #{x} < 39.9 -- Obesidad grado 1 -- Obesidad"
		elsif x > 39.9
			return " #{x} > 40 -- Obesidad grado 2 -- Obesidad"
		end

	end

	# Se calcula el porceje de grasa
	def porc_grasa
		(1.2 * self.indice_masa_corporal + 0.23 * edad - 10.8 * sexo - 5.4).round(1)
	end

	# Se calcula la relacion entre la cintura y la cadera
	def relacion_cc
		(ccintura / ccadera).round(2)
	end

	# Se imprime el valor al que corresponde la relacion entre la cintura y la cadera
	def rcc_tabla
		x = self.relacion_cc

			if sexo == 1
					if x >= 0.83 && x < 0.88
						return "Bajo -- 0.83 < #{x} < 0.88"
					elsif x >= 0.88 && x < 0.95
						return "Moderado -- 0.88 < #{x} < 0.95"
					elsif x >= 0.95 && x < 1.01
						return "Alto -- 0.95 < #{x} < 1.01"
					elsif x >= 1.01
						return "Muy alto -- #{x} > 1.01"
					end
			end

			if sexo == 0
						if x >= 0.72 && x < 0.75
							return "Bajo -- 0.72 < #{x} < 0.75"
						elsif x >= 0.75 && x < 0.82
							return "Moderado -- 0.75 < #{x} < 0.82"
						elsif x >= 0.82
							return "Alto -- #{x} > 0.82"
						end
			end
	end

	# Se convierte en un string la representacion de los datos antropomedicos
	def to_s

		tmp = "Peso: #{@peso}\n"
		tmp += "Altura: #{@talla}\n"
		tmp += "Edad: #{@edad}\n"
		tmp += "Sexo: #{@sexo}\n"
		tmp += "Cincurferencia de la cintura: #{@ccintura}\n"
		tmp += "Cincurferencia de la cadera: #{@ccadera}\n"
		tmp += "IMC: #{self.imc_tabla}\n"
		tmp += "Porcentaje de grasa: #{self.porc_grasa}\n"
		tmp += "RCC: #{self.rcc_tabla}\n"

	end

end
