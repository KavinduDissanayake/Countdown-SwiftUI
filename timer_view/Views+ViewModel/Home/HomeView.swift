//
//  HomeView.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI

struct HomeView: View {
    
    
    //MARK: -VIEW MODEL
      @StateObject var vm = HomeVM()
    
    
    var body: some View {
        ZStack {
                   colorBackground
                   
                   VStack{
                      
                       HeaderView(title: "Countdown App" )
                       
                       GeometryReader { geometry in
                           
                           ScrollView(.vertical , showsIndicators: false) {
                               VStack(alignment: .center, spacing: 20) {
                                 
                                   CustomCalendarCard(){date in
                                       vm.selectedDate = date ?? Date.now
                                   }//CustomCalendarCard
                                   
                                   
                                   TimePicker(dateSelected:$vm.selectedDate)

                                   Spacer()

                                   
                                   HStack {
                                       
                                       TextNumber(titleText: "Day", valueText:"\(vm.changedDateComponents?.day ?? 0)")
                                       
                                       TextNumber(titleText: "Hour", valueText: "\(vm.changedDateComponents?.hour ?? 0)")
                                       
                                       TextNumber(titleText: "Minuts", valueText:"\(vm.changedDateComponents?.minute ?? 0)")
                                       
                                       TextNumber(titleText: "Seconds", valueText:"\(vm.changedDateComponents?.second ?? 0)")
                                       
                                       
                                    }//;HStack
                                   .padding(.bottom,30)
                                   
                                   
                               }//:VStack
                               .frame(minHeight: geometry.size.height)
                           }//:ScrollView
                           .frame(width: geometry.size.width)
                       }//:GeometryReader
                   }//:VStack
                
                   .onReceive(vm.timer){ newValue in
                       vm.calculateCountDown()
                   }
                   
               }//:ZStack
               .navigationBarHidden(true)
               .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
