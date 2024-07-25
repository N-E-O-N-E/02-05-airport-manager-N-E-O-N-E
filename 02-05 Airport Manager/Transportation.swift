//
//  Transportation.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation

struct Taxi: Transportation {
    
    var passagierName: String
    var ankunftsZeit: String
    
    let taxinummer: Int
    let taxiname: String
    
    func anreise() {
        print("🚕 Anreise mit dem Taxi")
        print("Der Passagier \(passagierName) kommt um \(ankunftsZeit) mit dem \(taxiname) an.")
    }
    
    
}

struct Zug: Transportation {
    
    var passagierName: String
    var ankunftsZeit: String
    
    let zugnummer: Int
    let zugTyp: String
    
    func anreise() {
        print("🚃🚃🚃 Anreise mit dem Zug")
        print("Der Passagier \(passagierName) kommt um \(ankunftsZeit) mit dem \(zugTyp) an.")
    }
    
    
    
}
