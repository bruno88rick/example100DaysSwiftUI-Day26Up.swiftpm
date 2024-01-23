//
//  ListViewWithArrays.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 22/01/24.
//

import SwiftUI

struct ListViewWithArrays: View {
    
    let people = ["Finn", "Leia", "Like", "Rey"]
    
    var body: some View {
        List(people, id: \.self ){
            Text($0)
        }
        
        //using ForEach
        
        List {
            Text("Static Row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Last Static Row")
        }
    }
}

#Preview {
    ListViewWithArrays()
}
