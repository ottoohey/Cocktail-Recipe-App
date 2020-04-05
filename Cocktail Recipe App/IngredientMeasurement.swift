//
//  IngredientMeasurement.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class IngredientMeasurement: NSObject {
    
    var name: String
    var quantity: String
    
    init(name: String, quantity: String) {
        self.name = name
        self.quantity = quantity
    }

}
