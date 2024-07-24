//
//  Flughafen.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 23.07.24.
//

import Foundation


// Zu Aufgabe 1.5 ----------------------------------------------------------------------

var frankfurtGates: [String] = ["Gate 1","Gate 2","Gate 3","Gate 4","Gate 5"]

// Aufgabe 2.4 ------------------------------------------------------------------------

class Flughafen {
    
    let flughafenName: String
    var flugzeuge: [Flugzeug]
    
    init(flughafenName: String, flugzeuge: [Flugzeug]) {
        self.flughafenName = flughafenName
        self.flugzeuge = flugzeuge
    }
    
    func flughafenBeschreibung() {
       
        print("Flughafenname: \(flughafenName)")
        
        for elemente in flugzeuge {
            print("Tower sichtet: \(elemente.flugzeugModell)")
        }
    }
    
    func flugzeugLandet(flugzeug: Flugzeug) {
        flugzeuge.append(flugzeug)
    }
    
    func flugzeugStartet(flugzeug: Flugzeug) {
        
        for (index, flieger) in flugzeuge.enumerated() {
            if flieger === flugzeug {

                flugzeuge.remove(at: index)
        }
        
        
       
    }
    
} // endOfFunc Flughafen

class InternationalerFlughafen: Flughafen {
    let laenderZiele: [String]
    
    init(laenderZiele: [String], flughafenName: String, flugzeuge: [Flugzeug] ) {
        self.laenderZiele = laenderZiele
        super.init(flughafenName: flughafenName, flugzeuge: flugzeuge)
    }
    
    func internationalerFlughafenBeschreibung() {
        print("---------------------------------")
        super.flughafenBeschreibung()
        print("Int. Länderziele: ")
        
        for elemente in laenderZiele {
            print("-\(elemente)")
        }
    }
    
    func landHinzufuegen(land: String) {
        
    }
    
    func landEntfernen(land: String) {
        
    }
    
} // endOfFunc

class InlandsFlughafen: Flughafen {
    let staedteZiele: [String]
    
    init(staedteZiele: [String], flughafenName: String, flugzeuge: [Flugzeug] ) {
        self.staedteZiele = staedteZiele
        super.init(flughafenName: flughafenName, flugzeuge: flugzeuge)
    }
    
    func inlandsFlughafenBeschreibung() {
        print("---------------------------------")
        super.flughafenBeschreibung()
        print("Städteziele:")
        
        for elemente in staedteZiele {
            print("-\(elemente)")
        }
    }
    
    func stadtHinzufuegen(stadt: String) {
        
    }
    
    func stadtEntfernen(stadt: String) {
        
    }
    
} // endOfFunc

class PrivatFlughafen: InlandsFlughafen {
    
    let verein: [String]
    
    init(verein: [String], staedteZiele: [String], flughafenName: String, flugzeuge: [Flugzeug]) {
        self.verein = verein
        super.init(staedteZiele: staedteZiele, flughafenName: flughafenName, flugzeuge: flugzeuge)
    }
    
    func privatFlughafenBeschreibung() {
        print("---------------------------------")
        super.flughafenBeschreibung()
        print("Vereine:")
        
        for elemente in verein {
            print("-\(elemente)")
        }
    }
    
} // endOfFunc

