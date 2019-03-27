#Live Cmmand executer

require './Engine.rb'

TeGui.clear

TeGui.version

while true
	
	print ": "
	
	begin

		input = gets.chomp.to_s

		if (input == "exit")
			exit
		end

		if (input != "")
			eval("TeGui.#{input}")
		end

	rescue

		puts "Bad input..."

	end

end