//
//  RealmAbility.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 4/2/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import RealmSwift

class RealmAbility: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var pokemon: [String] = []
}
