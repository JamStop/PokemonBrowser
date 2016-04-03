//
//  RealmHelper.swift
//  Coffee?
//
//  Created by Jimmy Yue on 3/27/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import RealmSwift
import RxSwift

class RealmHelper {
    
    typealias JSON = [String:AnyObject]
    
    enum RealmError: ErrorType {
        case ErrorDownloadingImage(error: NSError)
        case ErrorParsingJSON(message: String)
        case UnexpectedError(message: String)
    }
    
    // MARK: - Properties
    let realm = try! Realm()
    let disposeBag = DisposeBag()
    
    // MARK: - Public helper function
    
    // MARK: - Private Conversions
    private func JSONPokemonToRealmPokemon(json: JSONPokemon) -> RealmPokemon {
        let newPokemon = RealmPokemon()
        
        guard let types = json.types else { fatalError("Failed to parse types") }
        
        newPokemon.id = json.id!
        newPokemon.name = json.name!
        newPokemon.spriteURL = json.spriteURL!
        for type in types {
            newPokemon.types.append(type.type!)
        }
        
        return newPokemon
    }
    
    private func JSONAbilityToRealmAbility(json: JSONAbility) -> RealmAbility {
        let newAbility = RealmAbility()
        
        guard let pokemon = json.pokemon else { fatalError("Failed to parse pokemon") }
        
        newAbility.id = json.id!
        newAbility.name = json.name!
        for pokemon in pokemon {
            newAbility.pokemon.append(pokemon.url!)
        }
        
        return newAbility
    }

}
