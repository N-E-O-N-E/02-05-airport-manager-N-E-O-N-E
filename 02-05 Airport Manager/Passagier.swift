//
//  Passagier.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 22.07.24.
//

import Foundation

// Aufgabe 1.5. Weiterführend ------------------------------------------------------

struct Passagier {
    
    let passagiername: String
    var flugzeug: Flugzeug
    var gate: String? = nil
    
    init(passagiername: String, flugzeug: Flugzeug) {
        self.passagiername = passagiername
        self.flugzeug = flugzeug
    }
    
    func printBoardingpass() {
        
        print("""
    
        ##############################
        🅱️ BOARDINGPASS
        ##############################
        👨 Fluggast: \(passagiername)
        ✈️ Modell:   \(flugzeug.flugzeugModell)
        🛫 Gate:     \(flugzeug.flugzeugGate) Entpacken offen!
    
    """)
        
        
    } // EndOfFunc
    
} // EndOfStruct
