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
        
        print("""
                Der Passagier \(passagierName) kommt um \(ankunftsZeit) mit dem Taxi 🚕 Nr. \(taxiname) an.
                """)
    }
}

struct Zug: Transportation {
    
    var passagierName: String
    var ankunftsZeit: String
    
    let zugnummer: Int
    let zugTyp: String
    
    func anreise() {
        
        print("""
              Der Passagier \(passagierName) kommt um \(ankunftsZeit) mit dem Zug 🚃 Nr. \(zugTyp) an.
              """)
    }
}

struct Uber: Transportation {
    
    var passagierName: String
    var ankunftsZeit: String
    
    let ubernummer: Int
    
    func anreise() {
        
        print("""
                Der Passagier \(passagierName) kommt um \(ankunftsZeit) mit UBER-Service 🚙 an.
                """)
    }
}

