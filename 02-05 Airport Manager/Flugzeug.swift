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
    
    func passagierAnzahl() {
        print("""
            ███ █ █ █████████████████████████ █ ███████
        >>> ✈️ Flugzeug: \(flugzeugModell.capitalized)
            👨 Passagiere: \(flugzeugPassagiere)
            🟢 Boarding completed
        
        """)
        
    } // EndOfFunc
    
} // EndOfClass


