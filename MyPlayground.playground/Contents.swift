//: Playground - noun: a place where people can play

import UIKit


// January 15, 2018 -- Handling Optionals
class Person {
    var name: String
    var favoriteColor: String?
    var favoriteMovie: String?
    
    init(name: String) {
        self.name = name
    }
    
    func printFavorites() -> String {
        
        var output = "\(name)"
        
        if let favoriteColor = favoriteColor {
            output += "'s favorite color is \(favoriteColor)"
        }
        
        if let favoriteMovie = favoriteMovie {
            output += " and his favorite movie is \(favoriteMovie)"
        }
        
        output += "."
        
        return output
    }
}

let me = Person(name: "Dan")
me.favoriteColor = "black"
me.favoriteMovie = "The Florida Project"
print(me.favoriteColor!)
print(me.favoriteMovie)
me.printFavorites()
