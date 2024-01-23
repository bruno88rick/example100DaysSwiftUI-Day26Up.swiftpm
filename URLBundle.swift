//
//  URLBundle.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 22/01/24.
//

import Foundation


// fuction that read the URL fora file in our main aoo bundle, using Bundle.main.url(). If the file exists it will be sent back to us, otherwise we´ll get back nil, so this is annn optional URL. That needs to be unwraped:

func findAFile () {
    if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
        //once we have the URL File, we can load it into a String using a special initializer: String(contentsOf:), like this:
        
        //We give this fike URL, and it will send back a string containing the contents of that file if it can be loaded. if it can´t be loaded, it throws an error, so you need to call this using try or try? like this:
        
        print("We have found the file on \(fileURL)")
        
        if let fileContents = try? String(contentsOf: fileURL) {
            print(fileContents)
        }
    }
}
