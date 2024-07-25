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

var flugzeugPropeller1 = Propellerflugzeug(
    rotorBlaetter: 5,
    modell: "PC-12 NG",
    flugzeugPassagiere: 4,
    passengersMax: 10,
    crewAnzahl: 1,
    economy: 4,
    business: 0,
    firstClass: 0)

var flugzeugJet1 = Jet(
    mach: 3529,
    modell: "Lockheed SR-71 Blackbird",
    flugzeugPassagiere: 1,
    passengersMax: 2,
    crewAnzahl: 0,
    economy: 2,
    business: 0,
    firstClass: 0)

var flugzeugPassagierflugzeug1 = Passagierflugzeug(
    turbinen: 2,
    modell: "Airbus A320-200",
    flugzeugPassagiere: 155,
    passengersMax: 165,
    crewAnzahl: 10,
    economy: 100,
    business: 30,
    firstClass: 25)

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

var kunstflugzeugExtra300 = KunstfliegerExtra300(
    speedMax: 407,
    speedMin: 118, kW: 224,
    rotorBlaetter: 4,
    modell: "Extra 300 SE",
    flugzeugPassagiere: 2,
    passengersMax: 2,
    crewAnzahl: 0,
    economy: 2,
    business: 0,
    firstClass: 0
)

var cessna172 = Cessna172(
    speedMax: 380,
    speedMin: 125,
    kW: 260,
    rotorBlaetter: 2,
    modell: "Cessna 172 Skyhawk",
    flugzeugPassagiere: 3,
    passengersMax: 6,
    crewAnzahl: 2,
    economy: 3,
    business: 0,
    firstClass: 0)

var senkrechtstarterJak38 = SenkrechtstarterJak38(
    speedMax: 1150,
    spannweite: 7000,
    laenge: 16.37,
    mach: 0.95,
    modell: "Jet JAK-38",
    flugzeugPassagiere: 2,
    passengersMax: 2,
    crewAnzahl: 0,
    economy: 2,
    business: 0,
    firstClass: 0)

var passagierflugzeugA320neo = AirbusA320neo(
    laenge: 37.57,
    spannweite: 35.8,
    hoehe: 11.76,
    turbinen: 2,
    modell: "A320neo",
    flugzeugPassagiere: 176,
    passengersMax: 189,
    crewAnzahl: 9,
    economy: 100,
    business: 50,
    firstClass: 26)

kunstflugzeugExtra300.beschreibung()
cessna172.beschreibung()
senkrechtstarterJak38.beschreibung()
passagierflugzeugA320neo.beschreibung()

// Aufgabe 2.4 -------------------------------------------------------------------------------

print("""
#####  Aufgabe 2.4  ####################################################################\n
""")

var frankfurtAirport = InternationalerFlughafen(laenderZiele: ["Toronto", "Dubai"], 
                                                flughafenName: "Frankfurt EDDF",
                                                flugzeuge: [senkrechtstarterJak38, passagierflugzeugA320neo])

var pirmasensAirport = InlandsFlughafen(staedteZiele: ["Dortmund", "Saarbrücken", "Ramstein"], 
                                        flughafenName: "Pirmasens EDRP",
                                        flugzeuge: [kunstflugzeugExtra300])

var privateField = PrivatFlughafen(verein: ["Verein 1", "Verein 2"], 
                                   staedteZiele: ["Saarbrücken","Zweibrücken", "Ramstein"],
                                   flughafenName: "PilotField",
                                   flugzeuge: [kunstflugzeugExtra300, kunstflugzeugExtra300])

frankfurtAirport.internationalerFlughafenBeschreibung()
pirmasensAirport.inlandsFlughafenBeschreibung()

print("""

----- Flughafenbewegungen -------------------------------

""")
// Neuer Flieger landet in Frankfurt
frankfurtAirport.flugzeugLandet(flugzeug: kunstflugzeugExtra300)
frankfurtAirport.flugzeugLandet(flugzeug: cessna172)
frankfurtAirport.internationalerFlughafenBeschreibung()

// Neuer Flieger startet in Frankfurt
cessna172.abflugbereit()
frankfurtAirport.flugzeugStartet(flugzeug: cessna172)
frankfurtAirport.internationalerFlughafenBeschreibung()

// Neuer Flieger landet in Pirmasens
pirmasensAirport.flugzeugLandet(flugzeug: cessna172)

print("""

----- Länderbewegung -------------------------------

""")

frankfurtAirport.landHinzufuegen(land: "Frankreich")
frankfurtAirport.internationalerFlughafenBeschreibung()
frankfurtAirport.landEntfernen(land: "Frankreich")
frankfurtAirport.internationalerFlughafenBeschreibung()


print("""

----- Städtebewegungen -------------------------------

""")

pirmasensAirport.stadtHinzufuegen(stadt: "Hannover")
pirmasensAirport.inlandsFlughafenBeschreibung()
pirmasensAirport.stadtEntfernen(stadt: "Hannover")
pirmasensAirport.inlandsFlughafenBeschreibung()

print("""

#####  Aufgabe 3.3  ####################################################################\n
""")

passagierflugzeugA320neo.abflugbereit()
kunstflugzeugExtra300.abflugbereit()
cessna172.crewAndGuests += 1
cessna172.abflugbereit()


print("""

#####  Aufgabe 3.5  ############## BONUS ##################################################\n
""")

print("""

Sitzklassen Übersicht von \(passagierflugzeugA320neo.flugzeugModell)
-----------------------------------------------
Economy:    \(passagierflugzeugA320neo.sitzklassen.0)
Business:   \(passagierflugzeugA320neo.sitzklassen.1)
FirstClass: \(passagierflugzeugA320neo.sitzklassen.2)

""")

print("Anzahl wird in Economy erhöht!")
passagierflugzeugA320neo.sitzklassen.0 += 5


print("""

Sitzklassen Übersicht von \(passagierflugzeugA320neo.flugzeugModell)
-----------------------------------------------
Economy:    \(passagierflugzeugA320neo.sitzklassen.0)
Business:   \(passagierflugzeugA320neo.sitzklassen.1)
FirstClass: \(passagierflugzeugA320neo.sitzklassen.2)

""")


print("""

#####  Aufgabe 4.2  ############## BONUS ##################################################\n
""")

func Passagieranreise(Transpormittel: Transportation) {
    Transpormittel.anreise()
}

Passagieranreise(Transpormittel: Taxi(
    passagierName: "Julia",
    ankunftsZeit: "10:00",
    taxinummer: 827,
    taxiname: "Taxi 827"))

Passagieranreise(Transpormittel: Zug(
    passagierName: "Peter",
    ankunftsZeit: "11:00",
    zugnummer: 45,
    zugTyp: "ICE"))

Passagieranreise(Transpormittel: Zug(
    passagierName: "Chris",
    ankunftsZeit: "12:30",
    zugnummer: 12,
    zugTyp: "RE"))

