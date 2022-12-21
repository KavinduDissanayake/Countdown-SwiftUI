//
//  HeaderView.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI

struct HeaderView: View {
    var title:String
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(whiteColor)
        }//;HStack
        .padding(.top,39)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Countdown App" )
    }
}
