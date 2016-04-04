//
//  JSONPokemon.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 3/31/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import Gloss

struct JSONPokemon: Decodable {
    
    // MARK: Properties
    
    let id: Int?
    let name: String?
    let spriteURL: String?
    let types: [JSONType]?
    
    init?(json: JSON) {
        self.id = "id" <~~ json
        self.name = "name" <~~ json
        self.spriteURL = "sprites.front_default" <~~ json
        self.types = [JSONType].fromJSONArray(("types" <~~ json)!)
    }

}
