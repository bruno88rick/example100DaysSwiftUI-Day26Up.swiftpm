//
//  WorkingWithStrings.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 22/01/24.
//

import Foundation
import UIKit

func WorkingWithStrings () {
    
    //using the components(separatedBy:) to convert a single string into an array of strings, by breaking it up wherever another strung is found. For example, spaces:
    
    let input = "a b c"
    let letters = input.components(separatedBy: " ")
    
    // separate by "\n" line brakes
    
    let anotherInput = """
    a
    b
    c
    """
    
    let anotherLetters = anotherInput.components(separatedBy: "\n")
    
    // we can usse anottherLetters[1] for example to pick up a string, but we can use the randomElement() method to pick a random element from the array like this:
    
    let letter = letters.randomElement()
    
    // it wll return an optional, becouse swift doesn´t now that the string will be there in the array, so we can use letter unwraping with optional chaining. So let me use trimmingCaracters(in:) method to remove certain kinds of characters from the start and end of a string. This use a new type called CharacterSet, but most of the time we want one particular behavior: removing whitespaces and new lines - this refers to spaces, tabs, and line breaks, all at once. This behavior is common that is built right into the CharacterSet struct, so we can ask swift to trim all whitespaces at the start and end of a string like this:
    
    let unwrappedLetter = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    
    // checking for mispelled words:
    
    //This functionalty comes from UIKit. We get this part of UIKit by SwiftWUI automatically, with four steps:
    
    //1-Create a word to check an instance of UITextChecker:
    
    let word = "Swift"
    let checker = UITextChecker()
    
    // 2- we need to teel te checker how much of our string we want to check. Objective C dont treat strings like Swift has (emoji and etc). So, we need to ask Swift to create an Object using the entire length o all our characters, like this:
    
    let range = NSRange(location: 0, length: word.utf16.count)
    
    //UTF-16 is whats called a character encoding - a way of storing letters in a string. We use it here so that objective C can undestand how Swift strings are stored.
    
    //3- Passing the range to check, position to start within the range (so we can do tjings like "find next"), whether it should wrap around once it reaches the en, and what language to use for dictionary we can ask checker to report where any misspelling in our word
    
    let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
    
    // Thats sends back another Objective-C string range, telling us where the misspelling word was gound. Objecttive-C does not have the optional concept, so instead relied on special values to represent missing data.In this instance, if the Objective-C ragne comes back empty (if there was no spelling mistake) than we get back the special value NSNotFound. So we could ckeck our splling result to see whether there was a mistake or not like this:
    
    let allGood = misspelledRange.location == NSNotFound
    
}
