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

Pots executar un fitxer de python utilitzant: TeGui.pyex("fitxer.py").

Es pot escriure un fitxer utilitzant: TeGui.write("fitxer.out","text o variable","mode - w/a").

Pots importar el output d'altres aplicacions o codis de python utilitzant: TeGui.read("fitxer.out").

Pots moure la posició del cursor utilitzant: TeGui.cursor(y,x).

Per obtenir la mida del frame generat utilitza: TeGui.size - retorna 2 variables ($x, $y).

Pots amagar o mostrar el cursor utilitzant: TeGui.cursorshow - TeGui.cursorhide.

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

		
		r = rand(1..5)

		TeGui.clear

		TeGui.frame("auto","auto - 1")

		TeGui.frameinframe("auto","auto","auto","auto")

		#TeGui.frameinframe(3,19,34,67)

		TeGui.ascii("ahegao#{r}.ascii","middle","middle - 2","")

		TeGui.text("Terminal Graphical User Interface - v.2.4 - by walray","middle","down - 3","")

		TeGui.text("-- TeGui Project --","middle","down - 1","red")

		TeGui.print
		
		while true
	
			TeGui.input("")

			TeGui.write("input.txt",$input,"w")

			TeGui.pyex("directory.py")

			TeGui.read("output.txt")
	
			TeGui.frameclear

			TeGui.text($output,"middle","middle","")

			TeGui.clear

			TeGui.print

		end

=begin
		TeGui.cursorhide

		20.times do 

			TeGui.cursor(0,0)
			TeGui.print
			TeGui.delay(0.4)

		end

		TeGui.cursorshow
=end

		TeGui.delay(5)

		
	end

end
