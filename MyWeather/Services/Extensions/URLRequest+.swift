//
//  URLRequest+.swift
//  MyWeather
//
//  Created by Zach Eriksen on 11/16/20.
//

import Foundation
import Combine

public extension URLRequest {
    func make<T: Decodable>(decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<T, Error> {
        URLSession.shared
            .dataTaskPublisher(for: self)
            .map(\.data)
            .decode(type: T.self, decoder: decoder)
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
