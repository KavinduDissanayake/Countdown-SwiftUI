//
//  FontConstant.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//

import Foundation



import SwiftUI

//MARK: - Font

//SFProTextSemibold
func SFProTextSemibold(size :CGFloat) -> Font{
    let font:Font = Font.custom("SFProText-Semibold", size: size)
    return font
}


//SFProText-Regula
func SFProTextRegular(size :CGFloat) -> Font{
    let font:Font = Font.custom("SFProText-Regular", size: size)
    return font
}
