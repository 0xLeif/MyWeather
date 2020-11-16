//
//  File.swift
//  MyWeather
//
//  Created by William Lopez on 11/14/20.
//

import Foundation
import Combine

struct ApiClient {
    static let path: String = "http://api.openweathermap.org/data/2.5/weather"
}

struct WeatherServices {
    func weather(_ url: URL) -> AnyPublisher<WeatherResponse,Error> {
        URLRequest(url: url).make()
    }
}
