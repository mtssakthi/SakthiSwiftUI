//
//  ContentView.swift
//  SakthiSwiftUI
//
//  Created by admin on 7/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
           // BackgroundView(topColor: isNight ? .red : .black, bottomColor: isNight ? .yellow : .white)
            BackgroundView(isNight: $isNight)
            VStack(spacing: 10){
                CityTextView(cityName: "Dharmapuri,TN")
                WeatherView(imageName: isNight ? "cloud.sun.fill" : "moon.stars.fill", tempeature: 74)
                MainWeatherStatusView(imageName: "cloud.sun.fill", tempeature: 46)
                Spacer()
                Button {
                    print("button clicked")
                    isNight.toggle()
                }label:{
                    WeatherButtonTextView(buttonName: "Change Day time", buttonColor: isNight ? .white : . yellow, textColor: isNight ? .black : .black
                    )
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var tempreature:Int
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .regular,design: .default))
                .bold()
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width:40, height:40)
            Text(("\(tempreature)°"))
                .font(.system(size: 16,weight: .regular, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    // standard passing format
//    var topColor:Color
//    var bottomColor:Color
    
    // Binding format
    @Binding var isNight:Bool
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]) , startPoint: .topLeading, endPoint: .bottomTrailing)
//            .edgesIgnoringSafeArea(.all)
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .orange : .white,isNight ? .red : .black]) , startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
//        ContainerRelativeShape().fill(isNight ? Color.red.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .black,design: .default))
            .bold()
            .foregroundStyle(.white)
            .padding(.top)
    }
}

struct WeatherView: View {
    var imageName:String
    var tempeature:Int
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width:180, height:180)
            //    Option+shift+8 for degree symbol
            Text("\(tempeature)°")
                .font(.system(size: 32,weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
        .padding(.bottom,40)
    }
}

struct MainWeatherStatusView: View {
    var imageName:String
    var tempeature:Int
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            WeatherDayView(dayOfWeek: "MON", imageName: imageName, tempreature: tempeature )
            WeatherDayView(dayOfWeek: "TUE", imageName: "sunset.fill", tempreature: 46)
            WeatherDayView(dayOfWeek: "WED", imageName: "cloud.moon.fill", tempreature: 26)
            WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", tempreature: 39)
            WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", tempreature: 49)
            WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.rain.fill", tempreature: 39)
            WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.sun.fill", tempreature: 49)
        }
    }
}
