//  main.swift
//  02-05 Airport Manager
//
//  Created by Fabian Moreno on 22.07.24.
//

import Foundation

// Aufgabe 1.2 --------------------------------------------------------------------------
print("""
#####  Aufgabe 1.2  ####################################################################\n
""")

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
#####  Aufgabe 1.4  ####################################################################\n
""")

print("""

        
     █████  ██ ██████  ██████   ██████  ██████  ████████
    ██   ██ ██ ██   ██ ██   ██ ██    ██ ██   ██    ██
    ███████ ██ ██████  ██████  ██    ██ ██████     ██
    ██   ██ ██ ██   ██ ██      ██    ██ ██   ██    ██
    ██   ██ ██ ██   ██ ██       ██████  ██   ██    ██

    ####################################################
              ✈️ ✈️  BOARDING START  ✈️ ✈️
    ####################################################

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
print("""
#####  Aufgabe 1.5  ####################################################################\n
""")

var passagier1 = Passagier(passagiername: "Max", flugzeug: flugzeugPropeller1)
passagier1.printBoardingpass() // Print ohne Gate "-"

flugzeugPropeller1.flugzeugGate = frankfurtGates[2]
passagier1.printBoardingpass() // Print mit Gate über Flugzeug

// Aufgabe 2.3 -------------------------------------------------------------------------------
print("""
#####  Aufgabe 2.3  ####################################################################\n
""")

var kunstflugzeugExtra300 = KunstfliegerExtra300(rotorBlaetter: 4, modell: "Extra 300")
var senkrechtstarterJak38 = SenkrechtstarterJak38(mach: 0.97, modell: "JAL-38")
var passagierflugzeugA320neo = AirbusA320neo(laenge: 37.57, spannweite: 35.8, hoehe: 11.76, passagiereMax: 189, turbinen: 2, modell: "A320neo")

kunstflugzeugExtra300.beschreibung()
senkrechtstarterJak38.beschreibung()
passagierflugzeugA320neo.beschreibung()

// Aufgabe 2.4 -------------------------------------------------------------------------------

print("""
#####  Aufgabe 2.4  ####################################################################\n
""")

var frankfurtAirport = InternationalerFlughafen(laenderZiele: ["Toronto", "Dubai"], flughafenName: "Frankfurt EDDF", flugzeuge: [senkrechtstarterJak38, passagierflugzeugA320neo, kunstflugzeugExtra300])

var pirmasensAirport = InlandsFlughafen(staedteZiele: ["Dortmund", "Saarbrücken", "Ramstein"], flughafenName: "Pirmasens EDRP", flugzeuge: [kunstflugzeugExtra300, kunstflugzeugExtra300])

var privateField = PrivatFlughafen(verein: ["Verein 1", "Verein 2"], staedteZiele: ["Saarbrücken","Zweibrücken", "Ramstein"], flughafenName: "PilotField", flugzeuge: [kunstflugzeugExtra300, kunstflugzeugExtra300])

frankfurtAirport.internationalerFlughafenBeschreibung()
pirmasensAirport.inlandsFlughafenBeschreibung()

// Neuer Flieger landet in Frankfurt
print("\\nNeue Flieger landet in Frankfurt")
frankfurtAirport.flugzeugLandet(flugzeug: kunstflugzeugExtra300)
frankfurtAirport.internationalerFlughafenBeschreibung()

// Neuer Flieger startet in Frankfurt
print("\nFlieger \(frankfurtAirport.flugzeuge.last!.flugzeugModell) startet in Frankfurt")
frankfurtAirport.flugzeugStartet(flugzeug: kunstflugzeugExtra300)
frankfurtAirport.internationalerFlughafenBeschreibung()

