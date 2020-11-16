//
//  WeatherView.swift
//  MyWeather
//
//  Created by Zach Eriksen on 11/16/20.
//

import SwiftUI

struct WeatherView: View {
    let weather: Weather
    let city: String
    
    var body: some View {
        Text("Weather for \(city) is \(weather.temp)")
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: Weather(temp: 500,
                                     pressure: 400,
                                     humidity: 300,
                                     temp_min: 200,
                                     temp_max: 600),
                    city: "Hades")
    }
}
