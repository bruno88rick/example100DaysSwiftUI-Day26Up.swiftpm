//
//  List.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 22/01/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 5) {
                List {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                //or u can use forEach
                
                List {
                    ForEach(0..<5) {
                        Text("Dynamic Row nº \($0)")
                    }
                }
                
                //mix static and dynamic rows
                
                List {
                    Text("Static row 1")
                    Text("Static Row 2")
                    
                    ForEach(0..<5) {
                        Text("Dynamic row \($0)")
                    }
                    
                    Text("Static row 3")
                    Text("Static row 4")
                }
                
                //can use Sections like forms
                
                List {
                    Section("Section 1") {
                        Text("Static Row 1")
                        Text("Static Row 2")
                    }
                    
                    Section("Section 2") {
                        ForEach(0..<5) {
                            Text("Dynamic row \($0)")
                        }
                    }
                    
                    Section ("Section 3") {
                        Text("Static row 3")
                        Text("Static row 4")
                    }
                    
                }
                //We can Style the list using this
                .listStyle(.grouped)
                
                //all this Formos can do too, except this:
                
                //Generating dynamic rows inside the List
                Section("Dynamic inside a List:") {
                    List(0..<5) {
                        Text("Dynamic row inside the list \($0)")
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ListView()
}
