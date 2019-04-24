# ------------ Requires ------------ #


require './Engine.rb'


# ------------ Text colorizer by walray ------------ #


class Colorize


# ------------ Colors ------------ #


	@@clist = ["black","red","green","yellow","blue","magenta","cyan","white","default"]

	@@default = "\033[0m"

	@@black = "\033[30m"

	@@red = "\033[31m"

	@@green = "\033[32m"

	@@yellow = "\033[33m"

	@@blue = "\033[34m"

	@@magenta = "\033[35m"

	@@cyan = "\033[36m"

	@@white = "\033[37m"


# ------------ Array Colorizer ------------ #


	def self.foreground(a,c,p)

		if @@clist.include?(c) 

			ch = $arr[a]

			cl = eval("@@#{c}")

			if (ch.length == 1)

				if (p == "before")

					$arr[a] = "#{cl}#{ch}"

				end

				if (p == "after")

					$arr[a] = "#{ch}#{cl}"

				end

				if (p == "both")

					$arr[a] = "#{cl}#{ch}#{@@default}"
				
				end
				
			end

		end

	end


	def self.background(a,c,p)
		#IN BETA
	end

end
