//
//  JSONPokemonReference.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 3/31/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import Gloss

struct JSONPokemonReference: Decodable {
    
    // MARK: Properties
    
    let name: String? // NOTE: - FourSquare's formatted phone number, in standard formatted
    let url: String?
    
    init?(json: JSON) {
        self.name = "pokemon.name" <~~ json
        self.url = "pokemon.url" <~~ json
    }
}
