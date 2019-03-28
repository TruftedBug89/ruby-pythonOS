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

Pots importar el output d'altres aplicacions o codis de python utilitzant: TeGui.read("fitxer.out")

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

		TeGui.frameinframe(3,19,34,67)

		TeGui.ascii("ahegao.ascii","middle","middle - 2","")

		TeGui.text("Terminal Graphical User Interface - v.2.2 - by walray","middle","down - 3","")

		TeGui.print

		TeGui.delay(5)

		#TeGui.pause

	end

end