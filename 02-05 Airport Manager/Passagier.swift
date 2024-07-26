//
//  Passagier.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 22.07.24.
//

import Foundation

// Aufgabe 1.5. Weiterführend ------------------------------------------------------

struct Passagier {
    
    var ticketNr: Int = 0
    let passagiername: String
    var flugzeug: Flugzeug? = nil
    
    init(ticketNr: Int, passagiername: String, flugzeug: Flugzeug) {
        self.ticketNr = ticketNr
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
            Modell:     \(flugzeug!.flugzeugModell)
            Gate:       \(flugzeug!.flugzeugGate ?? "waiting...")
    
    """)
        
    
        
    } // EndOfFunc

} // EndOfStruct


// Aufgabe 4.2. ----------------------------------------------------------
func Passagieranreise(Transpormittel: Transportation) {
    Transpormittel.anreise()
}

func eingabePassagierAnkunft() {

    print("\nBitte gib den letzten Passagier von Hand ein: \n")

    print("Gib den Vor- und Nachnamen ein: ")
    let inputName: String = readLine()!
    
    if inputName.isEmpty {
        print("<<< Bitte geben sie einen gültigen Namen ein! >>>")
        eingabePassagierAnkunft()
    }
    
    print("Gib die Ankunftszeit (11:00) ein: ")
    let inputAnkunftszeit: String = readLine()!
    
    if inputAnkunftszeit.isEmpty {
        print("<<< Bitte geben sie einen gültige Uhrzeit z.B. (11:00) ein! >>>")
        eingabePassagierAnkunft()
    }
    
    // Könnte man hier auch schicker machen aber
    // es bleibt keine Zeit um in Details zu versinken :-)
   
    
    anreisende.append(Taxi(passagierName: inputName, ankunftsZeit: inputAnkunftszeit, taxinummer: Int.random(in: 20...90), taxiname: String(idChar.randomElement()!) + String(Int.random(in: 500...9999))))
    
    Thread.sleep(forTimeInterval: 1)
    
}
