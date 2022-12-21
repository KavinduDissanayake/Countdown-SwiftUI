//
//  TextNumber.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import SwiftUI

struct TextNumber: View {
    var titleText:String
    var valueText:String
    var body: some View {
        VStack {
            Text(valueText)
                .fontWeight(.semibold)
                .font(SFProTextSemibold(size: 18))
    
                        .foregroundColor(whiteColor)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(greenColor, lineWidth:0.5)
                    )
            
            Text(titleText)
                .font(SFProTextRegular(size: 12))
                .foregroundColor(whiteColor)
        }
    }
}

struct TextNumber_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackground
            TextNumber(titleText: "Day", valueText: "1")
                .previewLayout(.sizeThatFits)
        }
    }
}
