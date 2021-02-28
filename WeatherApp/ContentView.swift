//
//  ContentView.swift
//  WeatherApp
//
//  Created by Sofia Rodriguez Morales on 26/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [.blue, Color("lightBlue")]
                ), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Cupertinco, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 40) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("60C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack {
                    DayWeatherView(
                        dayOfWeek:"TUE",
                        weatherIcon: "cloud.sun.fill",
                        tempeture: 21
                    )
                    DayWeatherView(
                        dayOfWeek:"WED",
                        weatherIcon: "cloud.sun.rain.fill",
                        tempeture: 24
                    )
                    DayWeatherView(
                        dayOfWeek:"THU",
                        weatherIcon: "smoke.fill",
                        tempeture: 18
                    )
                    DayWeatherView(
                        dayOfWeek:"FRI",
                        weatherIcon: "wind",
                        tempeture: 21
                    )
                    DayWeatherView(
                        dayOfWeek:"SAT",
                        weatherIcon: "cloud.bolt.rain.fill",
                        tempeture: 17
                    )
                    DayWeatherView(
                        dayOfWeek:"SUN",
                        weatherIcon: "sun.max.fill",
                        tempeture: 26
                    )
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Change Day time")
                        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(8.0)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DayWeatherView: View {
    var dayOfWeek: String
    var weatherIcon: String
    var tempeture: Int
    var body: some View {
        VStack(spacing: 0) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(tempeture) C")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
