//
//  Cocktail.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class Cocktail: NSObject {
    
    var name: String
    var instructions: String
    var ingredients: IngredientMeasurement
    
    init(name: String, instructions: String, ingredients: IngredientMeasurement) {
        self.name = name
        self.instructions = instructions
        self.ingredients = ingredients
    }

}
