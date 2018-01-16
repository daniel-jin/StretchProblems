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
}

let me = Person(name: "Dan")
me.favoriteColor = "black"
print(me.favoriteColor!)
print(me.favoriteMovie)
