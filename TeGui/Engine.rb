# ------------ Requires ------------ #


require './Colorizer.rb'


# ------------ TEGUI by walray ------------ #


class TeGui


# ------------ Frame Printing System ------------ #


	def self.frame(width,height)

		$arr = Array.new( (width * height) , " ")

		@@x = width
		@@y = height

	end


	def self.print
		
		i = 0
		a = @@x - 1

		@@y.times do

			puts $arr[i..a].join("")
			i += @@x
			a += @@x

		end

	end


	def self.frameclear
		
		$arr.fill(" ", 0..(@@x * @@y) )

	end


# ------------ Frame in Frame Printing System ------------ #


	def self.frameinframe(u,d,l,r)


		if (u < d) && (l < r) && (r <= @@x) && (d <= @@y) && (u != 0) && (l != 0)

			u = (u - 1)
			d = (d - 1)
			r = (r - 1)
			l = (l - 1)

			i = 0

			$arr.fill("─", ( (u * @@x) + l)..( (u * @@x) + r) )

			$arr.fill("─", ( (d * @@x) + l)..( (d * @@x) + r) )
			
			$arr[(u * @@x) + l] = "┌"
			$arr[(u * @@x) + r] = "┐"

			$arr[(d * @@x) + l] = "└"
			$arr[(d * @@x) + r] = "┘"

			@@y.times do

				if (i > u) && (i < d)

					$arr[(i * @@x) + l] = "│"
				
					$arr[(i * @@x) + r] = "│"

				end

				i += 1

			end

		else

			puts "\n Incorrect frame size! \n"

		end

	end


# ------------ Text Printing System ------------ #


	def self.text(txt,x,y,c)

		if (x != "0") && (x != 0)

			i = 0

			if x.is_a? (String)

				x = x.gsub("left") { 2 }

				x = x.gsub("middle") { ( (@@x / 2) - (txt.length / 2) + 1) }

				x = x.gsub("right") { (@@x - txt.length) }

				x = eval(x)

			end

			if y.is_a? (String)

				y = y.gsub("up") { 2 }

				y = y.gsub("middle") { ( (@@y / 2) + 1) }

				y = y.gsub("down") { (@@y - 1) }

				y = eval(y)

			end

			x = (x - 1)
			y = (y - 1)

			a = (@@x * y) + x

		else

			puts "\n Format incorrect! \n"
		
		end

		txt.length.times do

			$arr[a] = txt[i]

			i += 1
			a += 1

		end

		Colorizer.colorize(a,c,txt.to_s)

	end


	def self.ascii(f,x,y,c)

		a = File.read("./ascii/#{f}", :encoding => "utf-8")

		a = a.split("\n")

		i = 0

		if true #IN BETA

			a.length.times do

				if y.is_a? (String)
					if y.include?("up")
						TeGui.text(a[i],x,"#{y} + #{i}",c)
					end

					if y.include?("middle")
						TeGui.text(a[i],x,"(#{y} - #{a.length / 2}) + #{i}",c)
					end

					if y.include?("down")
						TeGui.text(a[i],x,"(#{y} - #{a.length - 1}) + #{i}",c)
					end
			
				else

					TeGui.text(a[i],x,"#{y} + #{i}",c)
				
				end

				i += 1

			end

		end

	end


	def self.keypress #IN BETA
		
		system("stty raw -echo")
		$key = STDIN.getc
		system("stty -raw echo")

	end
	

	def self.pause

		system("pause")

	end

	def self.delay(s)

		if s.is_a? (Numeric)
			sleep(s)
		else
			puts "\n Must be a number.\n"
		end

	end


	def self.clear

		system("cls")
		system("clear")

	end


	def self.pyex(f)

		if File.file?("./py/#{f}")
			system("python ./py/#{f}")
		else
			puts "\n Nonexistent py file! \n"
		end

	end


	def self.read(f)

		if File.file?("./output/#{f}")
			$output = File.read("./output/#{f}")
		else
			puts "\n Nonexistent output file! \n"
		end

	end


	def self.input(txt)

		printf("#{txt}: ")  
		$input = gets.chomp

	end


	def self.version

		puts "TeGui ( Terminal Graphical User Interface ) - v.2.2 - by walray"

	end

end