//
//  Extensions.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 24.07.24.
//

import Foundation


//  Aufgabe 3.2  -------------------------------------------------


extension Flugzeug {
    
    func abflugbereit() {
        print("✈️ <<< \(flugzeugModell) >>> ist abflugbereit!".tab())
        
    }
}


// Aufgabe 3.5 ----------------------------------------------------


extension String {
    
    func tab() -> String {
        return "   " + self
    }
    
}






