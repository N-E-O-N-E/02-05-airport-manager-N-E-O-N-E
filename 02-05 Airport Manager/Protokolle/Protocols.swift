//
//  Flug.swift
//  02-05 Airport Manager
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation



// Aufgabe 4.1 ------------------------------------------------------------------

protocol StartenUndLanden {
    
    var isFlying: Bool { get }
    func abheben()
    func landen()

}

protocol Transportation {
    
    var passagierName: String { get }
    var ankunftsZeit: String { get }
    func anreise()
   
    
}

