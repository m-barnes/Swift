//
//  Meal.swift
//  FoodTrackerProject
//
//  Created by Michael Barnes on 2/10/21.
//  Copyright © 2021 Michael Barnes All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int){
        //The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        //The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        //Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
