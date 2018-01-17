//: Playground - noun: a place where people can play

import UIKit

// January 16, 2018
// Make a method that prints every number divisible by X, between 0 and Y.
func divisibleBy(_ num1: Int, betweenZeroAnd num2: Int) {
    
    if num1 > num2 {
        return
    }
    
    for number in num1...num2 {
        if number % num1 == 0 {
            print(number)
        }
    }
}
//test
//divisibleBy(3, betweenZeroAnd: 12)

// Make a method that prints every prime number between 0 and Y.
func primeNumbers(betweenZeroAnd num: Int) {
    
    if num <= 2 {
        return
    }
    
    for number in 3...num {
        
        var isPrime = true
        
        for num in 2...number-1 {
            if number % num == 0 {
                isPrime = false
            }
        }
        
        if isPrime {
            print(number)
        }
    }
}
//test
//primeNumbers(betweenZeroAnd: 130)

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
//print(me.favoriteColor!)
//print(me.favoriteMovie)
me.printFavorites()
