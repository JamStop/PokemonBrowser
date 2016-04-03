//
//  JSONType.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 3/31/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//


import Foundation
import Gloss

struct JSONType: Decodable {
    
    // MARK: Properties
    
    let type: String?
    
    init?(json: JSON) {
        self.type = "type.name" <~~ json
    }
}
