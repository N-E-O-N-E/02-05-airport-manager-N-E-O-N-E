//  main.swift
//  02-05 Airport Manager
//
//  Created by Fabian Moreno on 22.07.24.
//

import Foundation

// Zu Aufgabe 1.5 ----------------------------------------------------------------------

var frankfurtGates: [String] = ["Gate 1","Gate 2","Gate 3","Gate 4","Gate 5"]

// Aufgabe 1.2 --------------------------------------------------------------------------

var flugzeugPropeller1 = Propellerflugzeug(rotorBlaetter: 5, modell: "PC-12 NG")
var flugzeugJet1 = Jet(mach: 3529, modell: "Lockheed SR-71 Blackbird")
var flugzeugPassagierflugzeug1 = Passagierflugzeug(turbinen: 2, modell: "Airbus A320-200")

// Aufgabe 1.3 ------------------------------------------------------------------------

var frankfurt: Array<Flugzeug> = [flugzeugPropeller1, flugzeugJet1, flugzeugPassagierflugzeug1]


for flugzeuge in frankfurt {
    flugzeuge.beschreibung()
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

flugzeugPropeller1.flugzeugPassagiere = 15
flugzeugJet1.flugzeugPassagiere = 2
flugzeugPassagierflugzeug1.flugzeugPassagiere = 170

flugzeugPropeller1.beschreibung()
flugzeugJet1.beschreibung()
flugzeugPassagierflugzeug1.beschreibung()

print("""
    Ausdruck der Passagieranzahl über Methode
    -----------------------------------------

""")

for flugzeuge in frankfurt {
    flugzeuge.beschreibung()
}
// Im StructStruct - Weil die Eigenschaft im Struct nicht verändert wurde - werttyp
// In der Class - Weil eine Änderung des Objektes für alle Objekte gültig ist 1:n - referenztyp

// 1.5. Aufgabe Weiterführend ----------------------------------------------------------------

var passagier1 = Passagier(passagiername: "Max", flugzeug: flugzeugPropeller1)
passagier1.printBoardingpass() // Print ohne Gate "-"

flugzeugPropeller1.flugzeugGate = frankfurtGates[2]
passagier1.printBoardingpass() // Print mit Gate über Flugzeug




var kunstflugzeugExtra300_1 = KunstfliegerExtra300(rotorBlaetter: 4, modell: "Extra 300")
var senkrechtstarterJak38_1 = SenkrechtstarterJak38(mach: 0.97, modell: "JAL-38")
var passagierlugzeugA320neo_1 = AirbusA320neo(turbinen: 2, modell: "A320neo")

kunstflugzeugExtra300_1.beschreibung()
senkrechtstarterJak38_1.beschreibung()
passagierlugzeugA320neo_1.beschreibung()
