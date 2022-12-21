//
//  TimePicker.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI

struct TimePicker: View {

    @Binding var dateSelected: Date
    
    var body: some View {
        DatePicker("Please enter a time", selection: $dateSelected, displayedComponents: .hourAndMinute)
            .foregroundColor(whiteColor)
            .accentColor(greenColor)
            .padding(.all,16)
    }
}

struct TimePicker_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker(dateSelected: .constant(Date.now))
            .previewLayout(.sizeThatFits)
    }
}
