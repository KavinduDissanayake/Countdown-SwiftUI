//
//  ContentView.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI
import FSCalendar



struct ContentView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        
        Group {
            if self.isActive {
                
                HomeView()
            } else {
                
                SplashView()
            }
        }//:Group
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
