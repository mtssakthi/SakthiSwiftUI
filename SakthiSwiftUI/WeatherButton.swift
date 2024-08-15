//
//  WeatherButton.swift
//  SakthiSwiftUI
//
//  Created by admin on 7/23/24.
//

import Foundation
import SwiftUI

struct WeatherButtonTextView: View {
    var buttonName:String
    var buttonColor:Color
    var textColor:Color
    var body: some View {
        Text(buttonName)
            .frame(width: 300, height: 50, alignment: .center)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
            .foregroundColor(textColor)
            .background(buttonColor.gradient)
            .font(.system(size: 21, weight: .bold, design: .default))
            .clipShape(.buttonBorder)
    }
}

#Preview {
    WeatherButtonTextView(buttonName: "sakthi", buttonColor: .orange, textColor: .white)
}
