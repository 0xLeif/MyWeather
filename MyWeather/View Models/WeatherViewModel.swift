//
//  WeatherViewModel.swift
//  MyWeather
//
//  Created by William Lopez on 11/14/20.
//

import Foundation
import Combine

enum LoadingState {
    case none
    case success
    case loading
    case failed
}

class WeatherViewModel: ObservableObject {
    deinit {
        task?.cancel()
    }
    
    private var task: AnyCancellable?
    let weatherProvider = WeatherServices()

    @Published var weather: Weather?
    @Published var loadingState: LoadingState = .none
    
    func loadWeather(city: String) {
        
        guard let city = city.escaped else {
            print("Bad city")
            return
        }
        guard let url = URL(weatherForCity: city) else {
            print("Bad URL")
            return 
        }
        
        loadingState = .loading
 
        task = weatherProvider.weather(url)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    self.loadingState = .success
                case .failure:
                    self.loadingState = .failed
                }
            }, receiveValue: {(data) in
                self.weather = data .main
               
                print(data)
        })
    }
}
