//
//  Gedicht.swift
//  Zitate
//
//  Created by Eliane Egeli on 06.02.21.
//

import Foundation

class Zitat: Identifiable, Decodable {
    var id: UUID?
    var bild = ""
    var titel = ""
    var gedicht: [String]
    var author = ""
    var information: [String]
}
