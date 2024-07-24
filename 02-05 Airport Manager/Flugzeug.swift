//
//  Flugzeug.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 22.07.24.
//

import Foundation

// Aufgabe 1.2 --------------------------------------------------------------------------

//struct Flugzeug {
class Flugzeug {
    
    var flugzeugModell: String
    var flugzeugPassagiere: UInt
    var flugzeugGate: String? = nil
    var passengersMax: UInt
    var crewAnzahl: UInt
    
    // Aufgabe 3.5 -----------------------------------------------------------------------
    
    /*
    var economy: UInt
    var business: UInt
    var firstClass: UInt
    
    var sitzklassen: (UInt, UInt, UInt) {
        get {
            
            return (0, 0, 0)
        }
    }
     */
    
    

    // Aufgabe 3.3 Personen an Board -----------------------------------------------------
    
            var crewAndGuests: UInt {
                get {
                    return flugzeugPassagiere + crewAnzahl
                }
                set {
                    let newPassengers = newValue - crewAnzahl
                    
                    if newPassengers <= passengersMax {
                        flugzeugPassagiere = newPassengers
                        print("Aktuelle Passagieranzahl ist: \(flugzeugPassagiere)".tab())
                        
                    } else {
                        print("Passagieranzahl übersteigt maximale Kapazität".tab())
                    }
                }
            }
            
    
    // Aufgabe 3.1 Verfügbare Plätze -----------------------------------------------------
    
            var freiePlaetze: UInt {
                get {
                    return passengersMax - flugzeugPassagiere
                }
            }
    
    init(flugzeugModell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.flugzeugModell = flugzeugModell
        self.flugzeugPassagiere = flugzeugPassagiere
        self.passengersMax = passengersMax
        self.crewAnzahl = crewAnzahl
    }
    
    func beschreibung() {
        print("""
            ██ BESCHREIBUNG █ █ ████████████████ █ ████
        
        >>> ✈️ Flugzeug-Modell       = \(flugzeugModell)
            👨 Passagiere aktuell    = \(flugzeugPassagiere)
            👥 Boarding check        = \(crewAndGuests) final
            🛫 Aktuelles Gate        = \(flugzeugGate ?? "waiting...")
        
            🟢 Boarding completed
        """)
        
    } // EndOfFunc
    
} // EndOfClass


// Aufgabe 2.1 Mindest --------------------------------------------------------------------

class Propellerflugzeug: Flugzeug {
    var rotorBlaetter: UInt
    
    init(rotorBlaetter: UInt, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.rotorBlaetter = rotorBlaetter
        super.init(flugzeugModell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
            
            🟧 Propelleranzahl       = \(rotorBlaetter)

        """)
    }
} // endOfClass


class Jet: Flugzeug {
    let mach: Double
    
    init(mach: Double, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.mach = mach
        super.init(flugzeugModell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
        
            🟧 MACH                  = \(mach)

        """)
    }
} // endOfClass


class Passagierflugzeug: Flugzeug {
    let turbinen: UInt
    
    init(turbinen: UInt, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.turbinen = turbinen
        super.init(flugzeugModell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
        
            🟧 Turbinen              = \(turbinen)

        """)
    }
} // endOfClass



// Aufgabe 2.3 ---------Weiterführend----------------------------------------------------------

final class KunstfliegerExtra300: Propellerflugzeug {
    let speedMax: UInt
    let speedMin: UInt
    let kW: UInt
    
    init(speedMax: UInt, speedMin: UInt, kW: UInt, rotorBlaetter: UInt, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.speedMax = speedMax
        self.speedMin = speedMin
        self.kW = kW
        super.init(rotorBlaetter: rotorBlaetter, modell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
            🟦 Speed  MAX             = \(speedMax)
            🟦 Speed  MIN             = \(speedMin)
            🟦 Engine KW              = \(kW)

        """)
    }
    
    
}

final class Cessna172: Propellerflugzeug {
    let speedMax: UInt
    let speedMin: UInt
    let kW: UInt
    
    init(speedMax: UInt, speedMin: UInt, kW: UInt, rotorBlaetter: UInt, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.speedMax = speedMax
        self.speedMin = speedMin
        self.kW = kW
        super.init(rotorBlaetter: rotorBlaetter, modell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("Reiseflugzeug Cessna 172")
        
        print("""
            🟦 Speed  MAX             = \(speedMax)
            🟦 Speed  MIN             = \(speedMin)
            🟦 Engine KW              = \(kW)

        """)
    }
    
    
}

final class SenkrechtstarterJak38: Jet {
    
    let speedMax: UInt
    let spanweite: UInt
    let laenge: Double
    
    init(speedMax: UInt, spannweite: UInt, laenge: Double, mach: Double, modell: String, flugzeugPassagiere: UInt,passengersMax: UInt, crewAnzahl: UInt) {
        self.speedMax = speedMax
        self.spanweite = spannweite
        self.laenge = laenge
        super.init(mach: mach, modell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
            🟦 Speed  MAX             = \(speedMax)
            🟦 Spannweite             = \(spanweite)
            🟦 Länge                  = \(laenge)

        """)
    }
    
}

final class AirbusA320neo: Passagierflugzeug {
    
    let laenge: Double
    let spannweite: Double
    let hoehe: Double
 
    
    init(laenge: Double, spannweite: Double, hoehe: Double, turbinen: UInt, modell: String, flugzeugPassagiere: UInt, passengersMax: UInt, crewAnzahl: UInt) {
        self.laenge = laenge
        self.spannweite = spannweite
        self.hoehe = hoehe
        super.init(turbinen: turbinen, modell: modell, flugzeugPassagiere: flugzeugPassagiere, passengersMax: passengersMax, crewAnzahl: crewAnzahl)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
            🟦 Länge                  = \(laenge)
            🟦 Spannweite             = \(spannweite)
            🟦 Höhe                   = \(hoehe)

        """)
    }
    
}
