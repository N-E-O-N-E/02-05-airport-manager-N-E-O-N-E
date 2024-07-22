//  main.swift
//  02-05 Airport Manager
//
//  Created by Fabian Moreno on 22.07.24.
//

import Foundation

// Zu Aufgabe 1.5 ----------------------------------------------------------------------

var frankfurtGates: [String] = ["Gate 1","Gate 2","Gate 3","Gate 4","Gate 5"]

// Aufgabe 1.2 --------------------------------------------------------------------------

var flugzeug1 = Flugzeug.init(flugzeugModell: "A320")
var flugzeug2 = Flugzeug.init(flugzeugModell: "B747")
var flugzeug3 = Flugzeug.init(flugzeugModell: "A321")

// Aufgabe 1.3 ------------------------------------------------------------------------

var frankfurt: Array<Flugzeug> = [flugzeug1, flugzeug2, flugzeug3]


for flugzeuge in frankfurt {
    flugzeuge.passagierAnzahl()
}

// Aufgabe 1.4. ------------------------------------------------------------------------

print("""

    #################################
      ✈️ ✈️  BOARDING START  ✈️ ✈️
    #################################

""")

print("""
    Übergabe der Passagieranzahl
    ----------------------------

""")

flugzeug1.flugzeugPassagiere = 550
flugzeug2.flugzeugPassagiere = 300
flugzeug3.flugzeugPassagiere = 200

flugzeug1.passagierAnzahl()
flugzeug2.passagierAnzahl()
flugzeug3.passagierAnzahl()

print("""
    Ausdruck der Passagieranzahl über Methode
    -----------------------------------------

""")

for flugzeuge in frankfurt {
    flugzeuge.passagierAnzahl()
}
// Im StructStruct - Weil die Eigenschaft im Struct nicht verändert wurde - werttyp
// In der Class - Weil eine Änderung des Objektes für alle Objekte gültig ist 1:n - referenztyp

// 1.5. Aufgabe Weiterführend ----------------------------------------------------------------

var passagier1 = Passagier(passagiername: "Max", flugzeug: flugzeug1)
passagier1.printBoardingpass() // Print ohne Gate "-"

flugzeug1.flugzeugGate = frankfurtGates[2]
passagier1.printBoardingpass() // Print mit Gate über Flugzeug
