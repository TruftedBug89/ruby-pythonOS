require './Engine.rb'

TeGui.clear

TeGui.frame(100,25)

TeGui.frameinframe(13,15,8,92)

TeGui.txtprint("Nueva Partida","left + 10",14,"red")

TeGui.txtprint("Cargar Partida","middle",14,"")

TeGui.txtprint("Salir","right - 11",14,"")

TeGui.txtprint("Espitja espai per acceptar","middle",17,"")


TeGui.print

menu = 1

while $key != " "
	
	TeGui.keypress

	if $key == "D"
		menu -= 1
	end

	if $key == "C"
		menu += 1
	end

	if menu < 1
		menu = 1
	end

	if menu > 3
		menu = 3
	end

	if menu == 1

		TeGui.txtprint("Nueva Partida","left + 10",14,"red")

		TeGui.txtprint("Cargar Partida","middle",14,"")

		TeGui.txtprint("Salir","right - 11",14,"")

	end

	if menu == 2

		TeGui.txtprint("Nueva Partida","left + 10",14,"")

		TeGui.txtprint("Cargar Partida","middle",14,"red")

		TeGui.txtprint("Salir","right - 11",14,"")

	end

	if menu == 3

		TeGui.txtprint("Nueva Partida","left + 10",14,"")

		TeGui.txtprint("Cargar Partida","middle",14,"")

		TeGui.txtprint("Salir","right - 11",14,"red")

	end

	TeGui.clear

	TeGui.print

#	print $key
#	puts menu

end

i= 0

if menu == 3

	TeGui.frameclear

	while i < 5
		
		TeGui.clear
		TeGui.frameclear
		TeGui.print

		sleep(1)

		TeGui.clear
		TeGui.txtprint("Shutting down...","middle",14,"")
		TeGui.print
		i += 1

		sleep(1)
		
	end

end