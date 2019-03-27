# ------------ Requires ------------ #


require './Engine.rb'


# ------------ Text colorizer by walray ------------ #


class Colorizer


# ------------ System ------------ #


	def self.colorize(a,c,txt)

		i = (a - txt.length)

		txt = txt.split("")


# ------------ Colors ------------ #


		clist = ["black","red","green","yellow","blue","magenta","cyan","white"]

		default = "\033[0m"

		black = "\033[30m"

		red = "\033[31m"

		green = "\033[32m"

		yellow = "\033[33m"

		blue = "\033[34m"

		magenta = "\033[35m"

		cyan = "\033[36m"

		white = "\033[37m"


# ------------ Color2Arr ------------ #


		if clist.include?(c) 

			color = eval(c)

			if (txt.length > 1)
				$arr[i] = "#{color}#{txt.first}"
			else
				$arr[i] = "#{color}#{txt.first}#{default}"
			end

			if (txt.length > 1)
				$arr[i + txt.length - 1] = "#{txt.last}#{default}"
			end

		end

	end

end
