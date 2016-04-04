//
//  RealmPokemon.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 4/2/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import RealmSwift

class RealmPokemon: Object {
    
    dynamic var id = 0
    dynamic var name = ""
    dynamic var spriteURL = ""
    dynamic var types: [String] = []
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
