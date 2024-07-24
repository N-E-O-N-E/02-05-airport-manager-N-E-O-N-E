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
    var flugzeugPassagiere: UInt = 0
    var flugzeugGate: String? = nil
    
    init(flugzeugModell: String) {
        self.flugzeugModell = flugzeugModell
    }
    
    func beschreibung() {
        print("""
            ██ BESCHREIBUNG █ █ ████████████████ █ ████
        
        >>> ✈️ Flugzeug-Modell       = \(flugzeugModell)
            👨 Passagiere aktuell    = \(flugzeugPassagiere)
            🛫 Aktuelles Gate        = \(flugzeugGate ?? "waiting...")
            🟢 Boarding completed
        """)
        
    } // EndOfFunc
    
} // EndOfClass


// Aufgabe 2.1 Mindest --------------------------------------------------------------------

class Propellerflugzeug: Flugzeug {
    var rotorBlaetter: UInt
    
    init(rotorBlaetter: UInt, modell: String) {
        self.rotorBlaetter = rotorBlaetter
        super.init(flugzeugModell: modell)
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
    
    init(mach: Double, modell: String) {
        self.mach = mach
        super.init(flugzeugModell: modell)
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
    
    init(turbinen: UInt, modell: String) {
        self.turbinen = turbinen
        super.init(flugzeugModell: modell)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
        
            🟧 Turbinen              = \(turbinen)

        """)
    }
} // endOfClass



// Aufgabe 2.3 ---------Weiterführend----------------------------------------------------------

class KunstfliegerExtra300: Propellerflugzeug {
    let speedMax: UInt = 407
    let speedMin: UInt = 118
    let kW: UInt = 224
    
    override init(rotorBlaetter: UInt, modell: String) {
        super.init(rotorBlaetter: rotorBlaetter, modell: modell)
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

class SenkrechtstarterJak38: Jet {
    
    let speedMax: UInt = 1150
    let spanweite: UInt = 7000
    let laenge: Double = 16.37
    
    override init(mach: Double, modell: String) {
        super.init(mach: mach, modell: modell)
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
    let passagiereMax: UInt
    
    init(laenge: Double, spannweite: Double, hoehe: Double, passagiereMax: UInt, turbinen: UInt, modell: String) {
        self.laenge = laenge
        self.spannweite = spannweite
        self.hoehe = hoehe
        self.passagiereMax = passagiereMax
        super.init(turbinen: turbinen, modell: modell)
    }
    
    override func beschreibung() {
        super.beschreibung()
        
        print("""
            🟦 Länge                  = \(laenge)
            🟦 Spannweite             = \(spannweite)
            🟦 Höhe                   = \(hoehe)
            🟦 Passagiere Max.        = \(passagiereMax)

        """)
    }
    
}
