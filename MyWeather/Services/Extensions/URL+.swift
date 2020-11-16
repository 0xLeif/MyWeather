//
//  URL+.swift
//  MyWeather
//
//  Created by Zach Eriksen on 11/16/20.
//

import Foundation

public extension URL {
    init?(weatherForCity city: String) {
        guard let url = URL(string: "\(ApiClient.path)?q=\(city)&id=524901&appid=1f3e31b4cdc18fd0785da5bd61117a14") else {
            return nil
        }
        
        self = url
    }
}
