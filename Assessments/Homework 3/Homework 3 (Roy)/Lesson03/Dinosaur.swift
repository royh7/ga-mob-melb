//
//  Dog.swift
//  Lesson03
//
//  Created by Roy Ho on 12/6/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation

class Dinosaur: Animal {
    
    override func prettyAnimalName() -> String {
        return "Dinosaur name: " + self.name
        
    }
}