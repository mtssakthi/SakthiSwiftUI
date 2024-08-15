//
//  CardView.swift
//  SakthiSwiftUI
//
//  Created by admin on 7/23/24.
//

import Foundation
import SwiftUI

struct CardView:View {
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    HStack{
                        Image("top")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 50, height: 100, alignment: .topLeading)
                        VStack(alignment: .leading, spacing: 3.0) {
                            Text("Resturant name")
                                .font(.system(size: 15, weight: .bold, design: .default))
                            Text("Cusine type")
                                .font(.system(size: 12, weight: .medium, design: .default))
                            Text("location")
                                .font(.system(size: 10, weight: .regular, design: .default))
                            Text("Reviews")
                                .font(.system(size: 8, weight: .regular, design: .default))
                            Text("no of visits")
                                .font(.system(size: 8, weight: .regular, design: .default))
                        }
                    }.background(Color(UIColor.lightGray))
        }).ignoresSafeArea()
        
    }
}
#Preview {
    CardView()
}
