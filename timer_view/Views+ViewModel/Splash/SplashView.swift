//
//  SplashView.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        ZStack {
            colorBackground
            
            VStack{
                
            GeometryReader { geometry in
                    
                    ScrollView(.vertical , showsIndicators: false) {
                        VStack(alignment: .center, spacing: 20) {
                            
                            Image("splash_image")
                                .resizable()
                                .frame(width: 200,height: 180)
                               
                            
                             Text("Countdown App")
                                .font(SFProTextSemibold(size: 20))
                            Text("let's choose a date and time")
                                .font(SFProTextRegular(size: 14))
                            
                        }//:VStack
                        .frame(minHeight: geometry.size.height)
                    }//:ScrollView
                    .frame(width: geometry.size.width)
                }//:GeometryReader
            }//:VStack
            
            
            
        }//:ZStack
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
