//
//  Pokemon.swift
//  PokemonApp
//
//  Created by Kerem on 3.01.2020.
//  Copyright © 2020 Kerem. All rights reserved.
//

import Foundation
import UIKit

class Pokemon{
    var name :String
    var image :UIImage
    var attack : Int
    var defense : Int
    var speed : Int
    
    init(pokemonName:String,pokemonImage:UIImage,pokemonAttack:Int,pokemonDefense:Int,pokemonSpeed:Int){
        name = pokemonName
        image = pokemonImage
        attack = pokemonAttack
        defense = pokemonDefense
        speed = pokemonSpeed
    }
}
