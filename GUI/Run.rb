# ------------ Requires ------------ #


require './Engine.rb'


=begin 


# ------------ Sintaxis ------------ #


Per crear una interfície gràfica de terminal necessites utilitzar les instruccions descrites a continuació.

Primer necessites inicialitzar la GUI, llavors pots començar a afegir-hi elements.

Per inicialitzar la GUI utilitza: TeGui.frame( llargada , altura ).

Per dibuixar-hi un marc utilitza: TeGui.frameinframe( dalt , baix , esquerra , dreta ).

Per afegir un text utilitza: TeGui.text("text", "left - middle - right - hi pots afegir operacions", "up - middle - down - hi pots afegir operacions", "color").

Pots afegir un ascii art, per fer-ho utilitza: TeGui.ascii("fitxer.ascii", "left - middle - right - hi pots afegir operacions", "up - middle - down - hi pots afegir operacions", "color").

Els colors disponibles son "black, red, green, yellow, blue, magenta, cyan, white".

Una vegada inicialitzada la GUI i afegits els elements, necessites imprimir la al terminal, utilitza: TeGui.print.

Per demanar un input utilitza TeGui.input("text"), el input es guarda a la variable global $input.

Pots executar un fitxer de python utilitzant: TeGui.pyex("fitxer.py")

Pots netejar el terminal utilitzant: TeGui.clear.

També pots esborrar tots els elements afegits si utilitzes: TeGui.frameclear.

Per mostrar la la versió del codi utilitza: "TeGui.version".

No té sentit inicialitzar una GUI dins d'un bucle, pero si pots afegir elements i imprimir-la.

Inicialitzar la GUI és sempre el primer que s'ha de fer, llavors s'hi afegeixen els elements i per ultim s'imprimeix el conjunt.

=end


# ------------ Exemple ------------ #

class Run

	def self.code


# ------------ Code goes here ------------ #


		TeGui.clear

		TeGui.frame(100,25)

		TeGui.frameinframe(1,25,1,100)

		TeGui.frameinframe(13,15,8,92)

		#TeGui.new.text("Hola Allison","right",4)

		#TeGui.new.text("Allison te amooo!!!","left",1)

		#TeGui.new.text("Casate conmigo >..<","right",1)

		# ┤├ ┴ ┬ ┼

		TeGui.ascii("farland.ascii","middle",3,"red")

		TeGui.text("Colors: ",2,18,"")
		TeGui.text("██",10,18,"red")
		TeGui.text("██",12,18,"green")
		TeGui.text("██",14,18,"yellow")
		TeGui.text("██",16,18,"blue")
		TeGui.text("██",18,18,"magenta")
		TeGui.text("██",20,18,"cyan")
		TeGui.text("██",22,18,"white")

		TeGui.print

	end

end

=begin

i = 0

opt1 = "Nueva Partida".split("")
opt2 = "Cargar Partida".split("")
opt3 = "Salir".split("")

15.times do

	TeGui.clear
	TeGui.print

	if (i < opt1.length)
		TeGui.text(opt1[i].to_s,"left + 10 + #{i}",14,"")
	end
	if (i < opt2.length)
		TeGui.text(opt2[i].to_s,"middle - #{opt2.length / 2} + #{i}",14,"")
	end
	if (i < opt3.length)
		TeGui.text(opt3[i].to_s,"right - #{opt3.length} - 10 + #{i}",14,"")
	end

	sleep(0.1)

	i += 1
	
end

TeGui.version

=end