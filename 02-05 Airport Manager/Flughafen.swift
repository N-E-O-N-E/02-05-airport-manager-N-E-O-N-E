//
//  Flughafen.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 23.07.24.
//

import Foundation

// Zu Aufgabe 1.5 -------------------------------------------------------------------

var frankfurtGates: [String] = ["Gate 1","Gate 2","Gate 3","Gate 4","Gate 5"]

// Aufgabe 2.4 -------------------------------------------------------------------

class Flughafen {
    
    let flughafenName: String
    var flugzeuge: [Flugzeug]
    var gate: [String]
    
    init(flughafenName: String, flugzeuge: [Flugzeug], gate: [String]) {
        self.flughafenName = flughafenName
        self.flugzeuge = flugzeuge
        self.gate = gate
    }
    
    
    
    func flughafenBeschreibung() {
       
        print("Flughafenname: \(flughafenName)\n")
        print("Kontrollturm meldet Flieger am Boden:\n")
        
        for elemente in flugzeuge {
            print("\t\(elemente.flugzeugModell)")
        }
    }
    
    func flugzeugLandet(flugzeug: Flugzeug) {
        flugzeuge.append(flugzeug)
        print("Das Flugzeug (\(flugzeug.flugzeugModell)) ist in \(flughafenName) gelandet!")
    }
    
    func flugzeugStartet(flugzeug: Flugzeug) {
        for (index, flieger) in flugzeuge.enumerated() {
            if flieger === flugzeug {
                flugzeuge.remove(at: index)
                print("Das Flugzeug (\(flieger.flugzeugModell)) ist in \(flughafenName) gestartet!")
            }
        }
    }
    
} // endOfFunc Flughafen

class InternationalerFlughafen: Flughafen {
    var laenderZiele: [String]
    
    init(laenderZiele: [String], flughafenName: String, flugzeuge: [Flugzeug] ) {
        self.laenderZiele = laenderZiele
        super.init(flughafenName: flughafenName, flugzeuge: flugzeuge, gate: [])
    }
    
    func internationalerFlughafenBeschreibung() {
       
        super.flughafenBeschreibung()
        print("\nLänderziele des Flughafens: \n")
        
        for elemente in laenderZiele {
            print("\t-\(elemente)")
        }
    }
    
    func landHinzufuegen(land: String) {
        laenderZiele.append(land)
        print("Das Land (\(land)) wurde der Länderliste hinzugefügt!")
    }
    
    func landEntfernen(land: String) {
        for (index, laender) in laenderZiele.enumerated() {
            if laender == land {
                laenderZiele.remove(at: index)
                print("Das Land (\(land)) wurde aus der Länderliste entfernt!")
            }
        }
    }
    
} // endOfFunc

class InlandsFlughafen: Flughafen {
    var staedteZiele: [String]
    
    init(staedteZiele: [String], flughafenName: String, flugzeuge: [Flugzeug] ) {
        self.staedteZiele = staedteZiele
        super.init(flughafenName: flughafenName, flugzeuge: flugzeuge, gate: [])
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
        staedteZiele.append(stadt)
        print("Die Stadt (\(stadt)) wurde der Städteliste hinzugefügt!")
    }
    
    func stadtEntfernen(stadt: String) {
        for (index, staedte) in staedteZiele.enumerated() {
            if staedte == stadt {
                staedteZiele.remove(at: index)
                print("Die Stadt (\(stadt)) wurde aus der Städteliste entfernt!")
            }
        }
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


