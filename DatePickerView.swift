//
//  DatePickerView.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 15/01/24.
//

import SwiftUI

struct DatePickerView: View {
    
    //type Date to work with dates in SwiftUI
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            //Simple date management witch a label, date and Hours
            DatePicker("Please enter a date", selection: $wakeUp)
        
            //to Hidde label, but worth to screen readers
            DatePicker("", selection: $wakeUp)
            
            //Better Way to hide
            DatePicker("Please enter a date", selection: $wakeUp)
                .labelsHidden()
            
            //Use of DisplayedComponents to decide what kind of options users should see. This case, show only Hours and Minutes
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            
            //we can provide a data range to date picker, using a functions to create it with needed
            //but we have a better way, using a one-sided ranges, like this to set just futures dates
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
                .labelsHidden()
            //the range "in: Date.now..." let us choose from now to future dates with the blank second value ragne "XXX...blank"
 
        }
        .padding()
    }
    
    //the function o date range
    func exempleDates() {
       
        //creating a tomorrow var that get the "now" date and add an interval of 86400 seconds, that is a day in seconds
        let tomorrow = Date.now.addingTimeInterval(86400)
        
        //creating a range from those two
        let range = Date.now...tomorrow
        
    }
    
}

#Preview {
    DatePickerView()
}
