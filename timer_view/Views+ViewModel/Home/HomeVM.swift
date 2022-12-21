//
//  HomeVM.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import Foundation



import Foundation

class HomeVM :ObservableObject{
    
        
    @Published  var selectedDate =  "2023-01-12 10:10:10".toDate(.localDateTimeSec) ?? Date.now
    
    @Published  var changedDateComponents:DateComponents?
    
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

}

extension HomeVM {
    
    func calculateCountDown(){
        let now = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .hour, .minute, .second], from: now, to: selectedDate)
        changedDateComponents = components
    }
}

