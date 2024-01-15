//
//  WorkingWithDates.swift
//  example100DaysSwiftUI-Day26Up
//
//  Created by Bruno Oliveira on 15/01/24.
//

import SwiftUI

struct WorkingWithDates: View {
    
    var body: some View {
        
        // formating dates and times
        
        //USING "FORMAT:" METHOD
        
        //Hour:Minutes
        Text(Date.now, format: .dateTime.hour().minute())
        
        //Day Month Year
        Text(Date.now, format: .dateTime.day().month().year())
        
        //Day Month, Year and time
        Text(Date.now, format: .dateTime.day().month().year().hour().minute())
        
        //USING "FORMATTED:" METHOD
        
        Text(Date.now.formatted(date: .long, time: .shortened))
        
    }
    
    func dateExamples () {
        // store the actual date and time on a constant
        let now = Date.now
        //stores tomorrow date on a constante, adding a 86400 secs (1 day in sec) to a now date
        let tomorrow = Date.now.addingTimeInterval(86400)
        //create a range a this two dates
        let range = now...tomorrow
        
        // using DateComponents to represent a 8pm today: Swift gives us Date for working with dates, and that encapsulates the year, month, date, hour, minute, second, timezone, and more. However, we don’t want to think about most of that – we want to say “give me an 8am wake up time, regardless of what day it is today.
        
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? .now
        //date(from:) return an optional date, so using nill coalesing to unwrapp the optinals (if that fails, just give me back the current date)
        
        //pulling out just the hour and minutes from components
        
        let components1 = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components1.hour ?? 0
        let minute = components1.minute ?? 0
        
    }
}

#Preview {
    WorkingWithDates()
}
