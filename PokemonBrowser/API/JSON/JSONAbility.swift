//
//  JSONAbility.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 3/31/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import Gloss

struct JSONAbility: Decodable {
    
    // MARK: Properties
    
    let id: Int?
    let name: String?
    let pokemon: [JSONPokemonReference]?
    
    init?(json: JSON) {
        self.id = "id" <~~ json
        self.name = "name" <~~ json
        self.pokemon = [JSONPokemonReference].fromJSONArray(("pokemon" <~~ json)!)
    }
}

