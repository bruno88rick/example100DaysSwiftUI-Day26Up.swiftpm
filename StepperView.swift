import SwiftUI

struct StepperView: View {
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        }
        .padding()
    }
}
