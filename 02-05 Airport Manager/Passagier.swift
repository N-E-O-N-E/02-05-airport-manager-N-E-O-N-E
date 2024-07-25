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
    
    init(passagiername: String, flugzeug: Flugzeug) {
        self.passagiername = passagiername
        self.flugzeug = flugzeug
    }
    
    func printBoardingpass() {
        
        print("""
        
        ████████ ██  ██████ ██   ██ ███████ ████████
           ██    ██ ██      ██  ██  ██         ██
           ██    ██ ██      █████   █████      ██
           ██    ██ ██      ██  ██  ██         ██
           ██    ██  ██████ ██   ██ ███████    ██
    
        ███ █ █ █ █ ███████████████████████████████
    
            Fluggast:   \(passagiername)
            Modell:     \(flugzeug.flugzeugModell)
            Gate:       \(flugzeug.flugzeugGate ?? "waiting...")
    
    """)
        
    
        
    } // EndOfFunc

} // EndOfStruct


// Aufgabe 4.2. ----------------------------------------------------------
func Passagieranreise(Transpormittel: Transportation) {
    Transpormittel.anreise()
}
